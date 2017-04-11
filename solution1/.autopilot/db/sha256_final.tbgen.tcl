set moduleName sha256_final
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {sha256_final}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_data int 8 regular {array 64 { 2 2 } 1 1 }  }
	{ ctx_datalen_read int 32 regular  }
	{ ctx_bitlen_0_read int 32 regular  }
	{ p_read3 int 32 regular  }
	{ p_read1 int 32 regular  }
	{ p_read2 int 32 regular  }
	{ p_read4 int 32 regular  }
	{ p_read5 int 32 regular  }
	{ p_read6 int 32 regular  }
	{ p_read7 int 32 regular  }
	{ p_read8 int 32 regular  }
	{ p_read9 int 32 regular  }
	{ hash int 8 regular {array 64 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_data", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "ctx_datalen_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ctx_bitlen_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hash", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_data_address0 sc_out sc_lv 6 signal 0 } 
	{ ctx_data_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_d0 sc_out sc_lv 8 signal 0 } 
	{ ctx_data_q0 sc_in sc_lv 8 signal 0 } 
	{ ctx_data_address1 sc_out sc_lv 6 signal 0 } 
	{ ctx_data_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_d1 sc_out sc_lv 8 signal 0 } 
	{ ctx_data_q1 sc_in sc_lv 8 signal 0 } 
	{ ctx_datalen_read sc_in sc_lv 32 signal 1 } 
	{ ctx_bitlen_0_read sc_in sc_lv 32 signal 2 } 
	{ p_read3 sc_in sc_lv 32 signal 3 } 
	{ p_read1 sc_in sc_lv 32 signal 4 } 
	{ p_read2 sc_in sc_lv 32 signal 5 } 
	{ p_read4 sc_in sc_lv 32 signal 6 } 
	{ p_read5 sc_in sc_lv 32 signal 7 } 
	{ p_read6 sc_in sc_lv 32 signal 8 } 
	{ p_read7 sc_in sc_lv 32 signal 9 } 
	{ p_read8 sc_in sc_lv 32 signal 10 } 
	{ p_read9 sc_in sc_lv 32 signal 11 } 
	{ hash_address0 sc_out sc_lv 6 signal 12 } 
	{ hash_ce0 sc_out sc_logic 1 signal 12 } 
	{ hash_we0 sc_out sc_logic 1 signal 12 } 
	{ hash_d0 sc_out sc_lv 8 signal 12 } 
	{ hash_address1 sc_out sc_lv 6 signal 12 } 
	{ hash_ce1 sc_out sc_logic 1 signal 12 } 
	{ hash_we1 sc_out sc_logic 1 signal 12 } 
	{ hash_d1 sc_out sc_lv 8 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ctx_data", "role": "address0" }} , 
 	{ "name": "ctx_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "ce0" }} , 
 	{ "name": "ctx_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "we0" }} , 
 	{ "name": "ctx_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "d0" }} , 
 	{ "name": "ctx_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "q0" }} , 
 	{ "name": "ctx_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ctx_data", "role": "address1" }} , 
 	{ "name": "ctx_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "ce1" }} , 
 	{ "name": "ctx_data_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "we1" }} , 
 	{ "name": "ctx_data_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "d1" }} , 
 	{ "name": "ctx_data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "q1" }} , 
 	{ "name": "ctx_datalen_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_datalen_read", "role": "default" }} , 
 	{ "name": "ctx_bitlen_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_bitlen_0_read", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "p_read8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read8", "role": "default" }} , 
 	{ "name": "p_read9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read9", "role": "default" }} , 
 	{ "name": "hash_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "hash", "role": "address0" }} , 
 	{ "name": "hash_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ce0" }} , 
 	{ "name": "hash_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "we0" }} , 
 	{ "name": "hash_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "d0" }} , 
 	{ "name": "hash_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "hash", "role": "address1" }} , 
 	{ "name": "hash_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ce1" }} , 
 	{ "name": "hash_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "we1" }} , 
 	{ "name": "hash_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sha256_final",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "ctx_data", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "1", "SubInstance" : "grp_sha256_transform_fu_494", "Port" : "data"}]},
		{"Name" : "ctx_datalen_read", "Type" : "None", "Direction" : "I"},
		{"Name" : "ctx_bitlen_0_read", "Type" : "None", "Direction" : "I"},
		{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
		{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
		{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
		{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
		{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
		{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
		{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
		{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
		{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
		{"Name" : "hash", "Type" : "Memory", "Direction" : "O"},
		{"Name" : "k", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "1", "SubInstance" : "grp_sha256_transform_fu_494", "Port" : "k"}]}],
		"WaitState" : [
		{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_494"},
		{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_494"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_494", "Parent" : "0", "Child" : ["2", "3"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_494.k_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_494.m_U", "Parent" : "1"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "4294967295", "Max" : "4294967295"}
]}

set Spec2ImplPortList { 
	ctx_data { ap_memory {  { ctx_data_address0 mem_address 1 6 }  { ctx_data_ce0 mem_ce 1 1 }  { ctx_data_we0 mem_we 1 1 }  { ctx_data_d0 mem_din 1 8 }  { ctx_data_q0 mem_dout 0 8 }  { ctx_data_address1 mem_address 1 6 }  { ctx_data_ce1 mem_ce 1 1 }  { ctx_data_we1 mem_we 1 1 }  { ctx_data_d1 mem_din 1 8 }  { ctx_data_q1 mem_dout 0 8 } } }
	ctx_datalen_read { ap_none {  { ctx_datalen_read in_data 0 32 } } }
	ctx_bitlen_0_read { ap_none {  { ctx_bitlen_0_read in_data 0 32 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 32 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 32 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 32 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 32 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 32 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 32 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 32 } } }
	p_read8 { ap_none {  { p_read8 in_data 0 32 } } }
	p_read9 { ap_none {  { p_read9 in_data 0 32 } } }
	hash { ap_memory {  { hash_address0 mem_address 1 6 }  { hash_ce0 mem_ce 1 1 }  { hash_we0 mem_we 1 1 }  { hash_d0 mem_din 1 8 }  { hash_address1 mem_address 1 6 }  { hash_ce1 mem_ce 1 1 }  { hash_we1 mem_we 1 1 }  { hash_d1 mem_din 1 8 } } }
}
