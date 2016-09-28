
xelab xil_defaultlib.apatb_spk_packet_tx_top -prj spk_packet_tx.prj --lib "ieee_proposed=./ieee_proposed" -s spk_packet_tx -debug wave
xsim --noieeewarnings spk_packet_tx -tclbatch spk_packet_tx.tcl

