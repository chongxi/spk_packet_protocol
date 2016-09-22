#include "spk_packet.h"
#include "ap_int.h"
#include "ap_utils.h"


void spk_packet(hls::stream<mua_struct> &mua_stream,
				hls::stream<spk_struct> &out_pre, hls::stream<spk_struct> &out_post,
				ap_uint<32> *busy)
{
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis port=mua_stream
#pragma HLS INTERFACE axis port=out_post
#pragma HLS INTERFACE axis port=out_pre
#pragma HLS PIPELINE II=1

   static ap_fixed<32,18> buf_2d[T][CH];
   #pragma HLS ARRAY_PARTITION variable=buf_2d complete factor=32 dim=1
   #pragma HLS RESOURCE variable=buf_2d core=RAM_S2P_LUTRAM
   #pragma HLS DEPENDENCE variable=buf_2d WAR false

   static txState state_A[CH];
   #pragma HLS ARRAY_PARTITION variable=state_A complete dim=1
   static ap_uint<4> cnt_A[CH] = {0};
   #pragma HLS ARRAY_PARTITION variable=cnt_A complete dim=1

   ap_uint<5> t;
   ap_fixed<32,18> pre, post;
   static ap_uint<32> _busy = 0;
   *busy = _busy;

   mua_struct mua;
   ch_type ch_w;  // support up to 64 channels
   spk_struct spk_pre, spk_post;

   mua = mua_stream.read();
   ch_w = mua.id;
   t = mua.user % T;
   buf_2d[t][ch_w] = mua.data;
   pre   = buf_2d[(ap_uint<5>)(t-10)][ch_w];
   post  = buf_2d[(ap_uint<5>)(t   )][ch_w];

   spk_pre.data = pre;   spk_post.data = post;
   spk_pre.last = 0;     spk_post.last = 0;

//////////////////////////////////////////////////
////// output state and cnt for FSM debugging ////
//	   *_state = state_A[ch_w];               ////
//	   *_cnt   = cnt_A[ch_w];                 ////
//////////////////////////////////////////////////

   FSM_Bank_A:
   switch(state_A[ch_w]){
	   case IDLE:
		   if(mua.data[0]){
			   spk_pre.user = 0;
			   spk_post.user = 10;
			   spk_pre.id = ch_w;
			   spk_post.id = ch_w;
			   out_pre.write(spk_pre);              // write 0
			   out_post.write(spk_post);            // write 10
			   state_A[ch_w] = PRE;
			   cnt_A[ch_w] += 1;
		   }
		   else {
			   state_A[ch_w] = IDLE;
			   cnt_A[ch_w]   = 0;
			   _busy[ch_w]   = 0;
		   }
		   break;

	   case PRE:
		   if(mua.data[0])  {
			   _busy[ch_w] = 1;
		   }

		   if(cnt_A[ch_w]<9){
			   spk_pre.user = cnt_A[ch_w];         // write 1-8
			   spk_post.user = cnt_A[ch_w]+10;     // write 11-18
			   spk_pre.id = ch_w;
			   spk_post.id = ch_w;
			   out_pre.write(spk_pre);
			   out_post.write(spk_post);
			   cnt_A[ch_w] += 1;
			   state_A[ch_w] = PRE;
		   }
		   else if(cnt_A[ch_w]==9){
			   spk_pre.user  = cnt_A[ch_w];
			   spk_post.user = cnt_A[ch_w]+10;
			   spk_pre.last = 1;
			   spk_pre.id = ch_w;
			   spk_post.id = ch_w;
			   out_pre.write(spk_pre);             // write 9     (pre last)
			   out_post.write(spk_post);           // write 19
			   cnt_A[ch_w] += 1;
			   state_A[ch_w] = POST;
		   }
		   else{
			   state_A[ch_w] = IDLE;
			   cnt_A[ch_w] = 0;
		   }
		   break;

	   case POST:
		   if(mua.data[0])  {
			   _busy[ch_w] = 1;
		   }

		   if(cnt_A[ch_w]<14){
			   spk_post.user = cnt_A[ch_w]+10;
			   spk_post.id = ch_w;
			   out_post.write(spk_post);           // write 20-23
			   cnt_A[ch_w] += 1;
			   state_A[ch_w] = POST;
		   }
		   else if(cnt_A[ch_w]==14){
			   spk_post.user = cnt_A[ch_w]+10;
			   spk_post.last = 1;
			   spk_post.id = ch_w;
			   out_post.write(spk_post);           // write 24   (post last)
			   state_A[ch_w] = IDLE;
			   cnt_A[ch_w] = 0;
			   _busy[ch_w] = 0;
		   }
		   else{
			   state_A[ch_w] = IDLE;
			   cnt_A[ch_w] = 0;
			   _busy[ch_w] = 0;
		   }
		   break;
   }
}
