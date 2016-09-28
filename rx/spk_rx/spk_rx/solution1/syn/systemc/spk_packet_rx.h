// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _spk_packet_rx_HH_
#define _spk_packet_rx_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "spk_packet_rx_mul_6ns_6ns_11_3.h"
#include "spk_packet_rx_mac_muladd_6ns_6ns_5ns_11_3.h"
#include "spk_packet_rx_spk_V.h"

namespace ap_rtl {

struct spk_packet_rx : public sc_module {
    // Port declarations 26
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<5> > pre_in_TUSER;
    sc_in< sc_logic > pre_in_TVALID;
    sc_out< sc_logic > pre_in_TREADY;
    sc_in< sc_logic > pre_in_TLAST;
    sc_in< sc_lv<6> > pre_in_TID;
    sc_in< sc_lv<96> > pre_in_TDATA;
    sc_in< sc_lv<5> > post_in_TUSER;
    sc_in< sc_logic > post_in_TVALID;
    sc_out< sc_logic > post_in_TREADY;
    sc_in< sc_logic > post_in_TLAST;
    sc_in< sc_lv<6> > post_in_TID;
    sc_in< sc_lv<96> > post_in_TDATA;
    sc_in< sc_lv<32> > time_stamp_V_TDATA;
    sc_in< sc_logic > time_stamp_V_TVALID;
    sc_out< sc_logic > time_stamp_V_TREADY;
    sc_out< sc_lv<6> > spk_out_stream_TID;
    sc_out< sc_logic > spk_out_stream_TVALID;
    sc_in< sc_logic > spk_out_stream_TREADY;
    sc_out< sc_lv<32> > spk_out_stream_TUSER;
    sc_out< sc_lv<96> > spk_out_stream_TDATA;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    spk_packet_rx(sc_module_name name);
    SC_HAS_PROCESS(spk_packet_rx);

