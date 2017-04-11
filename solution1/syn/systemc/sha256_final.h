// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _sha256_final_HH_
#define _sha256_final_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "sha256_transform.h"

namespace ap_rtl {

struct sha256_final : public sc_module {
    // Port declarations 35
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > ctx_data_address0;
    sc_out< sc_logic > ctx_data_ce0;
    sc_out< sc_logic > ctx_data_we0;
    sc_out< sc_lv<8> > ctx_data_d0;
    sc_in< sc_lv<8> > ctx_data_q0;
    sc_out< sc_lv<6> > ctx_data_address1;
    sc_out< sc_logic > ctx_data_ce1;
    sc_out< sc_logic > ctx_data_we1;
    sc_out< sc_lv<8> > ctx_data_d1;
    sc_in< sc_lv<8> > ctx_data_q1;
    sc_in< sc_lv<32> > ctx_datalen_read;
    sc_in< sc_lv<32> > ctx_bitlen_0_read;
    sc_in< sc_lv<32> > p_read3;
    sc_in< sc_lv<32> > p_read1;
    sc_in< sc_lv<32> > p_read2;
    sc_in< sc_lv<32> > p_read4;
    sc_in< sc_lv<32> > p_read5;
    sc_in< sc_lv<32> > p_read6;
    sc_in< sc_lv<32> > p_read7;
    sc_in< sc_lv<32> > p_read8;
    sc_in< sc_lv<32> > p_read9;
    sc_out< sc_lv<6> > hash_address0;
    sc_out< sc_logic > hash_ce0;
    sc_out< sc_logic > hash_we0;
    sc_out< sc_lv<8> > hash_d0;
    sc_out< sc_lv<6> > hash_address1;
    sc_out< sc_logic > hash_ce1;
    sc_out< sc_logic > hash_we1;
    sc_out< sc_lv<8> > hash_d1;


    // Module declarations
    sha256_final(sc_module_name name);
    SC_HAS_PROCESS(sha256_final);

    ~sha256_final();

    sc_trace_file* mVcdFile;

