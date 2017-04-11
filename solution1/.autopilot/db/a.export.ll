; ModuleID = '/home/brett/Thesis/Vivado_WS/sha256/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sha256_str = internal unnamed_addr constant [7 x i8] c"sha256\00"
@k = constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00"
@p_str4 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str3 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

define internal fastcc { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } @sha256_update([64 x i8]* nocapture %ctx_data, i32 %ctx_datalen_read, i32 %p_read1, i32 %p_read2, i32 %p_read3, i32 %p_read4, i32 %p_read5, i32 %p_read6, i32 %p_read7, i32 %p_read8, i32 %p_read9, i32 %p_read10, [64 x i8]* nocapture %data, i32 %len) {
  %ctx_datalen = alloca i32
  %ctx_state_7 = alloca i32
  %ctx_state_6 = alloca i32
  %ctx_state_5 = alloca i32
  %ctx_state_4 = alloca i32
  %ctx_state_3 = alloca i32
  %ctx_state_2 = alloca i32
  %ctx_state_1 = alloca i32
  %ctx_state = alloca i32
  %ctx_bitlen_1 = alloca i32
  %ctx_bitlen = alloca i32
  %len_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %len)
  %p_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read10)
  %p_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read9)
  %p_read_2 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read8)
  %p_read_3 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read7)
  %p_read_4 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read6)
  %p_read_5 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read5)
  %p_read45 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read4)
  %p_read34 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read3)
  %p_read23 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read2)
  %p_read12 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read1)
  %ctx_datalen_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_datalen_read)
  %tmp_7 = trunc i32 %len_read to i8
  store i32 %p_read12, i32* %ctx_bitlen
  store i32 %p_read23, i32* %ctx_bitlen_1
  store i32 %p_read34, i32* %ctx_state
  store i32 %p_read45, i32* %ctx_state_1
  store i32 %p_read_5, i32* %ctx_state_2
  store i32 %p_read_4, i32* %ctx_state_3
  store i32 %p_read_3, i32* %ctx_state_4
  store i32 %p_read_2, i32* %ctx_state_5
  store i32 %p_read_1, i32* %ctx_state_6
  store i32 %p_read, i32* %ctx_state_7
  store i32 %ctx_datalen_read_1, i32* %ctx_datalen
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.backedge, %0
  %i = phi i7 [ 0, %0 ], [ %i_1, %._crit_edge.backedge ]
  %i_cast = zext i7 %i to i8
  %exitcond = icmp eq i8 %i_cast, %tmp_7
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 64, i64 0)
  %i_1 = add i7 %i, 1
  br i1 %exitcond, label %2, label %1

; <label>:1                                       ; preds = %._crit_edge
  %ctx_datalen_load = load i32* %ctx_datalen
  %tmp = zext i7 %i to i64
  %data_addr = getelementptr [64 x i8]* %data, i64 0, i64 %tmp
  %data_load = load i8* %data_addr, align 1
  %tmp_1 = zext i32 %ctx_datalen_load to i64
  %ctx_data_addr = getelementptr [64 x i8]* %ctx_data, i64 0, i64 %tmp_1
  store i8 %data_load, i8* %ctx_data_addr, align 1
  %tmp_2 = add i32 %ctx_datalen_load, 1
  %tmp_3 = icmp eq i32 %tmp_2, 64
  br i1 %tmp_3, label %._crit_edge1, label %._crit_edge.backedge.pre

._crit_edge1:                                     ; preds = %1
  %ctx_state_7_load_1 = load i32* %ctx_state_7
  %ctx_state_6_load_1 = load i32* %ctx_state_6
  %ctx_state_5_load_1 = load i32* %ctx_state_5
  %ctx_state_4_load_1 = load i32* %ctx_state_4
  %ctx_state_3_load_1 = load i32* %ctx_state_3
  %ctx_state_2_load_1 = load i32* %ctx_state_2
  %ctx_state_1_load_1 = load i32* %ctx_state_1
  %ctx_state_load_1 = load i32* %ctx_state
  %ctx_bitlen_1_load = load i32* %ctx_bitlen_1
  %ctx_bitlen_load = load i32* %ctx_bitlen
  %call_ret = call fastcc { i32, i32, i32, i32, i32, i32, i32, i32 } @sha256_transform(i32 %ctx_state_load_1, i32 %ctx_state_1_load_1, i32 %ctx_state_2_load_1, i32 %ctx_state_3_load_1, i32 %ctx_state_4_load_1, i32 %ctx_state_5_load_1, i32 %ctx_state_6_load_1, i32 %ctx_state_7_load_1, [64 x i8]* %ctx_data)
  %ctx_state_0_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 0
  %ctx_state_1_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 1
  %ctx_state_2_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 2
  %ctx_state_3_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 3
  %ctx_state_4_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 4
  %ctx_state_5_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 5
  %ctx_state_6_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 6
  %ctx_state_7_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 7
  %tmp_4 = icmp ugt i32 %ctx_bitlen_load, -513
  %tmp_5 = add i32 %ctx_bitlen_1_load, 1
  %tmp_5_ctx_bitlen_1 = select i1 %tmp_4, i32 %tmp_5, i32 %ctx_bitlen_1_load
  %tmp_6 = add i32 %ctx_bitlen_load, 512
  store i32 %tmp_6, i32* %ctx_bitlen
  store i32 %tmp_5_ctx_bitlen_1, i32* %ctx_bitlen_1
  store i32 %ctx_state_0_ret, i32* %ctx_state
  store i32 %ctx_state_1_ret, i32* %ctx_state_1
  store i32 %ctx_state_2_ret, i32* %ctx_state_2
  store i32 %ctx_state_3_ret, i32* %ctx_state_3
  store i32 %ctx_state_4_ret, i32* %ctx_state_4
  store i32 %ctx_state_5_ret, i32* %ctx_state_5
  store i32 %ctx_state_6_ret, i32* %ctx_state_6
  store i32 %ctx_state_7_ret, i32* %ctx_state_7
  store i32 0, i32* %ctx_datalen
  br label %._crit_edge.backedge

._crit_edge.backedge.pre:                         ; preds = %1
  store i32 %tmp_2, i32* %ctx_datalen
  br label %._crit_edge.backedge

._crit_edge.backedge:                             ; preds = %._crit_edge.backedge.pre, %._crit_edge1
  br label %._crit_edge

; <label>:2                                       ; preds = %._crit_edge
  %ctx_datalen_load_1 = load i32* %ctx_datalen
  %ctx_state_7_load = load i32* %ctx_state_7
  %ctx_state_6_load = load i32* %ctx_state_6
  %ctx_state_5_load = load i32* %ctx_state_5
  %ctx_state_4_load = load i32* %ctx_state_4
  %ctx_state_3_load = load i32* %ctx_state_3
  %ctx_state_2_load = load i32* %ctx_state_2
  %ctx_state_1_load = load i32* %ctx_state_1
  %ctx_state_load = load i32* %ctx_state
  %ctx_bitlen_1_load_1 = load i32* %ctx_bitlen_1
  %ctx_bitlen_load_1 = load i32* %ctx_bitlen
  %mrv_s = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } undef, i32 %ctx_datalen_load_1, 0
  %mrv_1 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_s, i32 %ctx_bitlen_load_1, 1
  %mrv_2 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_1, i32 %ctx_bitlen_1_load_1, 2
  %mrv_3 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_2, i32 %ctx_state_load, 3
  %mrv_4 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_3, i32 %ctx_state_1_load, 4
  %mrv_5 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_4, i32 %ctx_state_2_load, 5
  %mrv_6 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_5, i32 %ctx_state_3_load, 6
  %mrv_7 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_6, i32 %ctx_state_4_load, 7
  %mrv_8 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_7, i32 %ctx_state_5_load, 8
  %mrv_9 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_8, i32 %ctx_state_6_load, 9
  %mrv_10 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_9, i32 %ctx_state_7_load, 10
  ret { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_10
}

