set moduleName sha256_transform
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {sha256_transform}
set C_modelType { int 256 }
set C_modelArgList {
	{ ctx_state_0_read int 32 regular  }
	{ ctx_state_1_read int 32 regular  }
	{ ctx_state_2_read int 32 regular  }
	{ ctx_state_3_read int 32 regular  }
	{ ctx_state_4_read int 32 regular  }
	{ ctx_state_5_read int 32 regular  }
	{ ctx_state_6_read int 32 regular  }
	{ ctx_state_7_read int 32 regular  }
	{ data int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_state_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ctx_state_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ctx_state_2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ctx_state_3_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ctx_state_4_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ctx_state_5_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ctx_state_6_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ctx_state_7_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 256} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_state_0_read sc_in sc_lv 32 signal 0 } 
	{ ctx_state_1_read sc_in sc_lv 32 signal 1 } 
	{ ctx_state_2_read sc_in sc_lv 32 signal 2 } 
	{ ctx_state_3_read sc_in sc_lv 32 signal 3 } 
	{ ctx_state_4_read sc_in sc_lv 32 signal 4 } 
	{ ctx_state_5_read sc_in sc_lv 32 signal 5 } 
	{ ctx_state_6_read sc_in sc_lv 32 signal 6 } 
	{ ctx_state_7_read sc_in sc_lv 32 signal 7 } 
	{ data_address0 sc_out sc_lv 6 signal 8 } 
	{ data_ce0 sc_out sc_logic 1 signal 8 } 
	{ data_q0 sc_in sc_lv 8 signal 8 } 
	{ data_address1 sc_out sc_lv 6 signal 8 } 
	{ data_ce1 sc_out sc_logic 1 signal 8 } 
	{ data_q1 sc_in sc_lv 8 signal 8 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ ap_return_4 sc_out sc_lv 32 signal -1 } 
	{ ap_return_5 sc_out sc_lv 32 signal -1 } 
	{ ap_return_6 sc_out sc_lv 32 signal -1 } 
	{ ap_return_7 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_state_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state_0_read", "role": "default" }} , 
 	{ "name": "ctx_state_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state_1_read", "role": "default" }} , 
 	{ "name": "ctx_state_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state_2_read", "role": "default" }} , 
 	{ "name": "ctx_state_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state_3_read", "role": "default" }} , 
 	{ "name": "ctx_state_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state_4_read", "role": "default" }} , 
 	{ "name": "ctx_state_5_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state_5_read", "role": "default" }} , 
 	{ "name": "ctx_state_6_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state_6_read", "role": "default" }} , 
 	{ "name": "ctx_state_7_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state_7_read", "role": "default" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q1" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "ctx_state_0_read", "Type" : "None", "Direction" : "I"},
		{"Name" : "ctx_state_1_read", "Type" : "None", "Direction" : "I"},
		{"Name" : "ctx_state_2_read", "Type" : "None", "Direction" : "I"},
		{"Name" : "ctx_state_3_read", "Type" : "None", "Direction" : "I"},
		{"Name" : "ctx_state_4_read", "Type" : "None", "Direction" : "I"},
		{"Name" : "ctx_state_5_read", "Type" : "None", "Direction" : "I"},
		{"Name" : "ctx_state_6_read", "Type" : "None", "Direction" : "I"},
		{"Name" : "ctx_state_7_read", "Type" : "None", "Direction" : "I"},
		{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "435", "Max" : "435"}
	, {"Name" : "Interval", "Min" : "435", "Max" : "435"}
]}

set Spec2ImplPortList { 
	ctx_state_0_read { ap_none {  { ctx_state_0_read in_data 0 32 } } }
	ctx_state_1_read { ap_none {  { ctx_state_1_read in_data 0 32 } } }
	ctx_state_2_read { ap_none {  { ctx_state_2_read in_data 0 32 } } }
	ctx_state_3_read { ap_none {  { ctx_state_3_read in_data 0 32 } } }
	ctx_state_4_read { ap_none {  { ctx_state_4_read in_data 0 32 } } }
	ctx_state_5_read { ap_none {  { ctx_state_5_read in_data 0 32 } } }
	ctx_state_6_read { ap_none {  { ctx_state_6_read in_data 0 32 } } }
	ctx_state_7_read { ap_none {  { ctx_state_7_read in_data 0 32 } } }
	data { ap_memory {  { data_address0 mem_address 1 6 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 }  { data_address1 mem_address 1 6 }  { data_ce1 mem_ce 1 1 }  { data_q1 mem_dout 0 8 } } }
}
