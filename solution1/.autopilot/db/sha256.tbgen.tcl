set C_TypeInfoList {{ 
"sha256" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"data": [[], {"array": [ {"scalar": "unsigned char"}, [256]]}] }, {"base_offset": [[], {"scalar": "unsigned int"}] }, {"bytes": [[], {"scalar": "unsigned int"}] }, {"digest": [[], {"array": [ {"scalar": "unsigned char"}, [32]]}] }],[],""]
}}
set moduleName sha256
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {sha256}
set C_modelType { void 0 }
set C_modelArgList {
	{ data int 8 regular {axi_slave 0}  }
	{ base_offset int 32 regular {axi_slave 0}  }
	{ bytes int 32 regular {axi_slave 0}  }
	{ digest int 8 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "data","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}], "offset" : {"in":256}, "offset_end" : {"in":511}} , 
 	{ "Name" : "base_offset", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "base_offset","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":512}, "offset_end" : {"in":519}} , 
 	{ "Name" : "bytes", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bytes","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":520}, "offset_end" : {"in":527}} , 
 	{ "Name" : "digest", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "digest","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}], "offset" : {"out":544}, "offset_end" : {"out":575}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 10 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 10 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"sha256","role":"start","value":"0","valid_bit":"0"},{"name":"sha256","role":"continue","value":"0","valid_bit":"4"},{"name":"sha256","role":"auto_start","value":"0","valid_bit":"7"},{"name":"data","role":"data","value":"256"},{"name":"base_offset","role":"data","value":"512"},{"name":"bytes","role":"data","value":"520"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"sha256","role":"start","value":"0","valid_bit":"0"},{"name":"sha256","role":"done","value":"0","valid_bit":"1"},{"name":"sha256","role":"idle","value":"0","valid_bit":"2"},{"name":"sha256","role":"ready","value":"0","valid_bit":"3"},{"name":"sha256","role":"auto_start","value":"0","valid_bit":"7"},{"name":"digest","role":"data","value":"544"}] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "8"],
		"CDFG" : "sha256",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "base_offset", "Type" : "None", "Direction" : "I"},
		{"Name" : "bytes", "Type" : "None", "Direction" : "I"},
		{"Name" : "digest", "Type" : "Memory", "Direction" : "O"},
		{"Name" : "k", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "4", "SubInstance" : "grp_sha256_final_fu_834", "Port" : "k"},
			{"ID" : "8", "SubInstance" : "grp_sha256_update_fu_853", "Port" : "k"}]}],
		"WaitState" : [
		{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_final_fu_834"},
		{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_update_fu_853"},
		{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_update_fu_853"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sha256_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.seg_buf_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sha256ctx_data_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha256_final_fu_834", "Parent" : "0", "Child" : ["5"],
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
			{"ID" : "5", "SubInstance" : "grp_sha256_transform_fu_494", "Port" : "data"}]},
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
			{"ID" : "5", "SubInstance" : "grp_sha256_transform_fu_494", "Port" : "k"}]}],
		"WaitState" : [
		{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_494"},
		{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_494"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_final_fu_834.grp_sha256_transform_fu_494", "Parent" : "4", "Child" : ["6", "7"],
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha256_final_fu_834.grp_sha256_transform_fu_494.k_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha256_final_fu_834.grp_sha256_transform_fu_494.m_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha256_update_fu_853", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "sha256_update",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "ctx_data", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "9", "SubInstance" : "grp_sha256_transform_fu_208", "Port" : "data"}]},
		{"Name" : "ctx_datalen_read", "Type" : "None", "Direction" : "I"},
		{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
		{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
		{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
		{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
		{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
		{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
		{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
		{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
		{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
		{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
		{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "len", "Type" : "None", "Direction" : "I"},
		{"Name" : "k", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "9", "SubInstance" : "grp_sha256_transform_fu_208", "Port" : "k"}]}],
		"WaitState" : [
		{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_208"}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_update_fu_853.grp_sha256_transform_fu_208", "Parent" : "8", "Child" : ["10", "11"],
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
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha256_update_fu_853.grp_sha256_transform_fu_208.k_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha256_update_fu_853.grp_sha256_transform_fu_208.m_U", "Parent" : "9"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set Spec2ImplPortList { 
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