define internal fastcc { i32, i32, i32, i32, i32, i32, i32, i32 } @sha256_transform(i32 %ctx_state_0_read, i32 %ctx_state_1_read, i32 %ctx_state_2_read, i32 %ctx_state_3_read, i32 %ctx_state_4_read, i32 %ctx_state_5_read, i32 %ctx_state_6_read, i32 %ctx_state_7_read, [64 x i8]* nocapture %data) readonly {
  %ctx_state_7_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_state_7_read)
  %ctx_state_6_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_state_6_read)
  %ctx_state_5_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_state_5_read)
  %ctx_state_4_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_state_4_read)
  %ctx_state_3_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_state_3_read)
  %ctx_state_2_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_state_2_read)
  %ctx_state_1_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_state_1_read)
  %ctx_state_0_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_state_0_read)
  %m = alloca [64 x i32], align 16
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 0, %0 ], [ %tmp_9, %2 ]
  %j = phi i7 [ 0, %0 ], [ %j_1, %2 ]
  %tmp = icmp eq i5 %i, -16
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %tmp_9 = add i5 %i, 1
  br i1 %tmp, label %.preheader.preheader, label %2

.preheader.preheader:                             ; preds = %1
  br label %.preheader

; <label>:2                                       ; preds = %1
  %tmp_8 = zext i7 %j to i64
  %data_addr = getelementptr [64 x i8]* %data, i64 0, i64 %tmp_8
  %data_load = load i8* %data_addr, align 1
  %tmp_13 = trunc i7 %j to i6
  %tmp_1 = or i6 %tmp_13, 1
  %tmp_2 = zext i6 %tmp_1 to i64
  %data_addr_1 = getelementptr [64 x i8]* %data, i64 0, i64 %tmp_2
  %data_load_1 = load i8* %data_addr_1, align 1
  %tmp_5 = or i6 %tmp_13, 2
  %tmp_6 = zext i6 %tmp_5 to i64
  %data_addr_2 = getelementptr [64 x i8]* %data, i64 0, i64 %tmp_6
  %data_load_2 = load i8* %data_addr_2, align 1
  %tmp_3 = or i6 %tmp_13, 3
  %tmp_7 = zext i6 %tmp_3 to i64
  %data_addr_3 = getelementptr [64 x i8]* %data, i64 0, i64 %tmp_7
  %data_load_3 = load i8* %data_addr_3, align 1
  %tmp_s = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 %data_load, i8 %data_load_1, i8 %data_load_2, i8 %data_load_3)
  %tmp_4 = zext i5 %i to i64
  %m_addr = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp_4
  store i32 %tmp_s, i32* %m_addr, align 4
  %j_1 = add i7 4, %j
  br label %1

.preheader:                                       ; preds = %.preheader.preheader, %3
  %i_1 = phi i7 [ %i_3, %3 ], [ 16, %.preheader.preheader ]
  %exitcond = icmp eq i7 %i_1, -64
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 48, i64 48, i64 48)
  br i1 %exitcond, label %.preheader1.preheader, label %3

.preheader1.preheader:                            ; preds = %.preheader
  br label %.preheader1

; <label>:3                                       ; preds = %.preheader
  %tmp_10 = add i7 -2, %i_1
  %tmp_11 = zext i7 %tmp_10 to i64
  %m_addr_1 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp_11
  %m_load = load i32* %m_addr_1, align 4
  %tmp_12 = call i15 @_ssdm_op_PartSelect.i15.i32.i32.i32(i32 %m_load, i32 17, i32 31)
  %tmp_16 = trunc i32 %m_load to i17
  %tmp_14 = call i32 @_ssdm_op_BitConcatenate.i32.i17.i15(i17 %tmp_16, i15 %tmp_12)
  %tmp_15 = call i13 @_ssdm_op_PartSelect.i13.i32.i32.i32(i32 %m_load, i32 19, i32 31)
  %tmp_26 = trunc i32 %m_load to i19
  %tmp_17 = call i32 @_ssdm_op_BitConcatenate.i32.i19.i13(i19 %tmp_26, i13 %tmp_15)
  %tmp_18 = call i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32 %m_load, i32 10, i32 31)
  %tmp_19 = zext i22 %tmp_18 to i32
  %tmp2 = xor i32 %tmp_19, %tmp_17
  %tmp_20 = xor i32 %tmp2, %tmp_14
  %tmp_21 = add i7 -7, %i_1
  %tmp_22 = zext i7 %tmp_21 to i64
  %m_addr_2 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp_22
  %m_load_1 = load i32* %m_addr_2, align 4
  %tmp_23 = add i7 -15, %i_1
  %tmp_24 = zext i7 %tmp_23 to i64
  %m_addr_3 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp_24
  %m_load_2 = load i32* %m_addr_3, align 4
  %tmp_25 = call i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32 %m_load_2, i32 7, i32 31)
  %tmp_29 = trunc i32 %m_load_2 to i7
  %tmp_27 = call i32 @_ssdm_op_BitConcatenate.i32.i7.i25(i7 %tmp_29, i25 %tmp_25)
  %tmp_28 = call i14 @_ssdm_op_PartSelect.i14.i32.i32.i32(i32 %m_load_2, i32 18, i32 31)
  %tmp_40 = trunc i32 %m_load_2 to i18
  %tmp_30 = call i32 @_ssdm_op_BitConcatenate.i32.i18.i14(i18 %tmp_40, i14 %tmp_28)
  %tmp_31 = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %m_load_2, i32 3, i32 31)
  %tmp_32 = zext i29 %tmp_31 to i32
  %tmp3 = xor i32 %tmp_32, %tmp_30
  %tmp_33 = xor i32 %tmp3, %tmp_27
  %tmp_34 = add i7 -16, %i_1
  %tmp_35 = zext i7 %tmp_34 to i64
  %m_addr_4 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp_35
  %m_load_3 = load i32* %m_addr_4, align 4
  %tmp4 = add i32 %m_load_1, %m_load_3
  %tmp5 = add i32 %tmp_20, %tmp_33
  %tmp_36 = add i32 %tmp5, %tmp4
  %tmp_37 = zext i7 %i_1 to i64
  %m_addr_5 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp_37
  store i32 %tmp_36, i32* %m_addr_5, align 4
  %i_3 = add i7 1, %i_1
  br label %.preheader

.preheader1:                                      ; preds = %.preheader1.preheader, %4
  %h1 = phi i32 [ %h, %4 ], [ %ctx_state_7_read_1, %.preheader1.preheader ]
  %h = phi i32 [ %g, %4 ], [ %ctx_state_6_read_1, %.preheader1.preheader ]
  %g = phi i32 [ %f, %4 ], [ %ctx_state_5_read_1, %.preheader1.preheader ]
  %f = phi i32 [ %e, %4 ], [ %ctx_state_4_read_1, %.preheader1.preheader ]
  %d1 = phi i32 [ %d, %4 ], [ %ctx_state_3_read_1, %.preheader1.preheader ]
  %d = phi i32 [ %c, %4 ], [ %ctx_state_2_read_1, %.preheader1.preheader ]
  %c = phi i32 [ %b, %4 ], [ %ctx_state_1_read_1, %.preheader1.preheader ]
  %b = phi i32 [ %a, %4 ], [ %ctx_state_0_read_1, %.preheader1.preheader ]
  %i_2 = phi i7 [ %i_4, %4 ], [ 0, %.preheader1.preheader ]
  %tmp_38 = icmp eq i7 %i_2, -64
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %i_4 = add i7 %i_2, 1
  br i1 %tmp_38, label %5, label %4