    sha256_transform* grp_sha256_transform_fu_494;
    sc_signal< sc_lv<14> > ap_CS_fsm;
    sc_signal< sc_lv<1> > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > reg_550;
    sc_signal< sc_lv<1> > ap_CS_fsm_state3;
    sc_signal< sc_logic > grp_sha256_transform_fu_494_ap_done;
    sc_signal< sc_lv<1> > ap_CS_fsm_state10;
    sc_signal< sc_lv<32> > reg_555;
    sc_signal< sc_lv<32> > reg_560;
    sc_signal< sc_lv<32> > reg_565;
    sc_signal< sc_lv<32> > reg_570;
    sc_signal< sc_lv<32> > reg_575;
    sc_signal< sc_lv<32> > reg_580;
    sc_signal< sc_lv<32> > reg_585;
    sc_signal< sc_lv<1> > tmp_fu_590_p2;
    sc_signal< sc_lv<1> > tmp_reg_1090;
    sc_signal< sc_lv<32> > i_1_fu_601_p2;
    sc_signal< sc_lv<1> > ap_CS_fsm_state2;
    sc_signal< sc_lv<6> > i_5_fu_634_p2;
    sc_signal< sc_lv<1> > ap_CS_fsm_state4;
    sc_signal< sc_lv<8> > tmp_78_reg_1110;
    sc_signal< sc_lv<1> > tmp_70_fu_628_p2;
    sc_signal< sc_lv<8> > tmp_79_reg_1115;
    sc_signal< sc_lv<8> > tmp_111_fu_770_p1;
    sc_signal< sc_lv<8> > tmp_111_reg_1120;
    sc_signal< sc_lv<8> > tmp_80_reg_1125;
    sc_signal< sc_lv<8> > tmp_82_reg_1130;
    sc_signal< sc_lv<8> > tmp_83_reg_1135;
    sc_signal< sc_lv<32> > i_fu_804_p2;
    sc_signal< sc_lv<1> > ap_CS_fsm_state5;
    sc_signal< sc_lv<5> > i_3_cast1_fu_821_p1;
    sc_signal< sc_lv<5> > i_3_cast1_reg_1148;
    sc_signal< sc_lv<1> > ap_CS_fsm_state11;
    sc_signal< sc_lv<3> > i_6_fu_831_p2;
    sc_signal< sc_lv<3> > i_6_reg_1156;
    sc_signal< sc_lv<8> > tmp_116_fu_865_p1;
    sc_signal< sc_lv<8> > tmp_116_reg_1161;
    sc_signal< sc_lv<1> > tmp_84_fu_825_p2;
    sc_signal< sc_lv<3> > tmp_91_fu_880_p2;
    sc_signal< sc_lv<3> > tmp_91_reg_1166;
    sc_signal< sc_lv<4> > tmp_95_fu_902_p3;
    sc_signal< sc_lv<4> > tmp_95_reg_1172;
    sc_signal< sc_lv<8> > tmp_119_fu_921_p1;
    sc_signal< sc_lv<8> > tmp_119_reg_1177;
    sc_signal< sc_lv<8> > tmp_120_fu_931_p1;
    sc_signal< sc_lv<8> > tmp_120_reg_1182;
    sc_signal< sc_lv<8> > tmp_121_fu_941_p1;
    sc_signal< sc_lv<8> > tmp_121_reg_1187;
    sc_signal< sc_lv<8> > tmp_122_fu_951_p1;
    sc_signal< sc_lv<8> > tmp_122_reg_1192;
    sc_signal< sc_lv<8> > tmp_123_fu_961_p1;
    sc_signal< sc_lv<8> > tmp_123_reg_1197;
    sc_signal< sc_logic > grp_sha256_transform_fu_494_ap_start;
    sc_signal< sc_logic > grp_sha256_transform_fu_494_ap_idle;
    sc_signal< sc_logic > grp_sha256_transform_fu_494_ap_ready;
    sc_signal< sc_lv<32> > grp_sha256_transform_fu_494_ctx_state_0_read;
    sc_signal< sc_lv<32> > grp_sha256_transform_fu_494_ctx_state_1_read;
    sc_signal< sc_lv<32> > grp_sha256_transform_fu_494_ctx_state_2_read;
    sc_signal< sc_lv<32> > grp_sha256_transform_fu_494_ctx_state_3_read;
    sc_signal< sc_lv<32> > grp_sha256_transform_fu_494_ctx_state_4_read;
    sc_signal< sc_lv<32> > grp_sha256_transform_fu_494_ctx_state_5_read;
    sc_signal< sc_lv<32> > grp_sha256_transform_fu_494_ctx_state_6_read;
    sc_signal< sc_lv<32> > grp_sha256_transform_fu_494_ctx_state_7_read;
    sc_signal< sc_lv<6> > grp_sha256_transform_fu_494_data_address0;
    sc_signal< sc_logic > grp_sha256_transform_fu_494_data_ce0;
    sc_signal< sc_lv<6> > grp_sha256_transform_fu_494_data_address1;
    sc_signal< sc_logic > grp_sha256_transform_fu_494_data_ce1;
    sc_signal< sc_lv<32> > grp_sha256_transform_fu_494_ap_return_0;
    sc_signal< sc_lv<32> > grp_sha256_transform_fu_494_ap_return_1;
    sc_signal< sc_lv<32> > grp_sha256_transform_fu_494_ap_return_2;
    sc_signal< sc_lv<32> > grp_sha256_transform_fu_494_ap_return_3;
    sc_signal< sc_lv<32> > grp_sha256_transform_fu_494_ap_return_4;
    sc_signal< sc_lv<32> > grp_sha256_transform_fu_494_ap_return_5;
    sc_signal< sc_lv<32> > grp_sha256_transform_fu_494_ap_return_6;
    sc_signal< sc_lv<32> > grp_sha256_transform_fu_494_ap_return_7;
    sc_signal< sc_lv<32> > i_1_in_reg_373;
    sc_signal< sc_lv<1> > icmp_fu_617_p2;
    sc_signal< sc_lv<6> > i_2_reg_382;
    sc_signal< sc_lv<32> > i_0_in_reg_393;
    sc_signal< sc_lv<1> > exitcond_fu_810_p2;
    sc_signal< sc_lv<32> > ctx_state_reg_402;
    sc_signal< sc_lv<32> > ctx_state_1_reg_412;
    sc_signal< sc_lv<32> > ctx_state_2_reg_422;
    sc_signal< sc_lv<32> > ctx_state_3_reg_432;
    sc_signal< sc_lv<32> > ctx_state_4_reg_442;
    sc_signal< sc_lv<32> > ctx_state_5_reg_452;
    sc_signal< sc_lv<32> > ctx_state_6_reg_462;
    sc_signal< sc_lv<32> > ctx_state_7_reg_472;
    sc_signal< sc_lv<3> > i_3_reg_482;
    sc_signal< sc_lv<1> > ap_CS_fsm_state14;
    sc_signal< sc_logic > ap_reg_grp_sha256_transform_fu_494_ap_start;
    sc_signal< sc_lv<1> > ap_CS_fsm_state9;
    sc_signal< sc_lv<64> > tmp_s_fu_596_p1;
    sc_signal< sc_lv<64> > tmp_69_fu_623_p1;
    sc_signal< sc_lv<64> > tmp_71_fu_640_p1;
    sc_signal< sc_lv<64> > tmp_68_fu_816_p1;
    sc_signal< sc_lv<1> > ap_CS_fsm_state6;
    sc_signal< sc_lv<1> > ap_CS_fsm_state7;
    sc_signal< sc_lv<1> > ap_CS_fsm_state8;
    sc_signal< sc_lv<64> > tmp_93_fu_886_p1;
    sc_signal< sc_lv<64> > tmp_97_fu_910_p1;
    sc_signal< sc_lv<64> > tmp_88_fu_965_p1;
    sc_signal< sc_lv<1> > ap_CS_fsm_state12;
    sc_signal< sc_lv<64> > tmp_99_fu_973_p1;
    sc_signal< sc_lv<64> > tmp_104_fu_986_p1;
    sc_signal< sc_lv<1> > ap_CS_fsm_state13;
    sc_signal< sc_lv<64> > tmp_108_fu_996_p1;
    sc_signal< sc_lv<64> > tmp_110_fu_1004_p1;
    sc_signal< sc_lv<64> > tmp_113_fu_1012_p1;
    sc_signal< sc_lv<8> > tmp_76_fu_732_p2;
    sc_signal< sc_lv<8> > tmp_117_fu_875_p1;
    sc_signal< sc_lv<8> > tmp_118_fu_897_p1;
    sc_signal< sc_lv<26> > tmp_73_fu_607_p4;
    sc_signal< sc_lv<32> > tmp_81_fu_645_p2;
    sc_signal< sc_lv<32> > tmp_72_fu_650_p2;
    sc_signal< sc_lv<1> > tmp_74_fu_656_p2;
    sc_signal< sc_lv<32> > tmp_75_fu_661_p2;
    sc_signal< sc_lv<5> > tmp_89_fu_673_p1;
    sc_signal< sc_lv<13> > tmp_96_fu_687_p1;
    sc_signal< sc_lv<21> > tmp_103_fu_701_p1;
    sc_signal< sc_lv<24> > tmp_18_fu_704_p3;
    sc_signal< sc_lv<24> > tmp_107_fu_712_p1;
    sc_signal< sc_lv<16> > tmp_14_fu_690_p3;
    sc_signal< sc_lv<16> > tmp_100_fu_698_p1;
    sc_signal< sc_lv<8> > tmp_92_fu_684_p1;
    sc_signal< sc_lv<8> > tmp_16_fu_676_p3;
    sc_signal< sc_lv<16> > ctx_bitlen_cast_fu_726_p2;
    sc_signal< sc_lv<24> > ctx_bitlen_cast3_fu_720_p2;
    sc_signal< sc_lv<32> > ctx_bitlen_fu_715_p2;
    sc_signal< sc_lv<32> > tmp_102_read3_fu_666_p3;
    sc_signal< sc_lv<2> > tmp_114_fu_837_p1;
    sc_signal< sc_lv<5> > tmp_85_fu_841_p3;
    sc_signal< sc_lv<5> > tmp_86_fu_849_p2;
    sc_signal< sc_lv<32> > tmp_109_cast_fu_855_p1;
    sc_signal< sc_lv<32> > tmp_87_fu_859_p2;
    sc_signal< sc_lv<32> > tmp_90_fu_869_p2;
    sc_signal< sc_lv<32> > tmp_94_fu_891_p2;
    sc_signal< sc_lv<32> > tmp_98_fu_915_p2;
    sc_signal< sc_lv<32> > tmp_101_fu_925_p2;
    sc_signal< sc_lv<32> > tmp_105_fu_935_p2;
    sc_signal< sc_lv<32> > tmp_109_fu_945_p2;
    sc_signal< sc_lv<32> > tmp_112_fu_955_p2;
    sc_signal< sc_lv<4> > tmp_123_cast8_fu_970_p1;
    sc_signal< sc_lv<5> > tmp_102_fu_978_p3;
    sc_signal< sc_lv<5> > tmp_106_fu_991_p2;
    sc_signal< sc_lv<5> > tmp_135_cast7_fu_1001_p1;
    sc_signal< sc_lv<5> > tmp_139_cast6_fu_1009_p1;
    sc_signal< sc_lv<14> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<14> ap_ST_fsm_state1;
    static const sc_lv<14> ap_ST_fsm_state2;
    static const sc_lv<14> ap_ST_fsm_state3;
    static const sc_lv<14> ap_ST_fsm_state4;
    static const sc_lv<14> ap_ST_fsm_state5;
    static const sc_lv<14> ap_ST_fsm_state6;
    static const sc_lv<14> ap_ST_fsm_state7;
    static const sc_lv<14> ap_ST_fsm_state8;
    static const sc_lv<14> ap_ST_fsm_state9;
    static const sc_lv<14> ap_ST_fsm_state10;
    static const sc_lv<14> ap_ST_fsm_state11;
    static const sc_lv<14> ap_ST_fsm_state12;
    static const sc_lv<14> ap_ST_fsm_state13;
    static const sc_lv<14> ap_ST_fsm_state14;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<64> ap_const_lv64_3F;
    static const sc_lv<64> ap_const_lv64_3E;
    static const sc_lv<64> ap_const_lv64_3D;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<64> ap_const_lv64_3C;
    static const sc_lv<64> ap_const_lv64_3B;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<64> ap_const_lv64_3A;
    static const sc_lv<64> ap_const_lv64_39;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<64> ap_const_lv64_38;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<8> ap_const_lv8_80;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_38;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<26> ap_const_lv26_0;
    static const sc_lv<6> ap_const_lv6_38;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_37;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<5> ap_const_lv5_18;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<5> ap_const_lv5_14;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ctx_bitlen_cast3_fu_720_p2();
    void thread_ctx_bitlen_cast_fu_726_p2();
    void thread_ctx_bitlen_fu_715_p2();
    void thread_ctx_data_address0();
    void thread_ctx_data_address1();
    void thread_ctx_data_ce0();
    void thread_ctx_data_ce1();
    void thread_ctx_data_d0();
    void thread_ctx_data_d1();
    void thread_ctx_data_we0();
    void thread_ctx_data_we1();
    void thread_exitcond_fu_810_p2();
    void thread_grp_sha256_transform_fu_494_ap_start();
    void thread_grp_sha256_transform_fu_494_ctx_state_0_read();
    void thread_grp_sha256_transform_fu_494_ctx_state_1_read();
    void thread_grp_sha256_transform_fu_494_ctx_state_2_read();
    void thread_grp_sha256_transform_fu_494_ctx_state_3_read();
    void thread_grp_sha256_transform_fu_494_ctx_state_4_read();
    void thread_grp_sha256_transform_fu_494_ctx_state_5_read();
    void thread_grp_sha256_transform_fu_494_ctx_state_6_read();
    void thread_grp_sha256_transform_fu_494_ctx_state_7_read();
    void thread_hash_address0();
    void thread_hash_address1();
    void thread_hash_ce0();
    void thread_hash_ce1();
    void thread_hash_d0();
    void thread_hash_d1();
    void thread_hash_we0();
    void thread_hash_we1();
    void thread_i_1_fu_601_p2();
    void thread_i_3_cast1_fu_821_p1();
    void thread_i_5_fu_634_p2();
    void thread_i_6_fu_831_p2();
    void thread_i_fu_804_p2();
    void thread_icmp_fu_617_p2();
    void thread_tmp_100_fu_698_p1();
    void thread_tmp_101_fu_925_p2();
    void thread_tmp_102_fu_978_p3();
    void thread_tmp_102_read3_fu_666_p3();
    void thread_tmp_103_fu_701_p1();
    void thread_tmp_104_fu_986_p1();
    void thread_tmp_105_fu_935_p2();
    void thread_tmp_106_fu_991_p2();
    void thread_tmp_107_fu_712_p1();
    void thread_tmp_108_fu_996_p1();
    void thread_tmp_109_cast_fu_855_p1();
    void thread_tmp_109_fu_945_p2();
    void thread_tmp_110_fu_1004_p1();
    void thread_tmp_111_fu_770_p1();
    void thread_tmp_112_fu_955_p2();
    void thread_tmp_113_fu_1012_p1();
    void thread_tmp_114_fu_837_p1();
    void thread_tmp_116_fu_865_p1();
    void thread_tmp_117_fu_875_p1();
    void thread_tmp_118_fu_897_p1();
    void thread_tmp_119_fu_921_p1();
    void thread_tmp_120_fu_931_p1();
    void thread_tmp_121_fu_941_p1();
    void thread_tmp_122_fu_951_p1();
    void thread_tmp_123_cast8_fu_970_p1();
    void thread_tmp_123_fu_961_p1();
    void thread_tmp_135_cast7_fu_1001_p1();
    void thread_tmp_139_cast6_fu_1009_p1();
    void thread_tmp_14_fu_690_p3();
    void thread_tmp_16_fu_676_p3();
    void thread_tmp_18_fu_704_p3();
    void thread_tmp_68_fu_816_p1();
    void thread_tmp_69_fu_623_p1();
    void thread_tmp_70_fu_628_p2();
    void thread_tmp_71_fu_640_p1();
    void thread_tmp_72_fu_650_p2();
    void thread_tmp_73_fu_607_p4();
    void thread_tmp_74_fu_656_p2();
    void thread_tmp_75_fu_661_p2();
    void thread_tmp_76_fu_732_p2();
    void thread_tmp_81_fu_645_p2();
    void thread_tmp_84_fu_825_p2();
    void thread_tmp_85_fu_841_p3();
    void thread_tmp_86_fu_849_p2();
    void thread_tmp_87_fu_859_p2();
    void thread_tmp_88_fu_965_p1();
    void thread_tmp_89_fu_673_p1();
    void thread_tmp_90_fu_869_p2();
    void thread_tmp_91_fu_880_p2();
    void thread_tmp_92_fu_684_p1();
    void thread_tmp_93_fu_886_p1();
    void thread_tmp_94_fu_891_p2();
    void thread_tmp_95_fu_902_p3();
    void thread_tmp_96_fu_687_p1();
    void thread_tmp_97_fu_910_p1();
    void thread_tmp_98_fu_915_p2();
    void thread_tmp_99_fu_973_p1();
    void thread_tmp_fu_590_p2();
    void thread_tmp_s_fu_596_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif