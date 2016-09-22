#include "ap_int.h"
#include "ap_fixed.h"
#include <hls_stream.h>

#define CH 32
#define spklen 25

typedef ap_fixed<32, 18> ap_data;
typedef ap_uint<6> ch_type;

struct spk_struct{
	ap_uint<5>  user;       // pos
	bool        last;       // last
	ch_type     id;
	ap_data     data;  // data
};

enum rxState {IDLE=0, PRE, POST};

void spk_packet_rx(hls::stream<spk_struct> &pre_in, hls::stream<spk_struct> &post_in,
				   hls::stream<ch_type> &ch_out,    hls::stream<ap_data> &spk_out_stream);