; <label>:4                                       ; preds = %.preheader1
  %tmp_39 = call i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32 %f, i32 6, i32 31)
  %tmp_43 = trunc i32 %f to i6
  %tmp_41 = call i32 @_ssdm_op_BitConcatenate.i32.i6.i26(i6 %tmp_43, i26 %tmp_39)
  %tmp_42 = call i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32 %f, i32 11, i32 31)
  %tmp_46 = trunc i32 %f to i11
  %tmp_44 = call i32 @_ssdm_op_BitConcatenate.i32.i11.i21(i11 %tmp_46, i21 %tmp_42)
  %tmp_45 = call i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32 %f, i32 25, i32 31)
  %tmp_55 = trunc i32 %f to i25
  %tmp_47 = call i32 @_ssdm_op_BitConcatenate.i32.i25.i7(i25 %tmp_55, i7 %tmp_45)
  %tmp6 = xor i32 %tmp_41, %tmp_44
  %tmp_48 = xor i32 %tmp6, %tmp_47
  %tmp_49 = and i32 %f, %g
  %tmp_50 = xor i32 %f, -1
  %tmp_51 = and i32 %h, %tmp_50
  %tmp_52 = xor i32 %tmp_49, %tmp_51
  %tmp_53 = zext i7 %i_2 to i64
  %k_addr = getelementptr inbounds [64 x i32]* @k, i64 0, i64 %tmp_53
  %k_load = load i32* %k_addr, align 4
  %m_addr_6 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp_53
  %m_load_4 = load i32* %m_addr_6, align 4
  %tmp9 = add i32 %k_load, %m_load_4
  %tmp11 = add i32 %tmp_48, %tmp_52
  %tmp10 = add i32 %tmp11, %h1
  %t1 = add i32 %tmp10, %tmp9
  %tmp_54 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %b, i32 2, i32 31)
  %tmp_58 = trunc i32 %b to i2
  %tmp_56 = call i32 @_ssdm_op_BitConcatenate.i32.i2.i30(i2 %tmp_58, i30 %tmp_54)
  %tmp_57 = call i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32 %b, i32 13, i32 31)
  %tmp_61 = trunc i32 %b to i13
  %tmp_59 = call i32 @_ssdm_op_BitConcatenate.i32.i13.i19(i13 %tmp_61, i19 %tmp_57)
  %tmp_60 = call i10 @_ssdm_op_PartSelect.i10.i32.i32.i32(i32 %b, i32 22, i32 31)
  %tmp_68 = trunc i32 %b to i22
  %tmp_62 = call i32 @_ssdm_op_BitConcatenate.i32.i22.i10(i22 %tmp_68, i10 %tmp_60)
  %tmp12 = xor i32 %tmp_56, %tmp_59
  %tmp_63 = xor i32 %tmp12, %tmp_62
  %tmp_64 = xor i32 %c, %d
  %tmp_65 = and i32 %b, %tmp_64
  %tmp_66 = and i32 %c, %d
  %tmp_67 = xor i32 %tmp_65, %tmp_66
  %e = add i32 %t1, %d1
  %tmp13 = add i32 %tmp_67, %t1
  %a = add i32 %tmp13, %tmp_63
  br label %.preheader1

; <label>:5                                       ; preds = %.preheader1
  %ctx_state = add i32 %b, %ctx_state_0_read_1
  %ctx_state_1 = add i32 %c, %ctx_state_1_read_1
  %ctx_state_2 = add i32 %d, %ctx_state_2_read_1
  %ctx_state_3 = add i32 %d1, %ctx_state_3_read_1
  %ctx_state_4 = add i32 %f, %ctx_state_4_read_1
  %ctx_state_5 = add i32 %g, %ctx_state_5_read_1
  %ctx_state_6 = add i32 %h, %ctx_state_6_read_1
  %ctx_state_7 = add i32 %h1, %ctx_state_7_read_1
  %mrv = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32 } undef, i32 %ctx_state, 0
  %mrv_1 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %mrv, i32 %ctx_state_1, 1
  %mrv_2 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_1, i32 %ctx_state_2, 2
  %mrv_3 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_2, i32 %ctx_state_3, 3
  %mrv_4 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_3, i32 %ctx_state_4, 4
  %mrv_5 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_4, i32 %ctx_state_5, 5
  %mrv_6 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_5, i32 %ctx_state_6, 6
  %mrv_7 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_6, i32 %ctx_state_7, 7
  ret { i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_7
}

define internal fastcc void @sha256_final([64 x i8]* nocapture %ctx_data, i32 %ctx_datalen_read, i32 %ctx_bitlen_0_read, i32 %p_read3, i32 %p_read1, i32 %p_read2, i32 %p_read4, i32 %p_read5, i32 %p_read6, i32 %p_read7, i32 %p_read8, i32 %p_read9, [64 x i8]* nocapture %hash) {
  %p_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read9)
  %p_read_6 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read8)
  %p_read_7 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read7)
  %p_read_8 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read6)
  %p_read_9 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read5)
  %p_read48 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read4)
  %p_read27 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read2)
  %p_read16 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read1)
  %p_read35 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read3)
  %ctx_bitlen_0_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_bitlen_0_read)
  %ctx_datalen_read_2 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_datalen_read)
  %tmp = icmp ult i32 %ctx_datalen_read_2, 56
  %tmp_s = zext i32 %ctx_datalen_read_2 to i64
  %ctx_data_addr = getelementptr [64 x i8]* %ctx_data, i64 0, i64 %tmp_s
  store i8 -128, i8* %ctx_data_addr, align 1
  br i1 %tmp, label %.preheader3.preheader, label %.preheader.preheader

.preheader3.preheader:                            ; preds = %0
  br label %.preheader3

.preheader.preheader:                             ; preds = %0
  br label %.preheader

.preheader3:                                      ; preds = %.preheader3.preheader, %1
  %i_0_in = phi i32 [ %i, %1 ], [ %ctx_datalen_read_2, %.preheader3.preheader ]
  %i = add i32 %i_0_in, 1
  %exitcond = icmp eq i32 %i_0_in, 55
  br i1 %exitcond, label %.loopexit.loopexit15, label %1

; <label>:1                                       ; preds = %.preheader3
  %tmp_68 = zext i32 %i to i64
  %ctx_data_addr_1 = getelementptr [64 x i8]* %ctx_data, i64 0, i64 %tmp_68
  store i8 0, i8* %ctx_data_addr_1, align 1
  br label %.preheader3

.preheader:                                       ; preds = %.preheader.preheader, %2
  %i_1_in = phi i32 [ %i_1, %2 ], [ %ctx_datalen_read_2, %.preheader.preheader ]
  %i_1 = add i32 %i_1_in, 1
  %tmp_73 = call i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32 %i_1, i32 6, i32 31)
  %icmp = icmp eq i26 %tmp_73, 0
  br i1 %icmp, label %2, label %3

; <label>:2                                       ; preds = %.preheader
  %tmp_69 = zext i32 %i_1 to i64
  %ctx_data_addr_2 = getelementptr [64 x i8]* %ctx_data, i64 0, i64 %tmp_69
  store i8 0, i8* %ctx_data_addr_2, align 1
  br label %.preheader

; <label>:3                                       ; preds = %.preheader
  %call_ret1 = call fastcc { i32, i32, i32, i32, i32, i32, i32, i32 } @sha256_transform(i32 %p_read16, i32 %p_read27, i32 %p_read48, i32 %p_read_9, i32 %p_read_8, i32 %p_read_7, i32 %p_read_6, i32 %p_read, [64 x i8]* %ctx_data)
  %ctx_state_0_ret4 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 0
  %ctx_state_1_ret5 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 1
  %ctx_state_2_ret6 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 2
  %ctx_state_3_ret7 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 3
  %ctx_state_4_ret8 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 4
  %ctx_state_5_ret9 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 5
  %ctx_state_6_ret1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 6
  %ctx_state_7_ret1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 7
  br label %4

; <label>:4                                       ; preds = %5, %3
  %i_2 = phi i6 [ 0, %3 ], [ %i_5, %5 ]
  %tmp_70 = icmp eq i6 %i_2, -8
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 56, i64 56, i64 56)
  %i_5 = add i6 %i_2, 1
  br i1 %tmp_70, label %.loopexit.loopexit, label %5

; <label>:5                                       ; preds = %4
  %tmp_71 = zext i6 %i_2 to i64
  %ctx_data_addr_6 = getelementptr [64 x i8]* %ctx_data, i64 0, i64 %tmp_71
  store i8 0, i8* %ctx_data_addr_6, align 1
  br label %4

.loopexit.loopexit:                               ; preds = %4
  br label %.loopexit

.loopexit.loopexit15:                             ; preds = %.preheader3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit15, %.loopexit.loopexit
  %ctx_state = phi i32 [ %ctx_state_0_ret4, %.loopexit.loopexit ], [ %p_read16, %.loopexit.loopexit15 ]
  %ctx_state_1 = phi i32 [ %ctx_state_1_ret5, %.loopexit.loopexit ], [ %p_read27, %.loopexit.loopexit15 ]
  %ctx_state_2 = phi i32 [ %ctx_state_2_ret6, %.loopexit.loopexit ], [ %p_read48, %.loopexit.loopexit15 ]
  %ctx_state_3 = phi i32 [ %ctx_state_3_ret7, %.loopexit.loopexit ], [ %p_read_9, %.loopexit.loopexit15 ]
  %ctx_state_4 = phi i32 [ %ctx_state_4_ret8, %.loopexit.loopexit ], [ %p_read_8, %.loopexit.loopexit15 ]
  %ctx_state_5 = phi i32 [ %ctx_state_5_ret9, %.loopexit.loopexit ], [ %p_read_7, %.loopexit.loopexit15 ]
  %ctx_state_6 = phi i32 [ %ctx_state_6_ret1, %.loopexit.loopexit ], [ %p_read_6, %.loopexit.loopexit15 ]
  %ctx_state_7 = phi i32 [ %ctx_state_7_ret1, %.loopexit.loopexit ], [ %p_read, %.loopexit.loopexit15 ]
  %tmp_81 = shl i32 %ctx_datalen_read_2, 3
  %tmp_72 = xor i32 %tmp_81, -1
  %tmp_74 = icmp ugt i32 %ctx_bitlen_0_read_1, %tmp_72
  %tmp_75 = add i32 1, %p_read35
  %tmp_102_read3 = select i1 %tmp_74, i32 %tmp_75, i32 %p_read35
  %tmp_89 = trunc i32 %ctx_datalen_read_2 to i5
  %tmp_16 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_89, i3 0)
  %tmp_92 = trunc i32 %ctx_bitlen_0_read_1 to i8
  %tmp_96 = trunc i32 %ctx_datalen_read_2 to i13
  %tmp_14 = call i16 @_ssdm_op_BitConcatenate.i16.i13.i3(i13 %tmp_96, i3 0)
  %tmp_100 = trunc i32 %ctx_bitlen_0_read_1 to i16
  %tmp_103 = trunc i32 %ctx_datalen_read_2 to i21
  %tmp_18 = call i24 @_ssdm_op_BitConcatenate.i24.i21.i3(i21 %tmp_103, i3 0)
  %tmp_107 = trunc i32 %ctx_bitlen_0_read_1 to i24
  %ctx_bitlen = add i32 %ctx_bitlen_0_read_1, %tmp_81
  %ctx_bitlen_cast3 = add i24 %tmp_18, %tmp_107
  %ctx_bitlen_cast = add i16 %tmp_14, %tmp_100
  %tmp_76 = add i8 %tmp_92, %tmp_16
  %ctx_data_addr_3 = getelementptr [64 x i8]* %ctx_data, i64 0, i64 63
  store i8 %tmp_76, i8* %ctx_data_addr_3, align 1
  %tmp_77 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %ctx_bitlen_cast, i32 8, i32 15)
  %ctx_data_addr_4 = getelementptr [64 x i8]* %ctx_data, i64 0, i64 62
  store i8 %tmp_77, i8* %ctx_data_addr_4, align 1
  %tmp_78 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %ctx_bitlen_cast3, i32 16, i32 23)
  %ctx_data_addr_5 = getelementptr [64 x i8]* %ctx_data, i64 0, i64 61
  store i8 %tmp_78, i8* %ctx_data_addr_5, align 1
  %tmp_79 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %ctx_bitlen, i32 24, i32 31)
  %ctx_data_addr_7 = getelementptr [64 x i8]* %ctx_data, i64 0, i64 60
  store i8 %tmp_79, i8* %ctx_data_addr_7, align 1
  %tmp_111 = trunc i32 %tmp_102_read3 to i8
  %ctx_data_addr_8 = getelementptr [64 x i8]* %ctx_data, i64 0, i64 59
  store i8 %tmp_111, i8* %ctx_data_addr_8, align 1
  %tmp_80 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_102_read3, i32 8, i32 15)
  %ctx_data_addr_9 = getelementptr [64 x i8]* %ctx_data, i64 0, i64 58
  store i8 %tmp_80, i8* %ctx_data_addr_9, align 1
  %tmp_82 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_102_read3, i32 16, i32 23)
  %ctx_data_addr_10 = getelementptr [64 x i8]* %ctx_data, i64 0, i64 57
  store i8 %tmp_82, i8* %ctx_data_addr_10, align 1
  %tmp_83 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_102_read3, i32 24, i32 31)
  %ctx_data_addr_11 = getelementptr [64 x i8]* %ctx_data, i64 0, i64 56
  store i8 %tmp_83, i8* %ctx_data_addr_11, align 1
  %call_ret = call fastcc { i32, i32, i32, i32, i32, i32, i32, i32 } @sha256_transform(i32 %ctx_state, i32 %ctx_state_1, i32 %ctx_state_2, i32 %ctx_state_3, i32 %ctx_state_4, i32 %ctx_state_5, i32 %ctx_state_6, i32 %ctx_state_7, [64 x i8]* %ctx_data)
  %ctx_state_0_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 0
  %ctx_state_1_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 1
  %ctx_state_2_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 2
  %ctx_state_3_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 3
  %ctx_state_4_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 4
  %ctx_state_5_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 5
  %ctx_state_6_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 6
  %ctx_state_7_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 7
  br label %6

; <label>:6                                       ; preds = %7, %.loopexit
  %i_3 = phi i3 [ 0, %.loopexit ], [ %i_6, %7 ]
  %i_3_cast1 = zext i3 %i_3 to i5
  %tmp_84 = icmp eq i3 %i_3, -4
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_6 = add i3 %i_3, 1
  br i1 %tmp_84, label %8, label %7

; <label>:7                                       ; preds = %6
  %tmp_114 = trunc i3 %i_3 to i2
  %tmp_85 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_114, i3 0)
  %tmp_86 = sub i5 -8, %tmp_85
  %tmp_109_cast = zext i5 %tmp_86 to i32
  %tmp_87 = lshr i32 %ctx_state_0_ret, %tmp_109_cast
  %tmp_116 = trunc i32 %tmp_87 to i8
  %tmp_88 = zext i3 %i_3 to i64
  %hash_addr = getelementptr [64 x i8]* %hash, i64 0, i64 %tmp_88
  store i8 %tmp_116, i8* %hash_addr, align 1
  %tmp_90 = lshr i32 %ctx_state_1_ret, %tmp_109_cast
  %tmp_117 = trunc i32 %tmp_90 to i8
  %tmp_91 = xor i3 %i_3, -4
  %tmp_93 = zext i3 %tmp_91 to i64
  %hash_addr_1 = getelementptr [64 x i8]* %hash, i64 0, i64 %tmp_93
  store i8 %tmp_117, i8* %hash_addr_1, align 1
  %tmp_94 = lshr i32 %ctx_state_2_ret, %tmp_109_cast
  %tmp_118 = trunc i32 %tmp_94 to i8
  %tmp_95 = call i4 @_ssdm_op_BitConcatenate.i4.i1.i3(i1 true, i3 %i_3)
  %tmp_97 = zext i4 %tmp_95 to i64
  %hash_addr_2 = getelementptr [64 x i8]* %hash, i64 0, i64 %tmp_97
  store i8 %tmp_118, i8* %hash_addr_2, align 1
  %tmp_98 = lshr i32 %ctx_state_3_ret, %tmp_109_cast
  %tmp_119 = trunc i32 %tmp_98 to i8
  %tmp_123_cast8 = sext i3 %tmp_91 to i4
  %tmp_99 = zext i4 %tmp_123_cast8 to i64
  %hash_addr_3 = getelementptr [64 x i8]* %hash, i64 0, i64 %tmp_99
  store i8 %tmp_119, i8* %hash_addr_3, align 1
  %tmp_101 = lshr i32 %ctx_state_4_ret, %tmp_109_cast
  %tmp_120 = trunc i32 %tmp_101 to i8
  %tmp_102 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 -2, i3 %i_3)
  %tmp_104 = zext i5 %tmp_102 to i64
  %hash_addr_4 = getelementptr [64 x i8]* %hash, i64 0, i64 %tmp_104
  store i8 %tmp_120, i8* %hash_addr_4, align 1
  %tmp_105 = lshr i32 %ctx_state_5_ret, %tmp_109_cast
  %tmp_121 = trunc i32 %tmp_105 to i8
  %tmp_106 = add i5 -12, %i_3_cast1
  %tmp_108 = zext i5 %tmp_106 to i64
  %hash_addr_5 = getelementptr [64 x i8]* %hash, i64 0, i64 %tmp_108
  store i8 %tmp_121, i8* %hash_addr_5, align 1
  %tmp_109 = lshr i32 %ctx_state_6_ret, %tmp_109_cast
  %tmp_122 = trunc i32 %tmp_109 to i8
  %tmp_135_cast7 = sext i4 %tmp_95 to i5
  %tmp_110 = zext i5 %tmp_135_cast7 to i64
  %hash_addr_6 = getelementptr [64 x i8]* %hash, i64 0, i64 %tmp_110
  store i8 %tmp_122, i8* %hash_addr_6, align 1
  %tmp_112 = lshr i32 %ctx_state_7_ret, %tmp_109_cast
  %tmp_123 = trunc i32 %tmp_112 to i8
  %tmp_139_cast6 = sext i3 %tmp_91 to i5
  %tmp_113 = zext i5 %tmp_139_cast6 to i64
  %hash_addr_7 = getelementptr [64 x i8]* %hash, i64 0, i64 %tmp_113
  store i8 %tmp_123, i8* %hash_addr_7, align 1
  br label %6

; <label>:8                                       ; preds = %6
  ret void
}

define void @sha256([256 x i8]* %data, i32 %base_offset, i32 %bytes, [32 x i8]* %digest) nounwind uwtable {
  %n = alloca i32
  %sha256ctx_datalen = alloca i32
  %sha256ctx_bitlen_0_2 = alloca i32
  %sha256ctx_bitlen_1_2 = alloca i32
  %sha256ctx_state_0_2 = alloca i32
  %sha256ctx_state_1_2 = alloca i32
  %sha256ctx_state_2_2 = alloca i32
  %sha256ctx_state_3_2 = alloca i32
  %sha256ctx_state_4_2 = alloca i32
  %sha256ctx_state_5_2 = alloca i32
  %sha256ctx_state_6_2 = alloca i32
  %sha256ctx_state_7_2 = alloca i32
  %seg_offset = alloca i32
  call void (...)* @_ssdm_op_SpecBitsMap([256 x i8]* %data) nounwind, !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %base_offset) nounwind, !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %bytes) nounwind, !map !39
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %digest) nounwind, !map !43
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @sha256_str) nounwind
  %bytes_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %bytes) nounwind
  %base_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %base_offset) nounwind
  %seg_buf = alloca [64 x i8], align 16
  %sha256ctx_data = alloca [64 x i8], align 1
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %data, [1 x i8]* @p_str3, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str3, i32 -1, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface([256 x i8]* %data, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty_12 = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %digest, [1 x i8]* @p_str4, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str4, i32 -1, [1 x i8]* @p_str4, [1 x i8]* @p_str4, [1 x i8]* @p_str4, [1 x i8]* @p_str4, [1 x i8]* @p_str4) nounwind
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %digest, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %base_offset, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %bytes, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %tmp = trunc i32 %base_offset_read to i10
  store i32 0, i32* %seg_offset
  store i32 1541459225, i32* %sha256ctx_state_7_2
  store i32 528734635, i32* %sha256ctx_state_6_2
  store i32 -1694144372, i32* %sha256ctx_state_5_2
  store i32 1359893119, i32* %sha256ctx_state_4_2
  store i32 -1521486534, i32* %sha256ctx_state_3_2
  store i32 1013904242, i32* %sha256ctx_state_2_2
  store i32 -1150833019, i32* %sha256ctx_state_1_2
  store i32 1779033703, i32* %sha256ctx_state_0_2
  store i32 0, i32* %sha256ctx_bitlen_1_2
  store i32 0, i32* %sha256ctx_bitlen_0_2
  store i32 0, i32* %sha256ctx_datalen
  store i32 %bytes_read, i32* %n
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %0
  %n_load = load i32* %n
  %tmp_s = icmp eq i32 %n_load, 0
  br i1 %tmp_s, label %6, label %1

; <label>:1                                       ; preds = %.backedge
  %seg_offset_load_1 = load i32* %seg_offset
  %tmp_124 = call i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32 %n_load, i32 6, i32 31)
  %icmp = icmp eq i26 %tmp_124, 0
  %tmp_125 = trunc i32 %seg_offset_load_1 to i10
  br i1 %icmp, label %.preheader.preheader, label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %1
  br label %.preheader6

.preheader.preheader:                             ; preds = %1
  br label %.preheader

.preheader6:                                      ; preds = %.preheader6.preheader, %2
  %i9 = phi i7 [ %i, %2 ], [ 0, %.preheader6.preheader ]
  %exitcond5 = icmp eq i7 %i9, -64
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %i = add i7 %i9, 1
  br i1 %exitcond5, label %3, label %2

; <label>:2                                       ; preds = %.preheader6
  %tmp_115 = zext i7 %i9 to i64
  %tmp_143_cast = zext i7 %i9 to i10
  %tmp1 = add i10 %tmp_125, %tmp_143_cast
  %sum = add i10 %tmp1, %tmp
  %sum_cast = zext i10 %sum to i64
  %data_addr = getelementptr [256 x i8]* %data, i64 0, i64 %sum_cast
  %data_load = load i8* %data_addr, align 1
  %seg_buf_addr_2 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 %tmp_115
  store i8 %data_load, i8* %seg_buf_addr_2, align 1
  br label %.preheader6

; <label>:3                                       ; preds = %.preheader6
  %sha256ctx_datalen_lo = load i32* %sha256ctx_datalen
  %sha256ctx_bitlen_0_s = load i32* %sha256ctx_bitlen_0_2
  %sha256ctx_bitlen_1_s = load i32* %sha256ctx_bitlen_1_2
  %sha256ctx_state_0_2_1 = load i32* %sha256ctx_state_0_2
  %sha256ctx_state_1_2_1 = load i32* %sha256ctx_state_1_2
  %sha256ctx_state_2_2_1 = load i32* %sha256ctx_state_2_2
  %sha256ctx_state_3_2_1 = load i32* %sha256ctx_state_3_2
  %sha256ctx_state_4_2_1 = load i32* %sha256ctx_state_4_2
  %sha256ctx_state_5_2_1 = load i32* %sha256ctx_state_5_2
  %sha256ctx_state_6_2_1 = load i32* %sha256ctx_state_6_2
  %sha256ctx_state_7_2_1 = load i32* %sha256ctx_state_7_2
  %seg_offset_load = load i32* %seg_offset
  %n_1 = add i32 %n_load, -64
  %seg_offset_1 = add i32 %seg_offset_load, 64
  %call_ret = call fastcc { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } @sha256_update([64 x i8]* %sha256ctx_data, i32 %sha256ctx_datalen_lo, i32 %sha256ctx_bitlen_0_s, i32 %sha256ctx_bitlen_1_s, i32 %sha256ctx_state_0_2_1, i32 %sha256ctx_state_1_2_1, i32 %sha256ctx_state_2_2_1, i32 %sha256ctx_state_3_2_1, i32 %sha256ctx_state_4_2_1, i32 %sha256ctx_state_5_2_1, i32 %sha256ctx_state_6_2_1, i32 %sha256ctx_state_7_2_1, [64 x i8]* %seg_buf, i32 64) nounwind
  %sha256ctx_datalen_1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 0
  %sha256ctx_bitlen_0 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 1
  %sha256ctx_bitlen_1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 2
  %sha256ctx_state_0 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 3
  %sha256ctx_state_1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 4
  %sha256ctx_state_2 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 5
  %sha256ctx_state_3 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 6
  %sha256ctx_state_4 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 7
  %sha256ctx_state_5 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 8
  %sha256ctx_state_6 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 9
  %sha256ctx_state_7 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 10
  store i32 %seg_offset_1, i32* %seg_offset
  store i32 %sha256ctx_state_7, i32* %sha256ctx_state_7_2
  store i32 %sha256ctx_state_6, i32* %sha256ctx_state_6_2
  store i32 %sha256ctx_state_5, i32* %sha256ctx_state_5_2
  store i32 %sha256ctx_state_4, i32* %sha256ctx_state_4_2
  store i32 %sha256ctx_state_3, i32* %sha256ctx_state_3_2
  store i32 %sha256ctx_state_2, i32* %sha256ctx_state_2_2
  store i32 %sha256ctx_state_1, i32* %sha256ctx_state_1_2
  store i32 %sha256ctx_state_0, i32* %sha256ctx_state_0_2
  store i32 %sha256ctx_bitlen_1, i32* %sha256ctx_bitlen_1_2
  store i32 %sha256ctx_bitlen_0, i32* %sha256ctx_bitlen_0_2
  store i32 %sha256ctx_datalen_1, i32* %sha256ctx_datalen
  store i32 %n_1, i32* %n
  br label %.backedge.backedge

.preheader:                                       ; preds = %.preheader.preheader, %4
  %i_1 = phi i6 [ %i_7, %4 ], [ 0, %.preheader.preheader ]
  %i_1_cast = zext i6 %i_1 to i32
  %exitcond4 = icmp eq i32 %i_1_cast, %n_load
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 63, i64 0) nounwind
  %i_7 = add i6 %i_1, 1
  br i1 %exitcond4, label %5, label %4

; <label>:4                                       ; preds = %.preheader
  %tmp_114 = zext i6 %i_1 to i64
  %tmp_144_cast = zext i6 %i_1 to i10
  %tmp2 = add i10 %tmp_125, %tmp_144_cast
  %sum2 = add i10 %tmp2, %tmp
  %sum2_cast = zext i10 %sum2 to i64
  %data_addr_4 = getelementptr [256 x i8]* %data, i64 0, i64 %sum2_cast
  %data_load_4 = load i8* %data_addr_4, align 1
  %seg_buf_addr_3 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 %tmp_114
  store i8 %data_load_4, i8* %seg_buf_addr_3, align 1
  br label %.preheader

; <label>:5                                       ; preds = %.preheader
  %sha256ctx_datalen_lo_1 = load i32* %sha256ctx_datalen
  %sha256ctx_bitlen_0_1 = load i32* %sha256ctx_bitlen_0_2
  %sha256ctx_bitlen_1_1 = load i32* %sha256ctx_bitlen_1_2
  %sha256ctx_state_0_2_2 = load i32* %sha256ctx_state_0_2
  %sha256ctx_state_1_2_2 = load i32* %sha256ctx_state_1_2
  %sha256ctx_state_2_2_2 = load i32* %sha256ctx_state_2_2
  %sha256ctx_state_3_2_2 = load i32* %sha256ctx_state_3_2
  %sha256ctx_state_4_2_2 = load i32* %sha256ctx_state_4_2
  %sha256ctx_state_5_2_2 = load i32* %sha256ctx_state_5_2
  %sha256ctx_state_6_2_2 = load i32* %sha256ctx_state_6_2
  %sha256ctx_state_7_2_2 = load i32* %sha256ctx_state_7_2
  %call_ret1 = call fastcc { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } @sha256_update([64 x i8]* %sha256ctx_data, i32 %sha256ctx_datalen_lo_1, i32 %sha256ctx_bitlen_0_1, i32 %sha256ctx_bitlen_1_1, i32 %sha256ctx_state_0_2_2, i32 %sha256ctx_state_1_2_2, i32 %sha256ctx_state_2_2_2, i32 %sha256ctx_state_3_2_2, i32 %sha256ctx_state_4_2_2, i32 %sha256ctx_state_5_2_2, i32 %sha256ctx_state_6_2_2, i32 %sha256ctx_state_7_2_2, [64 x i8]* %seg_buf, i32 %n_load) nounwind
  %sha256ctx_datalen_2 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 0
  %sha256ctx_bitlen_0_1_15 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 1
  %sha256ctx_bitlen_1_1_16 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 2
  %sha256ctx_state_0_1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 3
  %sha256ctx_state_1_1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 4
  %sha256ctx_state_2_1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 5
  %sha256ctx_state_3_1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 6
  %sha256ctx_state_4_1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 7
  %sha256ctx_state_5_1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 8
  %sha256ctx_state_6_1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 9
  %sha256ctx_state_7_1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 10
  store i32 %sha256ctx_state_7_1, i32* %sha256ctx_state_7_2
  store i32 %sha256ctx_state_6_1, i32* %sha256ctx_state_6_2
  store i32 %sha256ctx_state_5_1, i32* %sha256ctx_state_5_2
  store i32 %sha256ctx_state_4_1, i32* %sha256ctx_state_4_2
  store i32 %sha256ctx_state_3_1, i32* %sha256ctx_state_3_2
  store i32 %sha256ctx_state_2_1, i32* %sha256ctx_state_2_2
  store i32 %sha256ctx_state_1_1, i32* %sha256ctx_state_1_2
  store i32 %sha256ctx_state_0_1, i32* %sha256ctx_state_0_2
  store i32 %sha256ctx_bitlen_1_1_16, i32* %sha256ctx_bitlen_1_2
  store i32 %sha256ctx_bitlen_0_1_15, i32* %sha256ctx_bitlen_0_2
  store i32 %sha256ctx_datalen_2, i32* %sha256ctx_datalen
  store i32 0, i32* %n
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %5, %3
  br label %.backedge

