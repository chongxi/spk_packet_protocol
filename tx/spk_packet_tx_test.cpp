#include <iostream>
#include <ap_fixed.h>
#include "spk_packet.h"
#include <math.h>
#include "stdio.h"
#include "ap_utils.h"
using namespace std;

int main()
{
	int t, ch, i;
	i = 0;
	hls::stream<mua_struct> mua_stream;
	hls::stream<spk_struct> pre_stream, post_stream;
	mua_struct mua;
	spk_struct spk_pre, spk_post;
	ap_uint<32> busy;

    //Write data
	for(t=0; t<10*T; t++)
		for(ch=0; ch<CH; ch++)
		{
			if(t==13 && ch==2){
				mua.data = i;
				mua.data[0] = 1;
			}
			else if(t==15 && ch==3){
				mua.data = i;
				mua.data[0] = 1;
			}
			else{
				mua.data = i;
			}
			mua.id  = ch;
			mua.user   = t;
			mua_stream.write(mua);
			spk_packet(mua_stream, pre_stream, post_stream, &busy);
			i++;
		}

	int error = 0;
	int pre_test[10];
	i = 0;
	while(!pre_stream.empty()){
		spk_pre = pre_stream.read();
		pre_test[i] = spk_pre.data;
		int pts = spk_pre.user;
		ch = spk_pre.id;
//		error += (pre_test[i]- 162 - i*32);
		printf("ch=%d, pts=%d, pre=%d, busy=%d\n", ch, pts, pre_test[i], busy[ch].to_bool());
	}
//
	int post_test[15];
	i = 0;
	while(!post_stream.empty()){
		spk_post = post_stream.read();
		post_test[i] = spk_post.data;
		int pts = spk_post.user;
		bool last = spk_post.last;
		ch = spk_post.id;
//		error += (pre_test[i]- 162 - i*32);
		printf("ch=%d, pts=%d, post=%d, busy=%d, last=%d\n", ch, pts, post_test[i], busy[ch].to_bool(), last);
	}


//	test error
	return 0;

}
