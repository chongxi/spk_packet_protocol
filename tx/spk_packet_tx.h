#include "ap_int.h"
#include "ap_fixed.h"
#include <hls_stream.h>

#define CH 32
#define T  32
#define N  CH*T
#define spklen 25

typedef ap_uint<6> ch_type;

struct mua_struct{
	int user;      // t_in
	ch_type id;    // channel
	ap_fixed<32, 18> data;
};


struct spk_struct{
	ap_uint<5> user;
	ch_type      id;
	bool       last;
	ap_fixed<32, 18> data;
};

enum txState {IDLE=0, PRE, POST};

void spk_packet(hls::stream<mua_struct> &mua_stream,
				hls::stream<spk_struct> &out_pre, hls::stream<spk_struct> &out_post,
				ap_uint<32> *busy);