; <label>:6                                       ; preds = %.backedge
  %sha256ctx_datalen_lo_2 = load i32* %sha256ctx_datalen
  %sha256ctx_bitlen_0_2_17 = load i32* %sha256ctx_bitlen_0_2
  %sha256ctx_bitlen_1_2_18 = load i32* %sha256ctx_bitlen_1_2
  %sha256ctx_state_0_2_3 = load i32* %sha256ctx_state_0_2
  %sha256ctx_state_1_2_3 = load i32* %sha256ctx_state_1_2
  %sha256ctx_state_2_2_3 = load i32* %sha256ctx_state_2_2
  %sha256ctx_state_3_2_3 = load i32* %sha256ctx_state_3_2
  %sha256ctx_state_4_2_3 = load i32* %sha256ctx_state_4_2
  %sha256ctx_state_5_2_3 = load i32* %sha256ctx_state_5_2
  %sha256ctx_state_6_2_3 = load i32* %sha256ctx_state_6_2
  %sha256ctx_state_7_2_3 = load i32* %sha256ctx_state_7_2
  call fastcc void @sha256_final([64 x i8]* %sha256ctx_data, i32 %sha256ctx_datalen_lo_2, i32 %sha256ctx_bitlen_0_2_17, i32 %sha256ctx_bitlen_1_2_18, i32 %sha256ctx_state_0_2_3, i32 %sha256ctx_state_1_2_3, i32 %sha256ctx_state_2_2_3, i32 %sha256ctx_state_3_2_3, i32 %sha256ctx_state_4_2_3, i32 %sha256ctx_state_5_2_3, i32 %sha256ctx_state_6_2_3, i32 %sha256ctx_state_7_2_3, [64 x i8]* %seg_buf) nounwind
  %seg_buf_addr = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 0
  %seg_buf_load = load i8* %seg_buf_addr, align 16
  %digest_addr = getelementptr [32 x i8]* %digest, i64 0, i64 0
  store i8 %seg_buf_load, i8* %digest_addr, align 1
  %seg_buf_addr_1 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 1
  %seg_buf_load_1 = load i8* %seg_buf_addr_1, align 1
  %digest_addr_1 = getelementptr [32 x i8]* %digest, i64 0, i64 1
  store i8 %seg_buf_load_1, i8* %digest_addr_1, align 1
  %seg_buf_addr_4 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 2
  %seg_buf_load_2 = load i8* %seg_buf_addr_4, align 2
  %digest_addr_2 = getelementptr [32 x i8]* %digest, i64 0, i64 2
  store i8 %seg_buf_load_2, i8* %digest_addr_2, align 1
  %seg_buf_addr_5 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 3
  %seg_buf_load_3 = load i8* %seg_buf_addr_5, align 1
  %digest_addr_3 = getelementptr [32 x i8]* %digest, i64 0, i64 3
  store i8 %seg_buf_load_3, i8* %digest_addr_3, align 1
  %seg_buf_addr_6 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 4
  %seg_buf_load_4 = load i8* %seg_buf_addr_6, align 4
  %digest_addr_4 = getelementptr [32 x i8]* %digest, i64 0, i64 4
  store i8 %seg_buf_load_4, i8* %digest_addr_4, align 1
  %seg_buf_addr_7 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 5
  %seg_buf_load_5 = load i8* %seg_buf_addr_7, align 1
  %digest_addr_5 = getelementptr [32 x i8]* %digest, i64 0, i64 5
  store i8 %seg_buf_load_5, i8* %digest_addr_5, align 1
  %seg_buf_addr_8 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 6
  %seg_buf_load_6 = load i8* %seg_buf_addr_8, align 2
  %digest_addr_6 = getelementptr [32 x i8]* %digest, i64 0, i64 6
  store i8 %seg_buf_load_6, i8* %digest_addr_6, align 1
  %seg_buf_addr_9 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 7
  %seg_buf_load_7 = load i8* %seg_buf_addr_9, align 1
  %digest_addr_7 = getelementptr [32 x i8]* %digest, i64 0, i64 7
  store i8 %seg_buf_load_7, i8* %digest_addr_7, align 1
  %seg_buf_addr_10 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 8
  %seg_buf_load_8 = load i8* %seg_buf_addr_10, align 8
  %digest_addr_8 = getelementptr [32 x i8]* %digest, i64 0, i64 8
  store i8 %seg_buf_load_8, i8* %digest_addr_8, align 1
  %seg_buf_addr_11 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 9
  %seg_buf_load_9 = load i8* %seg_buf_addr_11, align 1
  %digest_addr_9 = getelementptr [32 x i8]* %digest, i64 0, i64 9
  store i8 %seg_buf_load_9, i8* %digest_addr_9, align 1
  %seg_buf_addr_12 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 10
  %seg_buf_load_10 = load i8* %seg_buf_addr_12, align 2
  %digest_addr_10 = getelementptr [32 x i8]* %digest, i64 0, i64 10
  store i8 %seg_buf_load_10, i8* %digest_addr_10, align 1
  %seg_buf_addr_13 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 11
  %seg_buf_load_11 = load i8* %seg_buf_addr_13, align 1
  %digest_addr_11 = getelementptr [32 x i8]* %digest, i64 0, i64 11
  store i8 %seg_buf_load_11, i8* %digest_addr_11, align 1
  %seg_buf_addr_14 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 12
  %seg_buf_load_12 = load i8* %seg_buf_addr_14, align 4
  %digest_addr_12 = getelementptr [32 x i8]* %digest, i64 0, i64 12
  store i8 %seg_buf_load_12, i8* %digest_addr_12, align 1
  %seg_buf_addr_15 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 13
  %seg_buf_load_13 = load i8* %seg_buf_addr_15, align 1
  %digest_addr_13 = getelementptr [32 x i8]* %digest, i64 0, i64 13
  store i8 %seg_buf_load_13, i8* %digest_addr_13, align 1
  %seg_buf_addr_16 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 14
  %seg_buf_load_14 = load i8* %seg_buf_addr_16, align 2
  %digest_addr_14 = getelementptr [32 x i8]* %digest, i64 0, i64 14
  store i8 %seg_buf_load_14, i8* %digest_addr_14, align 1
  %seg_buf_addr_17 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 15
  %seg_buf_load_15 = load i8* %seg_buf_addr_17, align 1
  %digest_addr_15 = getelementptr [32 x i8]* %digest, i64 0, i64 15
  store i8 %seg_buf_load_15, i8* %digest_addr_15, align 1
  %seg_buf_addr_18 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 16
  %seg_buf_load_16 = load i8* %seg_buf_addr_18, align 16
  %digest_addr_16 = getelementptr [32 x i8]* %digest, i64 0, i64 16
  store i8 %seg_buf_load_16, i8* %digest_addr_16, align 1
  %seg_buf_addr_19 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 17
  %seg_buf_load_17 = load i8* %seg_buf_addr_19, align 1
  %digest_addr_17 = getelementptr [32 x i8]* %digest, i64 0, i64 17
  store i8 %seg_buf_load_17, i8* %digest_addr_17, align 1
  %seg_buf_addr_20 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 18
  %seg_buf_load_18 = load i8* %seg_buf_addr_20, align 2
  %digest_addr_18 = getelementptr [32 x i8]* %digest, i64 0, i64 18
  store i8 %seg_buf_load_18, i8* %digest_addr_18, align 1
  %seg_buf_addr_21 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 19
  %seg_buf_load_19 = load i8* %seg_buf_addr_21, align 1
  %digest_addr_19 = getelementptr [32 x i8]* %digest, i64 0, i64 19
  store i8 %seg_buf_load_19, i8* %digest_addr_19, align 1
  %seg_buf_addr_22 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 20
  %seg_buf_load_20 = load i8* %seg_buf_addr_22, align 4
  %digest_addr_20 = getelementptr [32 x i8]* %digest, i64 0, i64 20
  store i8 %seg_buf_load_20, i8* %digest_addr_20, align 1
  %seg_buf_addr_23 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 21
  %seg_buf_load_21 = load i8* %seg_buf_addr_23, align 1
  %digest_addr_21 = getelementptr [32 x i8]* %digest, i64 0, i64 21
  store i8 %seg_buf_load_21, i8* %digest_addr_21, align 1
  %seg_buf_addr_24 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 22
  %seg_buf_load_22 = load i8* %seg_buf_addr_24, align 2
  %digest_addr_22 = getelementptr [32 x i8]* %digest, i64 0, i64 22
  store i8 %seg_buf_load_22, i8* %digest_addr_22, align 1
  %seg_buf_addr_25 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 23
  %seg_buf_load_23 = load i8* %seg_buf_addr_25, align 1
  %digest_addr_23 = getelementptr [32 x i8]* %digest, i64 0, i64 23
  store i8 %seg_buf_load_23, i8* %digest_addr_23, align 1
  %seg_buf_addr_26 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 24
  %seg_buf_load_24 = load i8* %seg_buf_addr_26, align 8
  %digest_addr_24 = getelementptr [32 x i8]* %digest, i64 0, i64 24
  store i8 %seg_buf_load_24, i8* %digest_addr_24, align 1
  %seg_buf_addr_27 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 25
  %seg_buf_load_25 = load i8* %seg_buf_addr_27, align 1
  %digest_addr_25 = getelementptr [32 x i8]* %digest, i64 0, i64 25
  store i8 %seg_buf_load_25, i8* %digest_addr_25, align 1
  %seg_buf_addr_28 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 26
  %seg_buf_load_26 = load i8* %seg_buf_addr_28, align 2
  %digest_addr_26 = getelementptr [32 x i8]* %digest, i64 0, i64 26
  store i8 %seg_buf_load_26, i8* %digest_addr_26, align 1
  %seg_buf_addr_29 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 27
  %seg_buf_load_27 = load i8* %seg_buf_addr_29, align 1
  %digest_addr_27 = getelementptr [32 x i8]* %digest, i64 0, i64 27
  store i8 %seg_buf_load_27, i8* %digest_addr_27, align 1
  %seg_buf_addr_30 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 28
  %seg_buf_load_28 = load i8* %seg_buf_addr_30, align 4
  %digest_addr_28 = getelementptr [32 x i8]* %digest, i64 0, i64 28
  store i8 %seg_buf_load_28, i8* %digest_addr_28, align 1
  %seg_buf_addr_31 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 29
  %seg_buf_load_29 = load i8* %seg_buf_addr_31, align 1
  %digest_addr_29 = getelementptr [32 x i8]* %digest, i64 0, i64 29
  store i8 %seg_buf_load_29, i8* %digest_addr_29, align 1
  %seg_buf_addr_32 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 30
  %seg_buf_load_30 = load i8* %seg_buf_addr_32, align 2
  %digest_addr_30 = getelementptr [32 x i8]* %digest, i64 0, i64 30
  store i8 %seg_buf_load_30, i8* %digest_addr_30, align 1
  %seg_buf_addr_33 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 31
  %seg_buf_load_31 = load i8* %seg_buf_addr_33, align 1
  %digest_addr_31 = getelementptr [32 x i8]* %digest, i64 0, i64 31
  store i8 %seg_buf_load_31, i8* %digest_addr_31, align 1
  ret void
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i24 @llvm.part.select.i24(i24, i32, i32) nounwind readnone

declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecMemCore(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_19 = trunc i32 %empty to i8
  ret i8 %empty_19
}

define weak i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.select.i24(i24 %0, i32 %1, i32 %2)
  %empty_20 = trunc i24 %empty to i8
  ret i8 %empty_20
}

define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2)
  %empty_21 = trunc i16 %empty to i8
  ret i8 %empty_21
}

define weak i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_22 = trunc i32 %empty to i7
  ret i7 %empty_22
}

declare i6 @_ssdm_op_PartSelect.i6.i7.i32.i32(i7, i32, i32) nounwind readnone

declare i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i5 @_ssdm_op_PartSelect.i5.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_23 = trunc i32 %empty to i30
  ret i30 %empty_23
}

define weak i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_24 = trunc i32 %empty to i29
  ret i29 %empty_24
}

define weak i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_25 = trunc i32 %empty to i26
  ret i26 %empty_25
}

define weak i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_26 = trunc i32 %empty to i25
  ret i25 %empty_26
}

declare i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_27 = trunc i32 %empty to i22
  ret i22 %empty_27
}

define weak i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_28 = trunc i32 %empty to i21
  ret i21 %empty_28
}

declare i2 @_ssdm_op_PartSelect.i2.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

define weak i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_29 = trunc i32 %empty to i19
  ret i19 %empty_29
}

declare i18 @_ssdm_op_PartSelect.i18.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i17 @_ssdm_op_PartSelect.i17.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i15 @_ssdm_op_PartSelect.i15.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_30 = trunc i32 %empty to i15
  ret i15 %empty_30
}

define weak i14 @_ssdm_op_PartSelect.i14.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_31 = trunc i32 %empty to i14
  ret i14 %empty_31
}

define weak i13 @_ssdm_op_PartSelect.i13.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_32 = trunc i32 %empty to i13
  ret i13 %empty_32
}

declare i11 @_ssdm_op_PartSelect.i11.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i10 @_ssdm_op_PartSelect.i10.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_33 = trunc i32 %empty to i10
  ret i10 %empty_33
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5, i3) nounwind readnone {
entry:
  %empty = zext i5 %0 to i8
  %empty_34 = zext i3 %1 to i8
  %empty_35 = shl i8 %empty, 3
  %empty_36 = or i8 %empty_35, %empty_34
  ret i8 %empty_36
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2, i3) nounwind readnone {
entry:
  %empty = zext i2 %0 to i5
  %empty_37 = zext i3 %1 to i5
  %empty_38 = shl i5 %empty, 3
  %empty_39 = or i5 %empty_38, %empty_37
  ret i5 %empty_39
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i1.i3(i1, i3) nounwind readnone {
entry:
  %empty = zext i1 %0 to i4
  %empty_40 = zext i3 %1 to i4
  %empty_41 = shl i4 %empty, 3
  %empty_42 = or i4 %empty_41, %empty_40
  ret i4 %empty_42
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16
  %empty_43 = zext i8 %3 to i16
  %empty_44 = shl i16 %empty, 8
  %empty_45 = or i16 %empty_44, %empty_43
  %empty_46 = zext i8 %1 to i24
  %empty_47 = zext i16 %empty_45 to i24
  %empty_48 = shl i24 %empty_46, 16
  %empty_49 = or i24 %empty_48, %empty_47
  %empty_50 = zext i8 %0 to i32
  %empty_51 = zext i24 %empty_49 to i32
  %empty_52 = shl i32 %empty_50, 24
  %empty_53 = or i32 %empty_52, %empty_51
  ret i32 %empty_53
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i7.i25(i7, i25) nounwind readnone {
entry:
  %empty = zext i7 %0 to i32
  %empty_54 = zext i25 %1 to i32
  %empty_55 = shl i32 %empty, 25
  %empty_56 = or i32 %empty_55, %empty_54
  ret i32 %empty_56
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i6.i26(i6, i26) nounwind readnone {
entry:
  %empty = zext i6 %0 to i32
  %empty_57 = zext i26 %1 to i32
  %empty_58 = shl i32 %empty, 26
  %empty_59 = or i32 %empty_58, %empty_57
  ret i32 %empty_59
}

declare i32 @_ssdm_op_BitConcatenate.i32.i29.i3(i29, i3) nounwind readnone

define weak i32 @_ssdm_op_BitConcatenate.i32.i25.i7(i25, i7) nounwind readnone {
entry:
  %empty = zext i25 %0 to i32
  %empty_60 = zext i7 %1 to i32
  %empty_61 = shl i32 %empty, 7
  %empty_62 = or i32 %empty_61, %empty_60
  ret i32 %empty_62
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i22.i10(i22, i10) nounwind readnone {
entry:
  %empty = zext i22 %0 to i32
  %empty_63 = zext i10 %1 to i32
  %empty_64 = shl i32 %empty, 10
  %empty_65 = or i32 %empty_64, %empty_63
  ret i32 %empty_65
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i2.i30(i2, i30) nounwind readnone {
entry:
  %empty = zext i2 %0 to i32
  %empty_66 = zext i30 %1 to i32
  %empty_67 = shl i32 %empty, 30
  %empty_68 = or i32 %empty_67, %empty_66
  ret i32 %empty_68
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i19.i13(i19, i13) nounwind readnone {
entry:
  %empty = zext i19 %0 to i32
  %empty_69 = zext i13 %1 to i32
  %empty_70 = shl i32 %empty, 13
  %empty_71 = or i32 %empty_70, %empty_69
  ret i32 %empty_71
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i18.i14(i18, i14) nounwind readnone {
entry:
  %empty = zext i18 %0 to i32
  %empty_72 = zext i14 %1 to i32
  %empty_73 = shl i32 %empty, 14
  %empty_74 = or i32 %empty_73, %empty_72
  ret i32 %empty_74
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i17.i15(i17, i15) nounwind readnone {
entry:
  %empty = zext i17 %0 to i32
  %empty_75 = zext i15 %1 to i32
  %empty_76 = shl i32 %empty, 15
  %empty_77 = or i32 %empty_76, %empty_75
  ret i32 %empty_77
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i13.i19(i13, i19) nounwind readnone {
entry:
  %empty = zext i13 %0 to i32
  %empty_78 = zext i19 %1 to i32
  %empty_79 = shl i32 %empty, 19
  %empty_80 = or i32 %empty_79, %empty_78
  ret i32 %empty_80
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i11.i21(i11, i21) nounwind readnone {
entry:
  %empty = zext i11 %0 to i32
  %empty_81 = zext i21 %1 to i32
  %empty_82 = shl i32 %empty, 21
  %empty_83 = or i32 %empty_82, %empty_81
  ret i32 %empty_83
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i21.i3(i21, i3) nounwind readnone {
entry:
  %empty = zext i21 %0 to i24
  %empty_84 = zext i3 %1 to i24
  %empty_85 = shl i24 %empty, 3
  %empty_86 = or i24 %empty_85, %empty_84
  ret i24 %empty_86
}

define weak i16 @_ssdm_op_BitConcatenate.i16.i13.i3(i13, i3) nounwind readnone {
entry:
  %empty = zext i13 %0 to i16
  %empty_87 = zext i3 %1 to i16
  %empty_88 = shl i16 %empty, 3
  %empty_89 = or i16 %empty_88, %empty_87
  ret i16 %empty_89
}

!opencl.kernels = !{!0, !7, !13, !19, !25}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uint", metadata !"uint", metadata !"uchar*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"data", metadata !"base_offset", metadata !"bytes", metadata !"digest"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"SHA256_CTX*", metadata !"uchar*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"data"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"SHA256_CTX*"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"ctx"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!21 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"SHA256_CTX*", metadata !"uchar*", metadata !"uint"}
!23 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"data", metadata !"len"}
!25 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !26, metadata !6}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"hash"}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 7, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"data", metadata !31, metadata !"unsigned char", i32 0, i32 7}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 255, i32 1}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 31, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"base_offset", metadata !37, metadata !"unsigned int", i32 0, i32 31}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 0, i32 0}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 31, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"bytes", metadata !37, metadata !"unsigned int", i32 0, i32 31}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 7, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"digest", metadata !47, metadata !"unsigned char", i32 0, i32 7}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 31, i32 1}