    ~spk_packet_rx();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    spk_packet_rx_spk_V* spk_V_U;
    spk_packet_rx_mul_6ns_6ns_11_3<1,3,6,6,11>* spk_packet_rx_mul_6ns_6ns_11_3_U1;
    spk_packet_rx_mac_muladd_6ns_6ns_5ns_11_3<1,3,6,6,5,11>* spk_packet_rx_mac_muladd_6ns_6ns_5ns_11_3_U2;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<13> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_30;
    sc_signal< sc_lv<5> > pre_in_V_user_V_0_data_out;
    sc_signal< sc_logic > pre_in_V_user_V_0_vld_in;
    sc_signal< sc_logic > pre_in_V_user_V_0_vld_out;
    sc_signal< sc_logic > pre_in_V_user_V_0_ack_out;
    sc_signal< sc_lv<5> > pre_in_V_user_V_0_data_reg;
    sc_signal< sc_logic > pre_in_V_user_V_0_areset_d;
    sc_signal< sc_logic > pre_in_V_user_V_0_in_rdy;
    sc_signal< sc_logic > pre_in_V_user_V_0_has_vld_data_reg_i;
    sc_signal< sc_logic > pre_in_V_user_V_0_has_vld_data_reg;
    sc_signal< sc_logic > pre_in_V_last_0_vld_in;
    sc_signal< sc_logic > pre_in_V_last_0_vld_out;
    sc_signal< sc_logic > pre_in_V_last_0_ack_out;
    sc_signal< sc_logic > pre_in_V_last_0_areset_d;
    sc_signal< sc_logic > pre_in_V_last_0_in_rdy;
    sc_signal< sc_logic > pre_in_V_last_0_has_vld_data_reg_i;
    sc_signal< sc_logic > pre_in_V_last_0_has_vld_data_reg;
    sc_signal< sc_lv<6> > pre_in_V_id_V_0_data_out;
    sc_signal< sc_logic > pre_in_V_id_V_0_vld_in;
    sc_signal< sc_logic > pre_in_V_id_V_0_vld_out;
    sc_signal< sc_logic > pre_in_V_id_V_0_ack_out;
    sc_signal< sc_lv<6> > pre_in_V_id_V_0_data_reg;
    sc_signal< sc_logic > pre_in_V_id_V_0_areset_d;
    sc_signal< sc_logic > pre_in_V_id_V_0_in_rdy;
    sc_signal< sc_logic > pre_in_V_id_V_0_has_vld_data_reg_i;
    sc_signal< sc_logic > pre_in_V_id_V_0_has_vld_data_reg;
    sc_signal< sc_lv<96> > pre_in_V_data_V_0_data_out;
    sc_signal< sc_logic > pre_in_V_data_V_0_vld_in;
    sc_signal< sc_logic > pre_in_V_data_V_0_vld_out;
    sc_signal< sc_logic > pre_in_V_data_V_0_ack_out;
    sc_signal< sc_lv<96> > pre_in_V_data_V_0_data_reg;
    sc_signal< sc_logic > pre_in_V_data_V_0_areset_d;
    sc_signal< sc_logic > pre_in_V_data_V_0_in_rdy;
    sc_signal< sc_logic > pre_in_V_data_V_0_has_vld_data_reg_i;
    sc_signal< sc_logic > pre_in_V_data_V_0_has_vld_data_reg;
    sc_signal< sc_lv<5> > post_in_V_user_V_0_data_out;
    sc_signal< sc_logic > post_in_V_user_V_0_vld_in;
    sc_signal< sc_logic > post_in_V_user_V_0_vld_out;
    sc_signal< sc_logic > post_in_V_user_V_0_ack_out;
    sc_signal< sc_lv<5> > post_in_V_user_V_0_data_reg;
    sc_signal< sc_logic > post_in_V_user_V_0_areset_d;
    sc_signal< sc_logic > post_in_V_user_V_0_in_rdy;
    sc_signal< sc_logic > post_in_V_user_V_0_has_vld_data_reg_i;
    sc_signal< sc_logic > post_in_V_user_V_0_has_vld_data_reg;
    sc_signal< sc_logic > post_in_V_last_0_data_out;
    sc_signal< sc_logic > post_in_V_last_0_vld_in;
    sc_signal< sc_logic > post_in_V_last_0_vld_out;
    sc_signal< sc_logic > post_in_V_last_0_ack_out;
    sc_signal< sc_logic > post_in_V_last_0_data_reg;
    sc_signal< sc_logic > post_in_V_last_0_areset_d;
    sc_signal< sc_logic > post_in_V_last_0_in_rdy;
    sc_signal< sc_logic > post_in_V_last_0_has_vld_data_reg_i;
    sc_signal< sc_logic > post_in_V_last_0_has_vld_data_reg;
    sc_signal< sc_lv<6> > post_in_V_id_V_0_data_out;
    sc_signal< sc_logic > post_in_V_id_V_0_vld_in;
    sc_signal< sc_logic > post_in_V_id_V_0_vld_out;
    sc_signal< sc_logic > post_in_V_id_V_0_ack_out;
    sc_signal< sc_lv<6> > post_in_V_id_V_0_data_reg;
    sc_signal< sc_logic > post_in_V_id_V_0_areset_d;
    sc_signal< sc_logic > post_in_V_id_V_0_in_rdy;
    sc_signal< sc_logic > post_in_V_id_V_0_has_vld_data_reg_i;
    sc_signal< sc_logic > post_in_V_id_V_0_has_vld_data_reg;
    sc_signal< sc_lv<96> > post_in_V_data_V_0_data_out;
    sc_signal< sc_logic > post_in_V_data_V_0_vld_in;
    sc_signal< sc_logic > post_in_V_data_V_0_vld_out;
    sc_signal< sc_logic > post_in_V_data_V_0_ack_out;
    sc_signal< sc_lv<96> > post_in_V_data_V_0_data_reg;
    sc_signal< sc_logic > post_in_V_data_V_0_areset_d;
    sc_signal< sc_logic > post_in_V_data_V_0_in_rdy;
    sc_signal< sc_logic > post_in_V_data_V_0_has_vld_data_reg_i;
    sc_signal< sc_logic > post_in_V_data_V_0_has_vld_data_reg;
    sc_signal< sc_lv<32> > time_stamp_V_0_data_out;
    sc_signal< sc_logic > time_stamp_V_0_vld_in;
    sc_signal< sc_logic > time_stamp_V_0_vld_out;
    sc_signal< sc_logic > time_stamp_V_0_ack_out;
    sc_signal< sc_lv<32> > time_stamp_V_0_data_reg;
    sc_signal< sc_logic > time_stamp_V_0_areset_d;
    sc_signal< sc_logic > time_stamp_V_0_in_rdy;
    sc_signal< sc_logic > time_stamp_V_0_has_vld_data_reg_i;
    sc_signal< sc_logic > time_stamp_V_0_has_vld_data_reg;
    sc_signal< sc_lv<10> > spk_V_address0;
    sc_signal< sc_logic > spk_V_ce0;
    sc_signal< sc_logic > spk_V_we0;
    sc_signal< sc_lv<96> > spk_V_d0;
    sc_signal< sc_lv<96> > spk_V_q0;
    sc_signal< sc_logic > pre_in_TDATA_blk_n;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_352;
    sc_signal< sc_lv<1> > grp_nbreadreq_fu_76_p6;
    sc_signal< sc_logic > post_in_TDATA_blk_n;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_6;
    sc_signal< bool > ap_sig_365;
    sc_signal< sc_lv<1> > grp_nbreadreq_fu_102_p6;
    sc_signal< sc_logic > time_stamp_V_TDATA_blk_n;
    sc_signal< sc_logic > ap_sig_cseq_ST_st11_fsm_10;
    sc_signal< bool > ap_sig_377;
    sc_signal< sc_logic > spk_out_stream_TDATA_blk_n;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg0_fsm_11;
    sc_signal< bool > ap_sig_389;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< sc_lv<5> > j1_reg_176;
    sc_signal< sc_lv<1> > tmp_reg_278;
    sc_signal< bool > ap_sig_401;
    sc_signal< sc_lv<5> > empty_reg_282_0;
    sc_signal< sc_lv<6> > empty_reg_282_2;
    sc_signal< sc_lv<96> > empty_reg_282_3;
    sc_signal< sc_lv<5> > tmp_user_V_reg_289;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_422;
    sc_signal< sc_lv<96> > tmp_data_V_reg_294;
    sc_signal< sc_lv<11> > grp_fu_270_p3;
    sc_signal< sc_lv<11> > tmp_s_reg_304;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_435;
    sc_signal< bool > ap_sig_440;
    sc_signal< sc_lv<5> > empty_2_reg_313_0;
    sc_signal< sc_lv<1> > empty_2_reg_313_1;
    sc_signal< sc_lv<6> > empty_2_reg_313_2;
    sc_signal< sc_lv<96> > empty_2_reg_313_3;
    sc_signal< sc_lv<6> > tmp_id_V_reg_321;
    sc_signal< sc_logic > ap_sig_cseq_ST_st8_fsm_7;
    sc_signal< bool > ap_sig_461;
    sc_signal< sc_lv<11> > grp_fu_214_p2;
    sc_signal< sc_lv<11> > tmp_2_reg_331;
    sc_signal< sc_logic > ap_sig_cseq_ST_st10_fsm_9;
    sc_signal< bool > ap_sig_472;
    sc_signal< bool > ap_sig_477;
    sc_signal< sc_lv<32> > tmp_6_reg_341;
    sc_signal< sc_logic > ap_sig_ioackin_spk_out_stream_TREADY;
    sc_signal< sc_lv<5> > j_fu_258_p2;
    sc_signal< sc_lv<5> > j_reg_351;
    sc_signal< sc_lv<1> > exitcond_fu_264_p2;
    sc_signal< sc_lv<1> > exitcond_reg_356;
    sc_signal< sc_lv<5> > j1_phi_fu_180_p4;
    sc_signal< sc_lv<64> > tmp_10_cast_fu_203_p1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_512;
    sc_signal< sc_lv<64> > tmp_12_cast_fu_239_p1;
    sc_signal< sc_lv<64> > tmp_13_cast_fu_253_p1;
    sc_signal< sc_logic > ap_reg_ioackin_spk_out_stream_TREADY;
    sc_signal< sc_lv<6> > grp_fu_214_p0;
    sc_signal< sc_lv<6> > grp_fu_214_p1;
    sc_signal< sc_lv<11> > tmp_6_cast_fu_230_p1;
    sc_signal< sc_lv<11> > tmp_3_fu_234_p2;
    sc_signal< sc_lv<11> > tmp_9_cast_fu_244_p1;
    sc_signal< sc_lv<11> > tmp_4_fu_248_p2;
    sc_signal< sc_lv<6> > grp_fu_270_p0;
    sc_signal< sc_lv<6> > grp_fu_270_p1;
    sc_signal< sc_lv<5> > grp_fu_270_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st14_fsm_12;
    sc_signal< bool > ap_sig_624;
    sc_signal< sc_lv<13> > ap_NS_fsm;
    sc_signal< sc_lv<11> > grp_fu_214_p00;
    sc_signal< sc_lv<11> > grp_fu_270_p00;
    sc_signal< sc_lv<11> > grp_fu_270_p20;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<13> ap_ST_st1_fsm_0;
    static const sc_lv<13> ap_ST_st2_fsm_1;
    static const sc_lv<13> ap_ST_st3_fsm_2;
    static const sc_lv<13> ap_ST_st4_fsm_3;
    static const sc_lv<13> ap_ST_st5_fsm_4;
    static const sc_lv<13> ap_ST_st6_fsm_5;
    static const sc_lv<13> ap_ST_st7_fsm_6;
    static const sc_lv<13> ap_ST_st8_fsm_7;
    static const sc_lv<13> ap_ST_st9_fsm_8;
    static const sc_lv<13> ap_ST_st10_fsm_9;
    static const sc_lv<13> ap_ST_st11_fsm_10;
    static const sc_lv<13> ap_ST_pp0_stg0_fsm_11;
    static const sc_lv<13> ap_ST_st14_fsm_12;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const bool ap_true;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<11> ap_const_lv11_13;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<5> ap_const_lv5_12;
    static const sc_lv<32> ap_const_lv32_C;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_ap_sig_30();
    void thread_ap_sig_352();
    void thread_ap_sig_365();
    void thread_ap_sig_377();
    void thread_ap_sig_389();
    void thread_ap_sig_401();
    void thread_ap_sig_422();
    void thread_ap_sig_435();
    void thread_ap_sig_440();
    void thread_ap_sig_461();
    void thread_ap_sig_472();
    void thread_ap_sig_477();
    void thread_ap_sig_512();
    void thread_ap_sig_624();
    void thread_ap_sig_cseq_ST_pp0_stg0_fsm_11();
    void thread_ap_sig_cseq_ST_st10_fsm_9();
    void thread_ap_sig_cseq_ST_st11_fsm_10();
    void thread_ap_sig_cseq_ST_st14_fsm_12();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_ap_sig_cseq_ST_st7_fsm_6();
    void thread_ap_sig_cseq_ST_st8_fsm_7();
    void thread_ap_sig_ioackin_spk_out_stream_TREADY();
    void thread_exitcond_fu_264_p2();
    void thread_grp_fu_214_p0();
    void thread_grp_fu_214_p00();
    void thread_grp_fu_214_p1();
    void thread_grp_fu_270_p0();
    void thread_grp_fu_270_p00();
    void thread_grp_fu_270_p1();
    void thread_grp_fu_270_p2();
    void thread_grp_fu_270_p20();
    void thread_grp_nbreadreq_fu_102_p6();
    void thread_grp_nbreadreq_fu_76_p6();
    void thread_j1_phi_fu_180_p4();
    void thread_j_fu_258_p2();
    void thread_post_in_TDATA_blk_n();
    void thread_post_in_TREADY();
    void thread_post_in_V_data_V_0_ack_out();
    void thread_post_in_V_data_V_0_data_out();
    void thread_post_in_V_data_V_0_has_vld_data_reg_i();
    void thread_post_in_V_data_V_0_vld_in();
    void thread_post_in_V_data_V_0_vld_out();
    void thread_post_in_V_id_V_0_ack_out();
    void thread_post_in_V_id_V_0_data_out();
    void thread_post_in_V_id_V_0_has_vld_data_reg_i();
    void thread_post_in_V_id_V_0_vld_in();
    void thread_post_in_V_id_V_0_vld_out();
    void thread_post_in_V_last_0_ack_out();
    void thread_post_in_V_last_0_data_out();
    void thread_post_in_V_last_0_has_vld_data_reg_i();
    void thread_post_in_V_last_0_vld_in();
    void thread_post_in_V_last_0_vld_out();
    void thread_post_in_V_user_V_0_ack_out();
    void thread_post_in_V_user_V_0_data_out();
    void thread_post_in_V_user_V_0_has_vld_data_reg_i();
    void thread_post_in_V_user_V_0_vld_in();
    void thread_post_in_V_user_V_0_vld_out();
    void thread_pre_in_TDATA_blk_n();
    void thread_pre_in_TREADY();
    void thread_pre_in_V_data_V_0_ack_out();
    void thread_pre_in_V_data_V_0_data_out();
    void thread_pre_in_V_data_V_0_has_vld_data_reg_i();
    void thread_pre_in_V_data_V_0_vld_in();
    void thread_pre_in_V_data_V_0_vld_out();
    void thread_pre_in_V_id_V_0_ack_out();
    void thread_pre_in_V_id_V_0_data_out();
    void thread_pre_in_V_id_V_0_has_vld_data_reg_i();
    void thread_pre_in_V_id_V_0_vld_in();
    void thread_pre_in_V_id_V_0_vld_out();
    void thread_pre_in_V_last_0_ack_out();
    void thread_pre_in_V_last_0_has_vld_data_reg_i();
    void thread_pre_in_V_last_0_vld_in();
    void thread_pre_in_V_last_0_vld_out();
    void thread_pre_in_V_user_V_0_ack_out();
    void thread_pre_in_V_user_V_0_data_out();
    void thread_pre_in_V_user_V_0_has_vld_data_reg_i();
    void thread_pre_in_V_user_V_0_vld_in();
    void thread_pre_in_V_user_V_0_vld_out();
    void thread_spk_V_address0();
    void thread_spk_V_ce0();
    void thread_spk_V_d0();
    void thread_spk_V_we0();
    void thread_spk_out_stream_TDATA();
    void thread_spk_out_stream_TDATA_blk_n();
    void thread_spk_out_stream_TID();
    void thread_spk_out_stream_TUSER();
    void thread_spk_out_stream_TVALID();
    void thread_time_stamp_V_0_ack_out();
    void thread_time_stamp_V_0_data_out();
    void thread_time_stamp_V_0_has_vld_data_reg_i();
    void thread_time_stamp_V_0_vld_in();
    void thread_time_stamp_V_0_vld_out();
    void thread_time_stamp_V_TDATA_blk_n();
    void thread_time_stamp_V_TREADY();
    void thread_tmp_10_cast_fu_203_p1();
    void thread_tmp_12_cast_fu_239_p1();
    void thread_tmp_13_cast_fu_253_p1();
    void thread_tmp_3_fu_234_p2();
    void thread_tmp_4_fu_248_p2();
    void thread_tmp_6_cast_fu_230_p1();
    void thread_tmp_9_cast_fu_244_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif