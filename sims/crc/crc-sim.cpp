#include <stdio.h>
#include <stdlib.h>
#include <algorithm>

using namespace std;

#define NUM_LANES 19

int main(int argc, char* argv[])
{
	srand(0);

	size_t crc_input_fifo[NUM_LANES] = {0};
	size_t crc_packet_ids[NUM_LANES] = {0};
	size_t crc_stream_fifo[NUM_LANES] = {0};

	size_t nclocks = 1000L * 1000L * 1000L;

	bool frame_active = false;

	size_t totalUsage = 0;
	size_t maxUsage = 0;
	size_t totalHash = 0;
	size_t totalOutput = 0;

	//This loop runs in the XLGMII-64 clock (625 MHz)
	size_t npacket = 0;
	size_t current_lane = 0;
	size_t frame_len = 0;
	size_t next_packet = 0;
	bool phase = false;		//Whether the XLGMII-128 (312.5 MHz) clock is also rising this cycle
	for(size_t i=0; i<nclocks; i++)
	{
		phase = !phase;

		//Start a frame
		if(!frame_active)
		{
			//Figure out length
			frame_len = 64 + rand() % 1458;

			//Pick an execution unit to give it to
			bool found = false;
			for(size_t j=0; j<NUM_LANES; j++)
			{
				if( (crc_input_fifo[j] == 0) && (crc_stream_fifo[j] == 0) )
				{
					/*printf(
						"[%10zu] Starting new frame (%zu bytes including headers and FCS), assigning to CRC unit %zu\n",
						i, frame_len, j);*/
					current_lane = j;
					found = true;
					break;
				}
			}
			if(!found)
			{
				printf("[%10zu] Tried to start a new frame, but no CRC unit available!\n", i);
				for(size_t j=0; j<NUM_LANES; j++)
				{
					if(crc_input_fifo[j])
						printf("        Unit %zu has %zu bytes waiting to be CRC'd\n", j, crc_input_fifo[j]);
					else
						printf("        Unit %zu has %zu bytes waiting to be output\n", j, crc_stream_fifo[j]);
				}
				return 1;
			}

			frame_active = true;

			//No data for CRC engine this cycle, it's just preamble

			//Save packet ID
			crc_packet_ids[current_lane] = npacket;
			npacket ++;
		}

		//We have a frame in progress, push data into the CRC engine
		else
		{
			if(frame_len > 8)
			{
				crc_input_fifo[current_lane] += 8;
				crc_stream_fifo[current_lane] += 8;
				frame_len -= 8;
			}
			else
			{
				crc_input_fifo[current_lane] += frame_len;
				crc_stream_fifo[current_lane] += frame_len;
				frame_len = 0;
				frame_active = false;
			}

			//Don't implement inter-frame gap, assume worst case 1 byte spacing
		}

		//Figure out how many lanes are in use
		size_t active = 0;
		for(size_t j=0; j<NUM_LANES; j++)
		{
			if( (crc_input_fifo[j]) || (crc_stream_fifo[j]) )
				active ++;

			if(crc_input_fifo[j])
				totalHash ++;
			if(crc_stream_fifo[j])
				totalOutput ++;
		}
		totalUsage += active;
		maxUsage = max(active, maxUsage);

		//Consume data in each CRC engine
		if(phase)
		{
			for(size_t j=0; j<NUM_LANES; j++)
			{
				//Process input FIFO data (4 bytes per clock, in parallel)
				if(crc_input_fifo[j])
				{
					if(crc_input_fifo[j] <= 4)
					{
						crc_input_fifo[j] = 0;
						//printf("[%10zu] CRC unit %zu is done CRCing packet %zu\n", i, j, crc_packet_ids[j]);
					}
					else
						crc_input_fifo[j] -= 4;
				}

				//Process output FIFO data (16 bytes per clock, but in order one at a time)
				else if(crc_stream_fifo[j])
				{
					if(crc_packet_ids[j] == next_packet)
					{
						if(crc_stream_fifo[j] <= 16)
						{
							crc_stream_fifo[j] = 0;
							//printf("[%10zu] CRC unit %zu is done outputting packet %zu\n", i, j, crc_packet_ids[j]);
							next_packet ++;
						}
						else
							crc_stream_fifo[j] -= 16;
					}
				}
			}
		}
	}

	printf("Simulation completed after %zu clock cycles (%zu packets) with no resource exhaustion\n", nclocks, npacket);
	printf("Max lanes used: %zu\n", maxUsage);
	printf("Avg lanes used: %.2f\n", totalUsage * 1.0 / nclocks);
	printf("Avg lanes in CRC state: %.2f\n", totalHash * 1.0 / nclocks);
	printf("Avg lanes in output state: %.2f\n", totalOutput * 1.0 / nclocks);

	return 0;
}
