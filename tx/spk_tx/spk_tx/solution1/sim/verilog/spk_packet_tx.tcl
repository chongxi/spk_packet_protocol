
log_wave [get_objects -filter {type == in_port || type == out_port || type == inout_port || type == port} /apatb_spk_packet_tx_top/AESL_inst_spk_packet_tx/*]
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set busy_group [add_wave_group busy(wire) -into $coutputgroup]
add_wave /apatb_spk_packet_tx_top/AESL_inst_spk_packet_tx/busy_V_ap_vld -into $busy_group -color #ffff00 -radix hex
add_wave /apatb_spk_packet_tx_top/AESL_inst_spk_packet_tx/busy_V -into $busy_group -radix hex
set time_stamp_group [add_wave_group time_stamp(axis) -into $coutputgroup]
add_wave /apatb_spk_packet_tx_top/AESL_inst_spk_packet_tx/time_stamp_V_TREADY -into $time_stamp_group -color #ffff00 -radix hex
add_wave /apatb_spk_packet_tx_top/AESL_inst_spk_packet_tx/time_stamp_V_TVALID -into $time_stamp_group -color #ffff00 -radix hex
add_wave /apatb_spk_packet_tx_top/AESL_inst_spk_packet_tx/time_stamp_V_TDATA -into $time_stamp_group -radix hex
set out_post_group [add_wave_group out_post(axis) -into $coutputgroup]
add_wave /apatb_spk_packet_tx_top/AESL_inst_spk_packet_tx/out_post_TDATA -into $out_post_group -radix hex
add_wave /apatb_spk_packet_tx_top/AESL_inst_spk_packet_tx/out_post_TLAST -into $out_post_group -color #ffff00 -radix hex
add_wave /apatb_spk_packet_tx_top/AESL_inst_spk_packet_tx/out_post_TID -into $out_post_group -radix hex
add_wave /apatb_spk_packet_tx_top/AESL_inst_spk_packet_tx/out_post_TREADY -into $out_post_group -color #ffff00 -radix hex
add_wave /apatb_spk_packet_tx_top/AESL_inst_spk_packet_tx/out_post_TVALID -into $out_post_group -color #ffff00 -radix hex
add_wave /apatb_spk_packet_tx_top/AESL_inst_spk_packet_tx/out_post_TUSER -into $out_post_group -radix hex
set out_pre_group [add_wave_group out_pre(axis) -into $coutputgroup]
add_wave /apatb_spk_packet_tx_top/AESL_inst_spk_packet_tx/out_pre_TDATA -into $out_pre_group -radix hex
add_wave /apatb_spk_packet_tx_top/AESL_inst_spk_packet_tx/out_pre_TLAST -into $out_pre_group -color #ffff00 -radix hex
add_wave /apatb_spk_packet_tx_top/AESL_inst_spk_packet_tx/out_pre_TID -into $out_pre_group -radix hex
add_wave /apatb_spk_packet_tx_top/AESL_inst_spk_packet_tx/out_pre_TREADY -into $out_pre_group -color #ffff00 -radix hex
add_wave /apatb_spk_packet_tx_top/AESL_inst_spk_packet_tx/out_pre_TVALID -into $out_pre_group -color #ffff00 -radix hex
add_wave /apatb_spk_packet_tx_top/AESL_inst_spk_packet_tx/out_pre_TUSER -into $out_pre_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set mua_stream_group [add_wave_group mua_stream(axis) -into $cinputgroup]
add_wave /apatb_spk_packet_tx_top/AESL_inst_spk_packet_tx/mua_stream_TDATA -into $mua_stream_group -radix hex
add_wave /apatb_spk_packet_tx_top/AESL_inst_spk_packet_tx/mua_stream_TID -into $mua_stream_group -radix hex
add_wave /apatb_spk_packet_tx_top/AESL_inst_spk_packet_tx/mua_stream_TREADY -into $mua_stream_group -color #ffff00 -radix hex
add_wave /apatb_spk_packet_tx_top/AESL_inst_spk_packet_tx/mua_stream_TVALID -into $mua_stream_group -color #ffff00 -radix hex
add_wave /apatb_spk_packet_tx_top/AESL_inst_spk_packet_tx/mua_stream_TUSER -into $mua_stream_group -radix hex
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_spk_packet_tx_top/AESL_inst_spk_packet_tx/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_spk_packet_tx_top/AESL_inst_spk_packet_tx/ap_clk -into $clockgroup
save_wave_config spk_packet_tx.wcfg
run all
quit

