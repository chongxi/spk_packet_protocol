############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project spk_tx
set_top spk_packet_tx
add_files ../spk_packet_tx.cpp
add_files -tb ../spk_packet_tx_test.cpp
open_solution "solution1"
set_part {xc7k325tffg900-2} -tool vivado
create_clock -period 4 -name default
#source "./spk_tx/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level port
export_design -evaluate verilog -format ip_catalog
