#include "spk_packet_rx.h"
#include <iostream>

using namespace std;


int main()
{
	int t, ch1, ch2, i;
	hls::stream<spk_struct> pre_stream, post_stream;
	spk_struct spk_pre_1, spk_post_1;
	spk_struct spk_pre_2, spk_post_2;
	hls::stream<ch_type> ch_out_stream;
	hls::stream<ap_data> spk_out_stream;

	// input   //////////////////////////////////////////////////////////////////////////////////
	ch1=29; ch2 = 16;
	for(i=0;i<15;i++){
		// spk_1
		spk_pre_1.data  = i;
		spk_pre_1.user  = i;
		spk_pre_1.last  = 0;
		pre_stream.write(spk_pre_1);
		spk_packet_rx(pre_stream, post_stream, ch1, ch_out_stream, spk_out_stream);
		spk_post_1.data = i+10;
		spk_post_1.user = i+10;
		spk_post_1.last = 0;
		post_stream.write(spk_post_1);
		spk_packet_rx(pre_stream, post_stream, ch1, ch_out_stream, spk_out_stream);

		// spk_2
		spk_pre_2.data  = i;
		spk_pre_2.user  = i;
		spk_pre_2.last  = 0;
		pre_stream.write(spk_pre_1);
		spk_packet_rx(pre_stream, post_stream, ch2, ch_out_stream, spk_out_stream);
		spk_post_2.data = i+10;
		spk_post_2.user = i+10;
		spk_post_2.last = 0;
		post_stream.write(spk_post_2);
		spk_packet_rx(pre_stream, post_stream, ch2, ch_out_stream, spk_out_stream);
	}

	for(i=20;i<25;i++){
		// spk_1
		spk_post_1.data = i;
		spk_post_1.user = i;
		spk_post_1.last = 0;
		if(i==24) spk_post_1.last = 1;
		post_stream.write(spk_post_1);
		spk_packet_rx(pre_stream, post_stream, ch1, ch_out_stream, spk_out_stream);
		spk_post_1.last = 0;

		// spk_2
		spk_post_2.data = i;
		spk_post_2.user = i;
		spk_post_2.last = 0;
		if(i==24) spk_post_2.last = 1;
		post_stream.write(spk_post_2);
		spk_packet_rx(pre_stream, post_stream, ch2, ch_out_stream, spk_out_stream);
		spk_post_2.last = 0;
	}


	// output  /////////////////////////////////////////////////////////////////////////////////
	int ch;
	ap_data result;
	while(!spk_out_stream.empty()){
		ch = ch_out_stream.read();
		result = spk_out_stream.read();
		cout << ch << '\t' << result << endl;
	}

	return 0;
}
