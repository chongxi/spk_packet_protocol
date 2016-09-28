#include "ap_int.h"
#include "ap_fixed.h"
#include <hls_stream.h>

#define CH 32
#define spklen 19
#define prelen 8

typedef ap_uint<96> ap_data;
typedef ap_uint<6> ch_type;

struct spk_struct{
	ap_uint<5>  user;       // pos
	bool        last;       // last
	ch_type     id;
	ap_data     data;  // data
};


struct spk_stream{
	ch_type     id;
	int         user;
	ap_data     data;
};

enum rxState {IDLE=0, PRE, POST};

void spk_packet_rx(hls::stream<spk_struct> &pre_in, hls::stream<spk_struct> &post_in, hls::stream<int> &time_stamp,
				   hls::stream<spk_stream> &spk_out_stream);
