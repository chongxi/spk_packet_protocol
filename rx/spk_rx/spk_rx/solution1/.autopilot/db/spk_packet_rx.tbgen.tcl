set C_TypeInfoList {{ 
"spk_packet_rx" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"pre_in": [[], {"reference": "0"}] }, {"post_in": [[], {"reference": "0"}] }, {"time_stamp": [[], {"reference": "1"}] }, {"spk_out_stream": [[], {"reference": "2"}] }],[],""], 
"0": [ "stream<spk_struct>", {"hls_type": {"stream": [[[[],"3"]],"4"]}}], 
"1": [ "stream<int>", {"hls_type": {"stream": [[[[], {"scalar": "int"}]],"4"]}}], 
"2": [ "stream<spk_stream>", {"hls_type": {"stream": [[[[],"5"]],"4"]}}], 
"5": [ "spk_stream", {"struct": [[],[],[{ "id": [[8], "6"]},{ "user": [[],  {"scalar": "int"}]},{ "data": [[128], "7"]}],""]}], 
"3": [ "spk_struct", {"struct": [[],[],[{ "user": [[], "8"]},{ "last": [[],  {"scalar": "bool"}]},{ "id": [[8], "6"]},{ "data": [[128], "7"]}],""]}], 
"8": [ "ap_uint<5>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 5}}]],""]}}], 
"6": [ "ch_type", {"typedef": [[[],"9"],""]}], 
"9": [ "ap_uint<6>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 6}}]],""]}}], 
"7": [ "ap_data", {"typedef": [[[],"10"],""]}], 
"10": [ "ap_uint<96>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 96}}]],""]}}],
"4": ["hls", ""]
}}
set moduleName spk_packet_rx
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {spk_packet_rx}
set C_modelType { void 0 }
set C_modelArgList {
	{ pre_in_V_user_V int 5 regular {axi_s 0 volatile  { pre_in user } }  }
	{ pre_in_V_last int 1 regular {axi_s 0 volatile  { pre_in last } }  }
	{ pre_in_V_id_V int 6 regular {axi_s 0 volatile  { pre_in id } }  }
	{ pre_in_V_data_V int 96 regular {axi_s 0 volatile  { pre_in data } }  }
	{ post_in_V_user_V int 5 regular {axi_s 0 volatile  { post_in user } }  }
	{ post_in_V_last int 1 regular {axi_s 0 volatile  { post_in last } }  }
	{ post_in_V_id_V int 6 regular {axi_s 0 volatile  { post_in id } }  }
	{ post_in_V_data_V int 96 regular {axi_s 0 volatile  { post_in data } }  }
	{ time_stamp_V int 32 regular {axi_s 0 volatile  { time_stamp_V data } }  }
	{ spk_out_stream_V_id_V int 6 regular {axi_s 1 volatile  { spk_out_stream id } }  }
	{ spk_out_stream_V_user int 32 regular {axi_s 1 volatile  { spk_out_stream user } }  }
	{ spk_out_stream_V_data_V int 96 regular {axi_s 1 volatile  { spk_out_stream data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pre_in_V_user_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "pre_in.V.user.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pre_in_V_last", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "pre_in.V.last","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pre_in_V_id_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "pre_in.V.id.V","cData": "uint6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pre_in_V_data_V", "interface" : "axis", "bitwidth" : 96, "direction" : "READONLY", "bitSlice":[{"low":0,"up":95,"cElement": [{"cName": "pre_in.V.data.V","cData": "uint96","bit_use": { "low": 0,"up": 95},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "post_in_V_user_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "post_in.V.user.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "post_in_V_last", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "post_in.V.last","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "post_in_V_id_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "post_in.V.id.V","cData": "uint6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "post_in_V_data_V", "interface" : "axis", "bitwidth" : 96, "direction" : "READONLY", "bitSlice":[{"low":0,"up":95,"cElement": [{"cName": "post_in.V.data.V","cData": "uint96","bit_use": { "low": 0,"up": 95},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "time_stamp_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "time_stamp.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "spk_out_stream_V_id_V", "interface" : "axis", "bitwidth" : 6, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "spk_out_stream.V.id.V","cData": "uint6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "spk_out_stream_V_user", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "spk_out_stream.V.user","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "spk_out_stream_V_data_V", "interface" : "axis", "bitwidth" : 96, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":95,"cElement": [{"cName": "spk_out_stream.V.data.V","cData": "uint96","bit_use": { "low": 0,"up": 95},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pre_in_TUSER sc_in sc_lv 5 signal 0 } 
	{ pre_in_TVALID sc_in sc_logic 1 invld 3 } 
	{ pre_in_TREADY sc_out sc_logic 1 inacc 3 } 
	{ pre_in_TLAST sc_in sc_logic 1 signal 1 } 
	{ pre_in_TID sc_in sc_lv 6 signal 2 } 
	{ pre_in_TDATA sc_in sc_lv 96 signal 3 } 
	{ post_in_TUSER sc_in sc_lv 5 signal 4 } 
	{ post_in_TVALID sc_in sc_logic 1 invld 7 } 
	{ post_in_TREADY sc_out sc_logic 1 inacc 7 } 
	{ post_in_TLAST sc_in sc_logic 1 signal 5 } 
	{ post_in_TID sc_in sc_lv 6 signal 6 } 
	{ post_in_TDATA sc_in sc_lv 96 signal 7 } 
	{ time_stamp_V_TDATA sc_in sc_lv 32 signal 8 } 
	{ time_stamp_V_TVALID sc_in sc_logic 1 invld 8 } 
	{ time_stamp_V_TREADY sc_out sc_logic 1 inacc 8 } 
	{ spk_out_stream_TID sc_out sc_lv 6 signal 9 } 
	{ spk_out_stream_TVALID sc_out sc_logic 1 outvld 11 } 
	{ spk_out_stream_TREADY sc_in sc_logic 1 outacc 11 } 
	{ spk_out_stream_TUSER sc_out sc_lv 32 signal 10 } 
	{ spk_out_stream_TDATA sc_out sc_lv 96 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pre_in_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pre_in_V_user_V", "role": "default" }} , 
 	{ "name": "pre_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "pre_in_V_data_V", "role": "default" }} , 
 	{ "name": "pre_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "pre_in_V_data_V", "role": "default" }} , 
 	{ "name": "pre_in_TLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pre_in_V_last", "role": "default" }} , 
 	{ "name": "pre_in_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pre_in_V_id_V", "role": "default" }} , 
 	{ "name": "pre_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "pre_in_V_data_V", "role": "default" }} , 
 	{ "name": "post_in_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "post_in_V_user_V", "role": "default" }} , 
 	{ "name": "post_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "post_in_V_data_V", "role": "default" }} , 
 	{ "name": "post_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "post_in_V_data_V", "role": "default" }} , 
 	{ "name": "post_in_TLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "post_in_V_last", "role": "default" }} , 
 	{ "name": "post_in_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "post_in_V_id_V", "role": "default" }} , 
 	{ "name": "post_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "post_in_V_data_V", "role": "default" }} , 
 	{ "name": "time_stamp_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "time_stamp_V", "role": "TDATA" }} , 
 	{ "name": "time_stamp_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "time_stamp_V", "role": "TVALID" }} , 
 	{ "name": "time_stamp_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "time_stamp_V", "role": "TREADY" }} , 
 	{ "name": "spk_out_stream_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "spk_out_stream_V_id_V", "role": "default" }} , 
 	{ "name": "spk_out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "spk_out_stream_V_data_V", "role": "default" }} , 
 	{ "name": "spk_out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "spk_out_stream_V_data_V", "role": "default" }} , 
 	{ "name": "spk_out_stream_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "spk_out_stream_V_user", "role": "default" }} , 
 	{ "name": "spk_out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "spk_out_stream_V_data_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"], "CDFG" : "spk_packet_rx", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "pre_in_V_user_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "pre_in_V_last", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "pre_in_V_id_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "pre_in_V_data_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [
			{"Name" : "pre_in_TDATA_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "post_in_V_user_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "post_in_V_last", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "post_in_V_id_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "post_in_V_data_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [
			{"Name" : "post_in_TDATA_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "time_stamp_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [
			{"Name" : "time_stamp_V_TDATA_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "spk_out_stream_V_id_V", "Type" : "Axis", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "spk_out_stream_V_user", "Type" : "Axis", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "spk_out_stream_V_data_V", "Type" : "Axis", "Direction" : "O", "BlockSignal" : [
			{"Name" : "spk_out_stream_TDATA_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "spk_V", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.spk_V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.spk_packet_rx_mul_6ns_6ns_11_3_U1", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.spk_packet_rx_mac_muladd_6ns_6ns_5ns_11_3_U2", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "31"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "32"}
]}

set Spec2ImplPortList { 
	pre_in_V_user_V { axis {  { pre_in_TUSER in_data 0 5 } } }
	pre_in_V_last { axis {  { pre_in_TLAST in_data 0 1 } } }
	pre_in_V_id_V { axis {  { pre_in_TID in_data 0 6 } } }
	pre_in_V_data_V { axis {  { pre_in_TVALID in_vld 0 1 }  { pre_in_TREADY in_acc 1 1 }  { pre_in_TDATA in_data 0 96 } } }
	post_in_V_user_V { axis {  { post_in_TUSER in_data 0 5 } } }
	post_in_V_last { axis {  { post_in_TLAST in_data 0 1 } } }
	post_in_V_id_V { axis {  { post_in_TID in_data 0 6 } } }
	post_in_V_data_V { axis {  { post_in_TVALID in_vld 0 1 }  { post_in_TREADY in_acc 1 1 }  { post_in_TDATA in_data 0 96 } } }
	time_stamp_V { axis {  { time_stamp_V_TDATA in_data 0 32 }  { time_stamp_V_TVALID in_vld 0 1 }  { time_stamp_V_TREADY in_acc 1 1 } } }
	spk_out_stream_V_id_V { axis {  { spk_out_stream_TID out_data 1 6 } } }
	spk_out_stream_V_user { axis {  { spk_out_stream_TUSER out_data 1 32 } } }
	spk_out_stream_V_data_V { axis {  { spk_out_stream_TVALID out_vld 1 1 }  { spk_out_stream_TREADY out_acc 0 1 }  { spk_out_stream_TDATA out_data 1 96 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
