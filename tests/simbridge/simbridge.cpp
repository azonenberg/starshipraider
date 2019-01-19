#include <stdio.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <linux/if.h>
#include <sys/socket.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <linux/if_tun.h>
#include <string.h>
#include <thread>
#include <sys/signal.h>
#include <vector>

void rx_thread();
void tx_thread();

int g_htun = -1;

int main()
{
	signal(SIGPIPE, SIG_IGN);

	g_htun = open("/dev/net/tun", O_RDWR | O_NONBLOCK);
	if(g_htun < 0)
	{
		perror("open tun");
		return 1;
	}

	ifreq ifr;
	memset(&ifr, 0, sizeof(ifr));
	ifr.ifr_flags = IFF_TAP | IFF_NO_PI;
	strncpy(ifr.ifr_name, "simtap", IFNAMSIZ);

	if(ioctl(g_htun, TUNSETIFF, &ifr) < 0)
	{
		close(g_htun);
		perror("TUNSETIFF");
		return 1;
	}

	FILE* fpRx = fopen("/tmp/gmii_rx_pipe", "w");
	int htx = open("/tmp/gmii_tx_pipe", O_RDONLY | O_NONBLOCK);
	if(!fpRx)
	{
		perror("open rx");
		return 1;
	}
	if(htx < 0)
	{
		perror("open tx");
		return 1;
	}

	std::vector<uint8_t> frame;
	bool had_preamble = false;

	class gmii
	{
		public:

		unsigned int en;
		unsigned int data;

		gmii(unsigned int a, unsigned int b)
		: en(a)
		, data(b)
		{}
	};
	std::vector<gmii> rxData;
	std::string rdbuf;
	while(true)
	{
		unsigned char buf[2048];
		while(true)
		{
			usleep(10);

			//Receive inbound packets
			int len = read(g_htun,  buf, sizeof(buf));
			if(len > 0)
			{
				printf("got packet, %d bytes\n", len);

				//Send the preamble
				for(int i=0; i<7; i++)
					rxData.push_back(gmii(1, 0x55));
				rxData.push_back(gmii(1, 0xd5));

				//Send the packet
				for(int i=0; i<len; i++)
					rxData.push_back(gmii(1, buf[i]));

				//Send the CRC (fake for now)
				rxData.push_back(gmii(1, 0xde));
				rxData.push_back(gmii(1, 0xad));
				rxData.push_back(gmii(1, 0xbe));
				rxData.push_back(gmii(1, 0xef));

				//Add a minimum inter-frame gap
				rxData.push_back(gmii(0, 0x00));
				rxData.push_back(gmii(0, 0x00));
			}

			//Send a byte of data if there's anything to send
			if(!rxData.empty())
			{
				fprintf(fpRx, "%d %x\n", rxData[0].en, rxData[0].data);
				rxData.erase(rxData.begin());
			}
			else
				fprintf(fpRx, "0 0\n");
			fflush(fpRx);

			//Check for outbound packets
			while(true)
			{
				//If no read data, send an idle and wait
				char tmp;
				if(1 != read(htx, &tmp, 1))
					break;

				//If we got read data, append and check for newline
				if(tmp != '\n')
				{
					rdbuf += tmp;
					continue;
				}

				//If we got data, process it
				int en = 0;
				int data = 0;
				sscanf(rdbuf.c_str(), "%d %x", &en, &data);
				rdbuf = "";

				if(en)
				{
					if(!had_preamble)
					{
						if(data == 0xd5)
							had_preamble = true;
					}
					else
						frame.push_back(data);
				}

				else
				{
					//Done with this frame
					//Send it if we have anything
					if(!frame.empty())
					{
						//Preamble is already stripped
						//Remove the last 4 bytes (CRC)
						frame.resize(frame.size() - 4);

						//Crunch the remaining data
						printf("Sending frame (%zu bytes)\n", frame.size());
						write(g_htun, &frame[0], frame.size());
					}

					frame.clear();
					had_preamble = false;
				}
			}
		}
	}

	fclose(fpRx);
	close(g_htun);
	return 0;
}
