#include "spk_packet_rx.h"
#include <iostream>
using namespace std;


void spk_packet_rx(hls::stream<spk_struct> &pre_in, hls::stream<spk_struct> &post_in,
				   hls::stream<ch_type> &ch_out,    hls::stream<ap_data> &spk_out_stream)
{
#pragma HLS INTERFACE axis register port=post_in
#pragma HLS INTERFACE axis register port=pre_in

	ch_type ch;
	static ap_data spk[CH][spklen];
	spk_struct pre, post, spike;

	if(!pre_in.empty()){
		pre = pre_in.read();
		ch  = pre.id;
		spk[ch][pre.user]  = pre.data;
	}

	if(!post_in.empty()){
		post = post_in.read();
		ch   = post.id;
		spk[ch][post.user] = post.data;
		if(post.last){
			write_loop:
			for(int j=0; j<spklen; j++){
			#pragma HLS PIPELINE rewind
				ch_out.write(ch);
				spk_out_stream.write(spk[ch][j]);
			}
		}
	}

//	output_loop:
//	for(i=0;i<5;i++){
//
//	}
}
