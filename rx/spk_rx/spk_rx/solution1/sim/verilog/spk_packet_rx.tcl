
log_wave [get_objects -filter {type == in_port || type == out_port || type == inout_port || type == port} /apatb_spk_packet_rx_top/AESL_inst_spk_packet_rx/*]
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set spk_out_stream_group [add_wave_group spk_out_stream(axis) -into $coutputgroup]
add_wave /apatb_spk_packet_rx_top/AESL_inst_spk_packet_rx/spk_out_stream_TDATA -into $spk_out_stream_group -radix hex
add_wave /apatb_spk_packet_rx_top/AESL_inst_spk_packet_rx/spk_out_stream_TUSER -into $spk_out_stream_group -radix hex
add_wave /apatb_spk_packet_rx_top/AESL_inst_spk_packet_rx/spk_out_stream_TREADY -into $spk_out_stream_group -color #ffff00 -radix hex
add_wave /apatb_spk_packet_rx_top/AESL_inst_spk_packet_rx/spk_out_stream_TVALID -into $spk_out_stream_group -color #ffff00 -radix hex
add_wave /apatb_spk_packet_rx_top/AESL_inst_spk_packet_rx/spk_out_stream_TID -into $spk_out_stream_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set time_stamp_group [add_wave_group time_stamp(axis) -into $cinputgroup]
add_wave /apatb_spk_packet_rx_top/AESL_inst_spk_packet_rx/time_stamp_V_TREADY -into $time_stamp_group -color #ffff00 -radix hex
add_wave /apatb_spk_packet_rx_top/AESL_inst_spk_packet_rx/time_stamp_V_TVALID -into $time_stamp_group -color #ffff00 -radix hex
add_wave /apatb_spk_packet_rx_top/AESL_inst_spk_packet_rx/time_stamp_V_TDATA -into $time_stamp_group -radix hex
set post_in_group [add_wave_group post_in(axis) -into $cinputgroup]
add_wave /apatb_spk_packet_rx_top/AESL_inst_spk_packet_rx/post_in_TDATA -into $post_in_group -radix hex
add_wave /apatb_spk_packet_rx_top/AESL_inst_spk_packet_rx/post_in_TID -into $post_in_group -radix hex
add_wave /apatb_spk_packet_rx_top/AESL_inst_spk_packet_rx/post_in_TLAST -into $post_in_group -color #ffff00 -radix hex
add_wave /apatb_spk_packet_rx_top/AESL_inst_spk_packet_rx/post_in_TREADY -into $post_in_group -color #ffff00 -radix hex
add_wave /apatb_spk_packet_rx_top/AESL_inst_spk_packet_rx/post_in_TVALID -into $post_in_group -color #ffff00 -radix hex
add_wave /apatb_spk_packet_rx_top/AESL_inst_spk_packet_rx/post_in_TUSER -into $post_in_group -radix hex
set pre_in_group [add_wave_group pre_in(axis) -into $cinputgroup]
add_wave /apatb_spk_packet_rx_top/AESL_inst_spk_packet_rx/pre_in_TDATA -into $pre_in_group -radix hex
add_wave /apatb_spk_packet_rx_top/AESL_inst_spk_packet_rx/pre_in_TID -into $pre_in_group -radix hex
add_wave /apatb_spk_packet_rx_top/AESL_inst_spk_packet_rx/pre_in_TLAST -into $pre_in_group -color #ffff00 -radix hex
add_wave /apatb_spk_packet_rx_top/AESL_inst_spk_packet_rx/pre_in_TREADY -into $pre_in_group -color #ffff00 -radix hex
add_wave /apatb_spk_packet_rx_top/AESL_inst_spk_packet_rx/pre_in_TVALID -into $pre_in_group -color #ffff00 -radix hex
add_wave /apatb_spk_packet_rx_top/AESL_inst_spk_packet_rx/pre_in_TUSER -into $pre_in_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_spk_packet_rx_top/AESL_inst_spk_packet_rx/ap_start -into $blocksiggroup
add_wave /apatb_spk_packet_rx_top/AESL_inst_spk_packet_rx/ap_done -into $blocksiggroup
add_wave /apatb_spk_packet_rx_top/AESL_inst_spk_packet_rx/ap_idle -into $blocksiggroup
add_wave /apatb_spk_packet_rx_top/AESL_inst_spk_packet_rx/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_spk_packet_rx_top/AESL_inst_spk_packet_rx/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_spk_packet_rx_top/AESL_inst_spk_packet_rx/ap_clk -into $clockgroup
save_wave_config spk_packet_rx.wcfg
run all
quit

