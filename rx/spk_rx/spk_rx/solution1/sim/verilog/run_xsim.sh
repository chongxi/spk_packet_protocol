
xelab xil_defaultlib.apatb_spk_packet_rx_top -prj spk_packet_rx.prj --lib "ieee_proposed=./ieee_proposed" -s spk_packet_rx -debug wave
xsim --noieeewarnings spk_packet_rx -tclbatch spk_packet_rx.tcl

