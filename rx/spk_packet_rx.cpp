#include "spk_packet_rx.h"


void spk_packet_rx(hls::stream<spk_struct> &pre_in, hls::stream<spk_struct> &post_in, hls::stream<int> &time_stamp,
				   hls::stream<spk_stream> &spk_out_stream)
{
#pragma HLS INTERFACE axis port=spk_out_stream
#pragma HLS INTERFACE axis register port=post_in
#pragma HLS INTERFACE axis register port=pre_in
#pragma HLS INTERFACE axis register port=time_stamp

	ch_type ch;
	static ap_data spk[CH][spklen];
	spk_struct pre, post;  // input
	spk_stream out;        // output

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
			int frameNo = time_stamp.read();
			write_loop:
			for(int j=0; j<spklen; j++){
			#pragma HLS PIPELINE rewind
				out.id   = ch;
				out.user = frameNo;
				out.data = spk[ch][j];
				spk_out_stream.write(out);
			}
		}
	}
}
