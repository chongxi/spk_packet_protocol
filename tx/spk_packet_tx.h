#include "ap_int.h"
#include "ap_fixed.h"
#include <hls_stream.h>

#define CH 32
#define T  32
#define N  CH*T
#define spklen 19
#define prelen 8

typedef ap_uint<96> ap_data;
typedef ap_uint<5> ch_type;

struct mua_struct{
	int user;      // t_in
	ch_type id;    // channel
	ap_data data;
};

struct spk_struct{
	ap_uint<5> user;
	ch_type      id;
	bool       last;
	ap_data data;
};

enum txState {IDLE=0, PRE, POST};

void spk_packet_tx(hls::stream<mua_struct> &mua_stream,
				   hls::stream<spk_struct> &out_pre, hls::stream<spk_struct> &out_post,
				   hls::stream<int> &time_stamp, ap_uint<32> *busy);
