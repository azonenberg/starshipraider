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

void rx_thread();

int g_htun = -1;

int main()
{
	signal(SIGPIPE, SIG_IGN);

	g_htun = open("/dev/net/tun", O_RDWR);
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

	//start the rx thread
	std::thread rxt(rx_thread);
	rxt.join();


	close(g_htun);
	return 0;
}

void rx_thread()
{
	//Open the pipe
	FILE* fp = fopen("/tmp/gmii_rx_pipe", "w");

	//Send a few cycles of idle
	for(int i=0; i<16; i++)
		fprintf(fp, "0 00\n");

	unsigned char buf[2048];
	while(1)
	{
		//Receive the packet
		int len = read(g_htun,  buf, sizeof(buf));

		printf("got packet, %d bytes\n", len);

		//Send the preamble
		for(int i=0; i<7; i++)
			fprintf(fp, "1 55\n");
		fprintf(fp, "1 d5\n");

		//Send the packet
		for(int i=0; i<len; i++)
			fprintf(fp, "1 %x\n", buf[i]);

		//Send a few cycles of idle
		//TODO: handle this better
		for(int i=0; i<128; i++)
			fprintf(fp, "0 00\n");

		fflush(fp);
	}

	fclose(fp);
}
