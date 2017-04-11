; ModuleID = '/home/brett/Thesis/Vivado_WS/sha256/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sha256_str = internal unnamed_addr constant [7 x i8] c"sha256\00" ; [#uses=1 type=[7 x i8]*]
@k = constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16 ; [#uses=1 type=[64 x i32]*]
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00" ; [#uses=2 type=[7 x i8]*]
@p_str4 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=7 type=[1 x i8]*]
@p_str3 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=7 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=30 type=[1 x i8]*]
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=5 type=[10 x i8]*]

; [#uses=2]
define internal fastcc { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } @sha256_update([64 x i8]* nocapture %ctx_data, i32 %ctx_datalen_read, i32 %p_read1, i32 %p_read2, i32 %p_read3, i32 %p_read4, i32 %p_read5, i32 %p_read6, i32 %p_read7, i32 %p_read8, i32 %p_read9, i32 %p_read10, [64 x i8]* nocapture %data, i32 %len) {
  %ctx_datalen = alloca i32                       ; [#uses=5 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %ctx_datalen}, metadata !27) ; [debug variable = ctx.datalen]
  %ctx_state_7 = alloca i32                       ; [#uses=4 type=i32*]
  %ctx_state_6 = alloca i32                       ; [#uses=4 type=i32*]
  %ctx_state_5 = alloca i32                       ; [#uses=4 type=i32*]
  %ctx_state_4 = alloca i32                       ; [#uses=4 type=i32*]
  %ctx_state_3 = alloca i32                       ; [#uses=4 type=i32*]
  %ctx_state_2 = alloca i32                       ; [#uses=4 type=i32*]
  %ctx_state_1 = alloca i32                       ; [#uses=4 type=i32*]
  %ctx_state = alloca i32                         ; [#uses=4 type=i32*]
  %ctx_bitlen_1 = alloca i32                      ; [#uses=4 type=i32*]
  %ctx_bitlen = alloca i32                        ; [#uses=4 type=i32*]
  %len_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %len) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %len_read}, i64 0, metadata !59), !dbg !60 ; [debug line = 86:105] [debug variable = len]
  %p_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read10) ; [#uses=1 type=i32]
  %p_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read9) ; [#uses=1 type=i32]
  %p_read_2 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read8) ; [#uses=1 type=i32]
  %p_read_3 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read7) ; [#uses=1 type=i32]
  %p_read_4 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read6) ; [#uses=1 type=i32]
  %p_read_5 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read5) ; [#uses=1 type=i32]
  %p_read45 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read4) ; [#uses=1 type=i32]
  %p_read34 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read3) ; [#uses=1 type=i32]
  %p_read23 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read2) ; [#uses=1 type=i32]
  %p_read12 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read1) ; [#uses=1 type=i32]
  %ctx_datalen_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_datalen_read) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %ctx_datalen_read_1}, i64 0, metadata !27), !dbg !61 ; [debug line = 86:32] [debug variable = ctx.datalen]
  call void @llvm.dbg.value(metadata !{[64 x i8]* %ctx_data}, i64 0, metadata !62), !dbg !61 ; [debug line = 86:32] [debug variable = ctx.data]
  call void @llvm.dbg.value(metadata !{i32 %ctx_datalen_read}, i64 0, metadata !27), !dbg !61 ; [debug line = 86:32] [debug variable = ctx.datalen]
  call void @llvm.dbg.value(metadata !{[64 x i8]* %data}, i64 0, metadata !66), !dbg !67 ; [debug line = 86:67] [debug variable = data]
  call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !59), !dbg !60 ; [debug line = 86:105] [debug variable = len]
  %tmp_7 = trunc i32 %len_read to i8, !dbg !68    ; [#uses=1 type=i8] [debug line = 90:9]
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
  store i32 %ctx_datalen_read_1, i32* %ctx_datalen, !dbg !61 ; [debug line = 86:32]
  br label %._crit_edge, !dbg !68                 ; [debug line = 90:9]

._crit_edge:                                      ; preds = %._crit_edge.backedge, %0
  %i = phi i7 [ 0, %0 ], [ %i_1, %._crit_edge.backedge ] ; [#uses=3 type=i7]
  %i_cast = zext i7 %i to i8, !dbg !68            ; [#uses=1 type=i8] [debug line = 90:9]
  %exitcond = icmp eq i8 %i_cast, %tmp_7, !dbg !68 ; [#uses=1 type=i1] [debug line = 90:9]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 64, i64 0) ; [#uses=0 type=i32]
  %i_1 = add i7 %i, 1, !dbg !71                   ; [#uses=1 type=i7] [debug line = 90:23]
  call void @llvm.dbg.value(metadata !{i7 %i_1}, i64 0, metadata !72), !dbg !71 ; [debug line = 90:23] [debug variable = i]
  br i1 %exitcond, label %2, label %1, !dbg !68   ; [debug line = 90:9]

; <label>:1                                       ; preds = %._crit_edge
  %ctx_datalen_load = load i32* %ctx_datalen, !dbg !73 ; [#uses=2 type=i32] [debug line = 92:7]
  %tmp = zext i7 %i to i64, !dbg !75              ; [#uses=1 type=i64] [debug line = 91:7]
  %data_addr = getelementptr [64 x i8]* %data, i64 0, i64 %tmp, !dbg !75 ; [#uses=1 type=i8*] [debug line = 91:7]
  %data_load = load i8* %data_addr, align 1, !dbg !75 ; [#uses=1 type=i8] [debug line = 91:7]
  %tmp_1 = zext i32 %ctx_datalen_load to i64, !dbg !75 ; [#uses=1 type=i64] [debug line = 91:7]
  %ctx_data_addr = getelementptr [64 x i8]* %ctx_data, i64 0, i64 %tmp_1, !dbg !75 ; [#uses=1 type=i8*] [debug line = 91:7]
  store i8 %data_load, i8* %ctx_data_addr, align 1, !dbg !75 ; [debug line = 91:7]
  %tmp_2 = add i32 %ctx_datalen_load, 1, !dbg !73 ; [#uses=2 type=i32] [debug line = 92:7]
  %tmp_3 = icmp eq i32 %tmp_2, 64, !dbg !76       ; [#uses=1 type=i1] [debug line = 93:7]
  br i1 %tmp_3, label %._crit_edge1, label %._crit_edge.backedge.pre, !dbg !76 ; [debug line = 93:7]

._crit_edge1:                                     ; preds = %1
  %ctx_state_7_load_1 = load i32* %ctx_state_7, !dbg !77 ; [#uses=1 type=i32] [debug line = 94:10]
  %ctx_state_6_load_1 = load i32* %ctx_state_6, !dbg !77 ; [#uses=1 type=i32] [debug line = 94:10]
  %ctx_state_5_load_1 = load i32* %ctx_state_5, !dbg !77 ; [#uses=1 type=i32] [debug line = 94:10]
  %ctx_state_4_load_1 = load i32* %ctx_state_4, !dbg !77 ; [#uses=1 type=i32] [debug line = 94:10]
  %ctx_state_3_load_1 = load i32* %ctx_state_3, !dbg !77 ; [#uses=1 type=i32] [debug line = 94:10]
  %ctx_state_2_load_1 = load i32* %ctx_state_2, !dbg !77 ; [#uses=1 type=i32] [debug line = 94:10]
  %ctx_state_1_load_1 = load i32* %ctx_state_1, !dbg !77 ; [#uses=1 type=i32] [debug line = 94:10]
  %ctx_state_load_1 = load i32* %ctx_state, !dbg !77 ; [#uses=1 type=i32] [debug line = 94:10]
  %ctx_bitlen_1_load = load i32* %ctx_bitlen_1, !dbg !79 ; [#uses=2 type=i32] [debug line = 95:51]
  %ctx_bitlen_load = load i32* %ctx_bitlen, !dbg !80 ; [#uses=2 type=i32] [debug line = 95:69]
  %call_ret = call fastcc { i32, i32, i32, i32, i32, i32, i32, i32 } @sha256_transform(i32 %ctx_state_load_1, i32 %ctx_state_1_load_1, i32 %ctx_state_2_load_1, i32 %ctx_state_3_load_1, i32 %ctx_state_4_load_1, i32 %ctx_state_5_load_1, i32 %ctx_state_6_load_1, i32 %ctx_state_7_load_1, [64 x i8]* %ctx_data), !dbg !77 ; [#uses=8 type={ i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 94:10]
  %ctx_state_0_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 0, !dbg !77 ; [#uses=1 type=i32] [debug line = 94:10]
  %ctx_state_1_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 1, !dbg !77 ; [#uses=1 type=i32] [debug line = 94:10]
  %ctx_state_2_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 2, !dbg !77 ; [#uses=1 type=i32] [debug line = 94:10]
  %ctx_state_3_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 3, !dbg !77 ; [#uses=1 type=i32] [debug line = 94:10]
  %ctx_state_4_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 4, !dbg !77 ; [#uses=1 type=i32] [debug line = 94:10]
  %ctx_state_5_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 5, !dbg !77 ; [#uses=1 type=i32] [debug line = 94:10]
  %ctx_state_6_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 6, !dbg !77 ; [#uses=1 type=i32] [debug line = 94:10]
  %ctx_state_7_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 7, !dbg !77 ; [#uses=1 type=i32] [debug line = 94:10]
  %tmp_4 = icmp ugt i32 %ctx_bitlen_load, -513, !dbg !81 ; [#uses=1 type=i1] [debug line = 95:10]
  %tmp_5 = add i32 %ctx_bitlen_1_load, 1, !dbg !79 ; [#uses=1 type=i32] [debug line = 95:51]
  %tmp_5_ctx_bitlen_1 = select i1 %tmp_4, i32 %tmp_5, i32 %ctx_bitlen_1_load, !dbg !81 ; [#uses=1 type=i32] [debug line = 95:10]
  %tmp_6 = add i32 %ctx_bitlen_load, 512, !dbg !80 ; [#uses=1 type=i32] [debug line = 95:69]
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
  br label %._crit_edge.backedge, !dbg !82        ; [debug line = 97:7]

._crit_edge.backedge.pre:                         ; preds = %1
  store i32 %tmp_2, i32* %ctx_datalen
  br label %._crit_edge.backedge

._crit_edge.backedge:                             ; preds = %._crit_edge.backedge.pre, %._crit_edge1
  br label %._crit_edge

; <label>:2                                       ; preds = %._crit_edge
  %ctx_datalen_load_1 = load i32* %ctx_datalen, !dbg !83 ; [#uses=1 type=i32] [debug line = 99:1]
  %ctx_state_7_load = load i32* %ctx_state_7, !dbg !83 ; [#uses=1 type=i32] [debug line = 99:1]
  %ctx_state_6_load = load i32* %ctx_state_6, !dbg !83 ; [#uses=1 type=i32] [debug line = 99:1]
  %ctx_state_5_load = load i32* %ctx_state_5, !dbg !83 ; [#uses=1 type=i32] [debug line = 99:1]
  %ctx_state_4_load = load i32* %ctx_state_4, !dbg !83 ; [#uses=1 type=i32] [debug line = 99:1]
  %ctx_state_3_load = load i32* %ctx_state_3, !dbg !83 ; [#uses=1 type=i32] [debug line = 99:1]
  %ctx_state_2_load = load i32* %ctx_state_2, !dbg !83 ; [#uses=1 type=i32] [debug line = 99:1]
  %ctx_state_1_load = load i32* %ctx_state_1, !dbg !83 ; [#uses=1 type=i32] [debug line = 99:1]
  %ctx_state_load = load i32* %ctx_state, !dbg !83 ; [#uses=1 type=i32] [debug line = 99:1]
  %ctx_bitlen_1_load_1 = load i32* %ctx_bitlen_1, !dbg !83 ; [#uses=1 type=i32] [debug line = 99:1]
  %ctx_bitlen_load_1 = load i32* %ctx_bitlen, !dbg !83 ; [#uses=1 type=i32] [debug line = 99:1]
  %mrv_s = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } undef, i32 %ctx_datalen_load_1, 0, !dbg !83 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 99:1]
  %mrv_1 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_s, i32 %ctx_bitlen_load_1, 1, !dbg !83 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 99:1]
  %mrv_2 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_1, i32 %ctx_bitlen_1_load_1, 2, !dbg !83 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 99:1]
  %mrv_3 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_2, i32 %ctx_state_load, 3, !dbg !83 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 99:1]
  %mrv_4 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_3, i32 %ctx_state_1_load, 4, !dbg !83 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 99:1]
  %mrv_5 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_4, i32 %ctx_state_2_load, 5, !dbg !83 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 99:1]
  %mrv_6 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_5, i32 %ctx_state_3_load, 6, !dbg !83 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 99:1]
  %mrv_7 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_6, i32 %ctx_state_4_load, 7, !dbg !83 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 99:1]
  %mrv_8 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_7, i32 %ctx_state_5_load, 8, !dbg !83 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 99:1]
  %mrv_9 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_8, i32 %ctx_state_6_load, 9, !dbg !83 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 99:1]
  %mrv_10 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_9, i32 %ctx_state_7_load, 10, !dbg !83 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 99:1]
  ret { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_10, !dbg !83 ; [debug line = 99:1]
}

; [#uses=3]
define internal fastcc { i32, i32, i32, i32, i32, i32, i32, i32 } @sha256_transform(i32 %ctx_state_0_read, i32 %ctx_state_1_read, i32 %ctx_state_2_read, i32 %ctx_state_3_read, i32 %ctx_state_4_read, i32 %ctx_state_5_read, i32 %ctx_state_6_read, i32 %ctx_state_7_read, [64 x i8]* nocapture %data) readonly {
  %ctx_state_7_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_state_7_read) ; [#uses=2 type=i32]
  %ctx_state_6_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_state_6_read) ; [#uses=2 type=i32]
  %ctx_state_5_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_state_5_read) ; [#uses=2 type=i32]
  %ctx_state_4_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_state_4_read) ; [#uses=2 type=i32]
  %ctx_state_3_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_state_3_read) ; [#uses=2 type=i32]
  %ctx_state_2_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_state_2_read) ; [#uses=2 type=i32]
  %ctx_state_1_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_state_1_read) ; [#uses=2 type=i32]
  %ctx_state_0_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_state_0_read) ; [#uses=2 type=i32]
  %m = alloca [64 x i32], align 16                ; [#uses=7 type=[64 x i32]*]
  call void @llvm.dbg.value(metadata !{[64 x i8]* %data}, i64 0, metadata !84), !dbg !88 ; [debug line = 30:70] [debug variable = data]
  call void @llvm.dbg.declare(metadata !{[64 x i32]* %m}, metadata !89), !dbg !92 ; [debug line = 32:60] [debug variable = m]
  br label %1, !dbg !93                           ; [debug line = 34:9]

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 0, %0 ], [ %tmp_9, %2 ]           ; [#uses=3 type=i5]
  %j = phi i7 [ 0, %0 ], [ %j_1, %2 ]             ; [#uses=3 type=i7]
  %tmp = icmp eq i5 %i, -16, !dbg !93             ; [#uses=1 type=i1] [debug line = 34:9]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  %tmp_9 = add i5 %i, 1, !dbg !95                 ; [#uses=1 type=i5] [debug line = 34:26]
  br i1 %tmp, label %.preheader.preheader, label %2, !dbg !93 ; [debug line = 34:9]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !96                  ; [debug line = 36:4]

; <label>:2                                       ; preds = %1
  %tmp_8 = zext i7 %j to i64, !dbg !98            ; [#uses=1 type=i64] [debug line = 35:7]
  %data_addr = getelementptr [64 x i8]* %data, i64 0, i64 %tmp_8, !dbg !98 ; [#uses=1 type=i8*] [debug line = 35:7]
  %data_load = load i8* %data_addr, align 1, !dbg !98 ; [#uses=1 type=i8] [debug line = 35:7]
  %tmp_13 = trunc i7 %j to i6, !dbg !93           ; [#uses=3 type=i6] [debug line = 34:9]
  %tmp_1 = or i6 %tmp_13, 1, !dbg !98             ; [#uses=1 type=i6] [debug line = 35:7]
  %tmp_2 = zext i6 %tmp_1 to i64, !dbg !98        ; [#uses=1 type=i64] [debug line = 35:7]
  %data_addr_1 = getelementptr [64 x i8]* %data, i64 0, i64 %tmp_2, !dbg !98 ; [#uses=1 type=i8*] [debug line = 35:7]
  %data_load_1 = load i8* %data_addr_1, align 1, !dbg !98 ; [#uses=1 type=i8] [debug line = 35:7]
  %tmp_5 = or i6 %tmp_13, 2, !dbg !98             ; [#uses=1 type=i6] [debug line = 35:7]
  %tmp_6 = zext i6 %tmp_5 to i64, !dbg !98        ; [#uses=1 type=i64] [debug line = 35:7]
  %data_addr_2 = getelementptr [64 x i8]* %data, i64 0, i64 %tmp_6, !dbg !98 ; [#uses=1 type=i8*] [debug line = 35:7]
  %data_load_2 = load i8* %data_addr_2, align 1, !dbg !98 ; [#uses=1 type=i8] [debug line = 35:7]
  %tmp_3 = or i6 %tmp_13, 3, !dbg !98             ; [#uses=1 type=i6] [debug line = 35:7]
  %tmp_7 = zext i6 %tmp_3 to i64, !dbg !98        ; [#uses=1 type=i64] [debug line = 35:7]
  %data_addr_3 = getelementptr [64 x i8]* %data, i64 0, i64 %tmp_7, !dbg !98 ; [#uses=1 type=i8*] [debug line = 35:7]
  %data_load_3 = load i8* %data_addr_3, align 1, !dbg !98 ; [#uses=1 type=i8] [debug line = 35:7]
  %tmp_s = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 %data_load, i8 %data_load_1, i8 %data_load_2, i8 %data_load_3), !dbg !98 ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp_4 = zext i5 %i to i64, !dbg !98            ; [#uses=1 type=i64] [debug line = 35:7]
  %m_addr = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp_4, !dbg !98 ; [#uses=1 type=i32*] [debug line = 35:7]
  store i32 %tmp_s, i32* %m_addr, align 4, !dbg !98 ; [debug line = 35:7]
  %j_1 = add i7 4, %j, !dbg !95                   ; [#uses=1 type=i7] [debug line = 34:26]
  call void @llvm.dbg.value(metadata !{i7 %j_1}, i64 0, metadata !99), !dbg !95 ; [debug line = 34:26] [debug variable = j]
  br label %1, !dbg !95                           ; [debug line = 34:26]

.preheader:                                       ; preds = %3, %.preheader.preheader
  %i_1 = phi i7 [ %i_3, %3 ], [ 16, %.preheader.preheader ] ; [#uses=7 type=i7]
  %exitcond = icmp eq i7 %i_1, -64, !dbg !96      ; [#uses=1 type=i1] [debug line = 36:4]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 48, i64 48, i64 48) ; [#uses=0 type=i32]
  br i1 %exitcond, label %.preheader1.preheader, label %3, !dbg !96 ; [debug line = 36:4]

.preheader1.preheader:                            ; preds = %.preheader
  br label %.preheader1, !dbg !100                ; [debug line = 48:9]

; <label>:3                                       ; preds = %.preheader
  %tmp_10 = add i7 -2, %i_1, !dbg !102            ; [#uses=1 type=i7] [debug line = 37:7]
  %tmp_11 = zext i7 %tmp_10 to i64, !dbg !102     ; [#uses=1 type=i64] [debug line = 37:7]
  %m_addr_1 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp_11, !dbg !102 ; [#uses=1 type=i32*] [debug line = 37:7]
  %m_load = load i32* %m_addr_1, align 4, !dbg !102 ; [#uses=5 type=i32] [debug line = 37:7]
  %tmp_12 = call i15 @_ssdm_op_PartSelect.i15.i32.i32.i32(i32 %m_load, i32 17, i32 31), !dbg !102 ; [#uses=1 type=i15] [debug line = 37:7]
  %tmp_16 = trunc i32 %m_load to i17              ; [#uses=1 type=i17]
  %tmp_14 = call i32 @_ssdm_op_BitConcatenate.i32.i17.i15(i17 %tmp_16, i15 %tmp_12), !dbg !102 ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp_15 = call i13 @_ssdm_op_PartSelect.i13.i32.i32.i32(i32 %m_load, i32 19, i32 31), !dbg !102 ; [#uses=1 type=i13] [debug line = 37:7]
  %tmp_26 = trunc i32 %m_load to i19              ; [#uses=1 type=i19]
  %tmp_17 = call i32 @_ssdm_op_BitConcatenate.i32.i19.i13(i19 %tmp_26, i13 %tmp_15), !dbg !102 ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp_18 = call i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32 %m_load, i32 10, i32 31), !dbg !102 ; [#uses=1 type=i22] [debug line = 37:7]
  %tmp_19 = zext i22 %tmp_18 to i32, !dbg !102    ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp2 = xor i32 %tmp_19, %tmp_17, !dbg !102     ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp_20 = xor i32 %tmp2, %tmp_14, !dbg !102     ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp_21 = add i7 -7, %i_1, !dbg !102            ; [#uses=1 type=i7] [debug line = 37:7]
  %tmp_22 = zext i7 %tmp_21 to i64, !dbg !102     ; [#uses=1 type=i64] [debug line = 37:7]
  %m_addr_2 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp_22, !dbg !102 ; [#uses=1 type=i32*] [debug line = 37:7]
  %m_load_1 = load i32* %m_addr_2, align 4, !dbg !102 ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp_23 = add i7 -15, %i_1, !dbg !102           ; [#uses=1 type=i7] [debug line = 37:7]
  %tmp_24 = zext i7 %tmp_23 to i64, !dbg !102     ; [#uses=1 type=i64] [debug line = 37:7]
  %m_addr_3 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp_24, !dbg !102 ; [#uses=1 type=i32*] [debug line = 37:7]
  %m_load_2 = load i32* %m_addr_3, align 4, !dbg !102 ; [#uses=5 type=i32] [debug line = 37:7]
  %tmp_25 = call i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32 %m_load_2, i32 7, i32 31), !dbg !102 ; [#uses=1 type=i25] [debug line = 37:7]
  %tmp_29 = trunc i32 %m_load_2 to i7             ; [#uses=1 type=i7]
  %tmp_27 = call i32 @_ssdm_op_BitConcatenate.i32.i7.i25(i7 %tmp_29, i25 %tmp_25), !dbg !102 ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp_28 = call i14 @_ssdm_op_PartSelect.i14.i32.i32.i32(i32 %m_load_2, i32 18, i32 31), !dbg !102 ; [#uses=1 type=i14] [debug line = 37:7]
  %tmp_40 = trunc i32 %m_load_2 to i18            ; [#uses=1 type=i18]
  %tmp_30 = call i32 @_ssdm_op_BitConcatenate.i32.i18.i14(i18 %tmp_40, i14 %tmp_28), !dbg !102 ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp_31 = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %m_load_2, i32 3, i32 31), !dbg !102 ; [#uses=1 type=i29] [debug line = 37:7]
  %tmp_32 = zext i29 %tmp_31 to i32, !dbg !102    ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp3 = xor i32 %tmp_32, %tmp_30, !dbg !102     ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp_33 = xor i32 %tmp3, %tmp_27, !dbg !102     ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp_34 = add i7 -16, %i_1, !dbg !102           ; [#uses=1 type=i7] [debug line = 37:7]
  %tmp_35 = zext i7 %tmp_34 to i64, !dbg !102     ; [#uses=1 type=i64] [debug line = 37:7]
  %m_addr_4 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp_35, !dbg !102 ; [#uses=1 type=i32*] [debug line = 37:7]
  %m_load_3 = load i32* %m_addr_4, align 4, !dbg !102 ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp4 = add i32 %m_load_1, %m_load_3, !dbg !102 ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp5 = add i32 %tmp_20, %tmp_33, !dbg !102     ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp_36 = add i32 %tmp5, %tmp4, !dbg !102       ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp_37 = zext i7 %i_1 to i64, !dbg !102        ; [#uses=1 type=i64] [debug line = 37:7]
  %m_addr_5 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp_37, !dbg !102 ; [#uses=1 type=i32*] [debug line = 37:7]
  store i32 %tmp_36, i32* %m_addr_5, align 4, !dbg !102 ; [debug line = 37:7]
  %i_3 = add i7 1, %i_1, !dbg !103                ; [#uses=1 type=i7] [debug line = 36:20]
  call void @llvm.dbg.value(metadata !{i7 %i_3}, i64 0, metadata !104), !dbg !103 ; [debug line = 36:20] [debug variable = i]
  br label %.preheader, !dbg !103                 ; [debug line = 36:20]

.preheader1:                                      ; preds = %4, %.preheader1.preheader
  %h1 = phi i32 [ %h, %4 ], [ %ctx_state_7_read_1, %.preheader1.preheader ] ; [#uses=2 type=i32]
  %h = phi i32 [ %g, %4 ], [ %ctx_state_6_read_1, %.preheader1.preheader ] ; [#uses=3 type=i32]
  %g = phi i32 [ %f, %4 ], [ %ctx_state_5_read_1, %.preheader1.preheader ] ; [#uses=3 type=i32]
  %f = phi i32 [ %e, %4 ], [ %ctx_state_4_read_1, %.preheader1.preheader ] ; [#uses=10 type=i32]
  %d1 = phi i32 [ %d, %4 ], [ %ctx_state_3_read_1, %.preheader1.preheader ] ; [#uses=2 type=i32]
  %d = phi i32 [ %c, %4 ], [ %ctx_state_2_read_1, %.preheader1.preheader ] ; [#uses=4 type=i32]
  %c = phi i32 [ %b, %4 ], [ %ctx_state_1_read_1, %.preheader1.preheader ] ; [#uses=4 type=i32]
  %b = phi i32 [ %a, %4 ], [ %ctx_state_0_read_1, %.preheader1.preheader ] ; [#uses=9 type=i32]
  %i_2 = phi i7 [ %i_4, %4 ], [ 0, %.preheader1.preheader ] ; [#uses=3 type=i7]
  %tmp_38 = icmp eq i7 %i_2, -64, !dbg !100       ; [#uses=1 type=i1] [debug line = 48:9]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %i_4 = add i7 %i_2, 1, !dbg !105                ; [#uses=1 type=i7] [debug line = 48:24]
  br i1 %tmp_38, label %5, label %4, !dbg !100    ; [debug line = 48:9]

; <label>:4                                       ; preds = %.preheader1
  %tmp_39 = call i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32 %f, i32 6, i32 31), !dbg !106 ; [#uses=1 type=i26] [debug line = 49:7]
  %tmp_43 = trunc i32 %f to i6                    ; [#uses=1 type=i6]
  %tmp_41 = call i32 @_ssdm_op_BitConcatenate.i32.i6.i26(i6 %tmp_43, i26 %tmp_39), !dbg !106 ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp_42 = call i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32 %f, i32 11, i32 31), !dbg !106 ; [#uses=1 type=i21] [debug line = 49:7]
  %tmp_46 = trunc i32 %f to i11                   ; [#uses=1 type=i11]
  %tmp_44 = call i32 @_ssdm_op_BitConcatenate.i32.i11.i21(i11 %tmp_46, i21 %tmp_42), !dbg !106 ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp_45 = call i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32 %f, i32 25, i32 31), !dbg !106 ; [#uses=1 type=i7] [debug line = 49:7]
  %tmp_55 = trunc i32 %f to i25                   ; [#uses=1 type=i25]
  %tmp_47 = call i32 @_ssdm_op_BitConcatenate.i32.i25.i7(i25 %tmp_55, i7 %tmp_45), !dbg !106 ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp6 = xor i32 %tmp_41, %tmp_44, !dbg !106     ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp_48 = xor i32 %tmp6, %tmp_47, !dbg !106     ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp_49 = and i32 %f, %g, !dbg !106             ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp_50 = xor i32 %f, -1, !dbg !106             ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp_51 = and i32 %h, %tmp_50, !dbg !106        ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp_52 = xor i32 %tmp_49, %tmp_51, !dbg !106   ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp_53 = zext i7 %i_2 to i64, !dbg !106        ; [#uses=2 type=i64] [debug line = 49:7]
  %k_addr = getelementptr inbounds [64 x i32]* @k, i64 0, i64 %tmp_53, !dbg !106 ; [#uses=1 type=i32*] [debug line = 49:7]
  %k_load = load i32* %k_addr, align 4, !dbg !106 ; [#uses=1 type=i32] [debug line = 49:7]
  %m_addr_6 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp_53, !dbg !106 ; [#uses=1 type=i32*] [debug line = 49:7]
  %m_load_4 = load i32* %m_addr_6, align 4, !dbg !106 ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp9 = add i32 %k_load, %m_load_4, !dbg !106   ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp11 = add i32 %tmp_48, %tmp_52, !dbg !106    ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp10 = add i32 %tmp11, %h1, !dbg !106         ; [#uses=1 type=i32] [debug line = 49:7]
  %t1 = add i32 %tmp10, %tmp9, !dbg !106          ; [#uses=2 type=i32] [debug line = 49:7]
  call void @llvm.dbg.value(metadata !{i32 %t1}, i64 0, metadata !108), !dbg !106 ; [debug line = 49:7] [debug variable = t1]
  %tmp_54 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %b, i32 2, i32 31), !dbg !109 ; [#uses=1 type=i30] [debug line = 50:7]
  %tmp_58 = trunc i32 %b to i2                    ; [#uses=1 type=i2]
  %tmp_56 = call i32 @_ssdm_op_BitConcatenate.i32.i2.i30(i2 %tmp_58, i30 %tmp_54), !dbg !109 ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp_57 = call i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32 %b, i32 13, i32 31), !dbg !109 ; [#uses=1 type=i19] [debug line = 50:7]
  %tmp_61 = trunc i32 %b to i13                   ; [#uses=1 type=i13]
  %tmp_59 = call i32 @_ssdm_op_BitConcatenate.i32.i13.i19(i13 %tmp_61, i19 %tmp_57), !dbg !109 ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp_60 = call i10 @_ssdm_op_PartSelect.i10.i32.i32.i32(i32 %b, i32 22, i32 31), !dbg !109 ; [#uses=1 type=i10] [debug line = 50:7]
  %tmp_68 = trunc i32 %b to i22                   ; [#uses=1 type=i22]
  %tmp_62 = call i32 @_ssdm_op_BitConcatenate.i32.i22.i10(i22 %tmp_68, i10 %tmp_60), !dbg !109 ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp12 = xor i32 %tmp_56, %tmp_59, !dbg !109    ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp_63 = xor i32 %tmp12, %tmp_62, !dbg !109    ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp_64 = xor i32 %c, %d, !dbg !109             ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp_65 = and i32 %b, %tmp_64, !dbg !109        ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp_66 = and i32 %c, %d, !dbg !109             ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp_67 = xor i32 %tmp_65, %tmp_66, !dbg !109   ; [#uses=1 type=i32] [debug line = 50:7]
  call void @llvm.dbg.value(metadata !{i32 %h}, i64 0, metadata !110), !dbg !111 ; [debug line = 51:7] [debug variable = h]
  call void @llvm.dbg.value(metadata !{i32 %g}, i64 0, metadata !112), !dbg !113 ; [debug line = 52:7] [debug variable = g]
  call void @llvm.dbg.value(metadata !{i32 %f}, i64 0, metadata !114), !dbg !115 ; [debug line = 53:7] [debug variable = f]
  %e = add i32 %t1, %d1, !dbg !116                ; [#uses=1 type=i32] [debug line = 54:7]
  call void @llvm.dbg.value(metadata !{i32 %e}, i64 0, metadata !117), !dbg !116 ; [debug line = 54:7] [debug variable = e]
  call void @llvm.dbg.value(metadata !{i32 %d}, i64 0, metadata !118), !dbg !119 ; [debug line = 55:7] [debug variable = d]
  call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !120), !dbg !121 ; [debug line = 56:7] [debug variable = c]
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !122), !dbg !123 ; [debug line = 57:7] [debug variable = b]
  %tmp13 = add i32 %tmp_67, %t1, !dbg !124        ; [#uses=1 type=i32] [debug line = 58:7]
  %a = add i32 %tmp13, %tmp_63, !dbg !124         ; [#uses=1 type=i32] [debug line = 58:7]
  call void @llvm.dbg.value(metadata !{i32 %a}, i64 0, metadata !125), !dbg !124 ; [debug line = 58:7] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i7 %i_4}, i64 0, metadata !104), !dbg !105 ; [debug line = 48:24] [debug variable = i]
  br label %.preheader1, !dbg !105                ; [debug line = 48:24]

; <label>:5                                       ; preds = %.preheader1
  %ctx_state = add i32 %b, %ctx_state_0_read_1, !dbg !126 ; [#uses=1 type=i32] [debug line = 61:4]
  %ctx_state_1 = add i32 %c, %ctx_state_1_read_1, !dbg !127 ; [#uses=1 type=i32] [debug line = 62:4]
  %ctx_state_2 = add i32 %d, %ctx_state_2_read_1, !dbg !128 ; [#uses=1 type=i32] [debug line = 63:4]
  %ctx_state_3 = add i32 %d1, %ctx_state_3_read_1, !dbg !129 ; [#uses=1 type=i32] [debug line = 64:4]
  %ctx_state_4 = add i32 %f, %ctx_state_4_read_1, !dbg !130 ; [#uses=1 type=i32] [debug line = 65:4]
  %ctx_state_5 = add i32 %g, %ctx_state_5_read_1, !dbg !131 ; [#uses=1 type=i32] [debug line = 66:4]
  %ctx_state_6 = add i32 %h, %ctx_state_6_read_1, !dbg !132 ; [#uses=1 type=i32] [debug line = 67:4]
  %ctx_state_7 = add i32 %h1, %ctx_state_7_read_1, !dbg !133 ; [#uses=1 type=i32] [debug line = 68:4]
  %mrv = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32 } undef, i32 %ctx_state, 0, !dbg !134 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 69:1]
  %mrv_1 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %mrv, i32 %ctx_state_1, 1, !dbg !134 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 69:1]
  %mrv_2 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_1, i32 %ctx_state_2, 2, !dbg !134 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 69:1]
  %mrv_3 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_2, i32 %ctx_state_3, 3, !dbg !134 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 69:1]
  %mrv_4 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_3, i32 %ctx_state_4, 4, !dbg !134 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 69:1]
  %mrv_5 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_4, i32 %ctx_state_5, 5, !dbg !134 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 69:1]
  %mrv_6 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_5, i32 %ctx_state_6, 6, !dbg !134 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 69:1]
  %mrv_7 = insertvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_6, i32 %ctx_state_7, 7, !dbg !134 ; [#uses=1 type={ i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 69:1]
  ret { i32, i32, i32, i32, i32, i32, i32, i32 } %mrv_7, !dbg !134 ; [debug line = 69:1]
}

; [#uses=1]
define internal fastcc void @sha256_final([64 x i8]* nocapture %ctx_data, i32 %ctx_datalen_read, i32 %ctx_bitlen_0_read, i32 %p_read3, i32 %p_read1, i32 %p_read2, i32 %p_read4, i32 %p_read5, i32 %p_read6, i32 %p_read7, i32 %p_read8, i32 %p_read9, [64 x i8]* nocapture %hash) {
  %p_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read9) ; [#uses=2 type=i32]
  %p_read_6 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read8) ; [#uses=2 type=i32]
  %p_read_7 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read7) ; [#uses=2 type=i32]
  %p_read_8 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read6) ; [#uses=2 type=i32]
  %p_read_9 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read5) ; [#uses=2 type=i32]
  %p_read48 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read4) ; [#uses=2 type=i32]
  %p_read27 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read2) ; [#uses=2 type=i32]
  %p_read16 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read1) ; [#uses=2 type=i32]
  %p_read35 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read3) ; [#uses=2 type=i32]
  %ctx_bitlen_0_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_bitlen_0_read) ; [#uses=5 type=i32]
  %ctx_datalen_read_2 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_datalen_read) ; [#uses=8 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %ctx_datalen_read_2}, i64 0, metadata !135), !dbg !138 ; [debug line = 101:31] [debug variable = ctx.datalen]
  call void @llvm.dbg.value(metadata !{[64 x i8]* %ctx_data}, i64 0, metadata !139), !dbg !138 ; [debug line = 101:31] [debug variable = ctx.data]
  call void @llvm.dbg.value(metadata !{i32 %ctx_datalen_read}, i64 0, metadata !135), !dbg !138 ; [debug line = 101:31] [debug variable = ctx.datalen]
  call void @llvm.dbg.value(metadata !{[64 x i8]* %hash}, i64 0, metadata !140), !dbg !141 ; [debug line = 101:66] [debug variable = hash]
  call void @llvm.dbg.value(metadata !{i32 %ctx_datalen_read}, i64 0, metadata !142), !dbg !144 ; [debug line = 105:2] [debug variable = i]
  %tmp = icmp ult i32 %ctx_datalen_read_2, 56, !dbg !145 ; [#uses=1 type=i1] [debug line = 108:2]
  %tmp_s = zext i32 %ctx_datalen_read_2 to i64, !dbg !146 ; [#uses=1 type=i64] [debug line = 109:3]
  %ctx_data_addr = getelementptr [64 x i8]* %ctx_data, i64 0, i64 %tmp_s, !dbg !146 ; [#uses=1 type=i8*] [debug line = 109:3]
  store i8 -128, i8* %ctx_data_addr, align 1, !dbg !146 ; [debug line = 109:3]
  br i1 %tmp, label %.preheader3.preheader, label %.preheader.preheader, !dbg !145 ; [debug line = 108:2]

.preheader3.preheader:                            ; preds = %0
  br label %.preheader3, !dbg !146                ; [debug line = 109:3]

.preheader.preheader:                             ; preds = %0
  br label %.preheader, !dbg !148                 ; [debug line = 114:3]

.preheader3:                                      ; preds = %1, %.preheader3.preheader
  %i_0_in = phi i32 [ %i, %1 ], [ %ctx_datalen_read_2, %.preheader3.preheader ] ; [#uses=2 type=i32]
  %i = add i32 %i_0_in, 1, !dbg !146              ; [#uses=2 type=i32] [debug line = 109:3]
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !142), !dbg !146 ; [debug line = 109:3] [debug variable = i]
  %exitcond = icmp eq i32 %i_0_in, 55, !dbg !150  ; [#uses=1 type=i1] [debug line = 110:3]
  br i1 %exitcond, label %.loopexit.loopexit15, label %1, !dbg !150 ; [debug line = 110:3]

; <label>:1                                       ; preds = %.preheader3
  %tmp_68 = zext i32 %i to i64, !dbg !151         ; [#uses=1 type=i64] [debug line = 111:4]
  %ctx_data_addr_1 = getelementptr [64 x i8]* %ctx_data, i64 0, i64 %tmp_68, !dbg !151 ; [#uses=1 type=i8*] [debug line = 111:4]
  store i8 0, i8* %ctx_data_addr_1, align 1, !dbg !151 ; [debug line = 111:4]
  br label %.preheader3, !dbg !151                ; [debug line = 111:4]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %i_1_in = phi i32 [ %i_1, %2 ], [ %ctx_datalen_read_2, %.preheader.preheader ] ; [#uses=1 type=i32]
  %i_1 = add i32 %i_1_in, 1, !dbg !148            ; [#uses=3 type=i32] [debug line = 114:3]
  call void @llvm.dbg.value(metadata !{i32 %i_1}, i64 0, metadata !142), !dbg !148 ; [debug line = 114:3] [debug variable = i]
  %tmp_73 = call i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32 %i_1, i32 6, i32 31), !dbg !152 ; [#uses=1 type=i26] [debug line = 115:3]
  %icmp = icmp eq i26 %tmp_73, 0, !dbg !152       ; [#uses=1 type=i1] [debug line = 115:3]
  br i1 %icmp, label %2, label %3, !dbg !152      ; [debug line = 115:3]

; <label>:2                                       ; preds = %.preheader
  %tmp_69 = zext i32 %i_1 to i64, !dbg !153       ; [#uses=1 type=i64] [debug line = 116:4]
  %ctx_data_addr_2 = getelementptr [64 x i8]* %ctx_data, i64 0, i64 %tmp_69, !dbg !153 ; [#uses=1 type=i8*] [debug line = 116:4]
  store i8 0, i8* %ctx_data_addr_2, align 1, !dbg !153 ; [debug line = 116:4]
  br label %.preheader, !dbg !153                 ; [debug line = 116:4]

; <label>:3                                       ; preds = %.preheader
  %call_ret1 = call fastcc { i32, i32, i32, i32, i32, i32, i32, i32 } @sha256_transform(i32 %p_read16, i32 %p_read27, i32 %p_read48, i32 %p_read_9, i32 %p_read_8, i32 %p_read_7, i32 %p_read_6, i32 %p_read, [64 x i8]* %ctx_data), !dbg !154 ; [#uses=8 type={ i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 117:3]
  %ctx_state_0_ret4 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 0, !dbg !154 ; [#uses=1 type=i32] [debug line = 117:3]
  %ctx_state_1_ret5 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 1, !dbg !154 ; [#uses=1 type=i32] [debug line = 117:3]
  %ctx_state_2_ret6 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 2, !dbg !154 ; [#uses=1 type=i32] [debug line = 117:3]
  %ctx_state_3_ret7 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 3, !dbg !154 ; [#uses=1 type=i32] [debug line = 117:3]
  %ctx_state_4_ret8 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 4, !dbg !154 ; [#uses=1 type=i32] [debug line = 117:3]
  %ctx_state_5_ret9 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 5, !dbg !154 ; [#uses=1 type=i32] [debug line = 117:3]
  %ctx_state_6_ret1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 6, !dbg !154 ; [#uses=1 type=i32] [debug line = 117:3]
  %ctx_state_7_ret1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 7, !dbg !154 ; [#uses=1 type=i32] [debug line = 117:3]
  br label %4, !dbg !155                          ; [debug line = 118:8]

; <label>:4                                       ; preds = %5, %3
  %i_2 = phi i6 [ 0, %3 ], [ %i_5, %5 ]           ; [#uses=3 type=i6]
  %tmp_70 = icmp eq i6 %i_2, -8, !dbg !155        ; [#uses=1 type=i1] [debug line = 118:8]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 56, i64 56, i64 56) ; [#uses=0 type=i32]
  %i_5 = add i6 %i_2, 1, !dbg !157                ; [#uses=1 type=i6] [debug line = 118:23]
  br i1 %tmp_70, label %.loopexit.loopexit, label %5, !dbg !155 ; [debug line = 118:8]

; <label>:5                                       ; preds = %4
  %tmp_71 = zext i6 %i_2 to i64, !dbg !158        ; [#uses=1 type=i64] [debug line = 119:4]
  %ctx_data_addr_6 = getelementptr [64 x i8]* %ctx_data, i64 0, i64 %tmp_71, !dbg !158 ; [#uses=1 type=i8*] [debug line = 119:4]
  store i8 0, i8* %ctx_data_addr_6, align 1, !dbg !158 ; [debug line = 119:4]
  call void @llvm.dbg.value(metadata !{i6 %i_5}, i64 0, metadata !142), !dbg !157 ; [debug line = 118:23] [debug variable = i]
  br label %4, !dbg !157                          ; [debug line = 118:23]

.loopexit.loopexit:                               ; preds = %4
  br label %.loopexit

.loopexit.loopexit15:                             ; preds = %.preheader3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit15, %.loopexit.loopexit
  %ctx_state = phi i32 [ %ctx_state_0_ret4, %.loopexit.loopexit ], [ %p_read16, %.loopexit.loopexit15 ] ; [#uses=1 type=i32]
  %ctx_state_1 = phi i32 [ %ctx_state_1_ret5, %.loopexit.loopexit ], [ %p_read27, %.loopexit.loopexit15 ] ; [#uses=1 type=i32]
  %ctx_state_2 = phi i32 [ %ctx_state_2_ret6, %.loopexit.loopexit ], [ %p_read48, %.loopexit.loopexit15 ] ; [#uses=1 type=i32]
  %ctx_state_3 = phi i32 [ %ctx_state_3_ret7, %.loopexit.loopexit ], [ %p_read_9, %.loopexit.loopexit15 ] ; [#uses=1 type=i32]
  %ctx_state_4 = phi i32 [ %ctx_state_4_ret8, %.loopexit.loopexit ], [ %p_read_8, %.loopexit.loopexit15 ] ; [#uses=1 type=i32]
  %ctx_state_5 = phi i32 [ %ctx_state_5_ret9, %.loopexit.loopexit ], [ %p_read_7, %.loopexit.loopexit15 ] ; [#uses=1 type=i32]
  %ctx_state_6 = phi i32 [ %ctx_state_6_ret1, %.loopexit.loopexit ], [ %p_read_6, %.loopexit.loopexit15 ] ; [#uses=1 type=i32]
  %ctx_state_7 = phi i32 [ %ctx_state_7_ret1, %.loopexit.loopexit ], [ %p_read, %.loopexit.loopexit15 ] ; [#uses=1 type=i32]
  %tmp_81 = shl i32 %ctx_datalen_read_2, 3, !dbg !160 ; [#uses=2 type=i32] [debug line = 125:4]
  %tmp_72 = xor i32 %tmp_81, -1, !dbg !160        ; [#uses=1 type=i32] [debug line = 125:4]
  %tmp_74 = icmp ugt i32 %ctx_bitlen_0_read_1, %tmp_72, !dbg !160 ; [#uses=1 type=i1] [debug line = 125:4]
  %tmp_75 = add i32 1, %p_read35, !dbg !161       ; [#uses=1 type=i32] [debug line = 125:58]
  %tmp_102_read3 = select i1 %tmp_74, i32 %tmp_75, i32 %p_read35, !dbg !160 ; [#uses=4 type=i32] [debug line = 125:4]
  %tmp_89 = trunc i32 %ctx_datalen_read_2 to i5   ; [#uses=1 type=i5]
  %tmp_16 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_89, i3 0) ; [#uses=1 type=i8]
  %tmp_92 = trunc i32 %ctx_bitlen_0_read_1 to i8  ; [#uses=1 type=i8]
  %tmp_96 = trunc i32 %ctx_datalen_read_2 to i13  ; [#uses=1 type=i13]
  %tmp_14 = call i16 @_ssdm_op_BitConcatenate.i16.i13.i3(i13 %tmp_96, i3 0) ; [#uses=1 type=i16]
  %tmp_100 = trunc i32 %ctx_bitlen_0_read_1 to i16 ; [#uses=1 type=i16]
  %tmp_103 = trunc i32 %ctx_datalen_read_2 to i21 ; [#uses=1 type=i21]
  %tmp_18 = call i24 @_ssdm_op_BitConcatenate.i24.i21.i3(i21 %tmp_103, i3 0) ; [#uses=1 type=i24]
  %tmp_107 = trunc i32 %ctx_bitlen_0_read_1 to i24 ; [#uses=1 type=i24]
  %ctx_bitlen = add i32 %ctx_bitlen_0_read_1, %tmp_81, !dbg !162 ; [#uses=1 type=i32] [debug line = 125:76]
  %ctx_bitlen_cast3 = add i24 %tmp_18, %tmp_107, !dbg !163 ; [#uses=1 type=i24] [debug line = 126:4]
  %ctx_bitlen_cast = add i16 %tmp_14, %tmp_100, !dbg !163 ; [#uses=1 type=i16] [debug line = 126:4]
  %tmp_76 = add i8 %tmp_92, %tmp_16, !dbg !163    ; [#uses=1 type=i8] [debug line = 126:4]
  %ctx_data_addr_3 = getelementptr [64 x i8]* %ctx_data, i64 0, i64 63, !dbg !163 ; [#uses=1 type=i8*] [debug line = 126:4]
  store i8 %tmp_76, i8* %ctx_data_addr_3, align 1, !dbg !163 ; [debug line = 126:4]
  %tmp_77 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %ctx_bitlen_cast, i32 8, i32 15), !dbg !164 ; [#uses=1 type=i8] [debug line = 127:4]
  %ctx_data_addr_4 = getelementptr [64 x i8]* %ctx_data, i64 0, i64 62, !dbg !164 ; [#uses=1 type=i8*] [debug line = 127:4]
  store i8 %tmp_77, i8* %ctx_data_addr_4, align 1, !dbg !164 ; [debug line = 127:4]
  %tmp_78 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %ctx_bitlen_cast3, i32 16, i32 23), !dbg !165 ; [#uses=1 type=i8] [debug line = 128:4]
  %ctx_data_addr_5 = getelementptr [64 x i8]* %ctx_data, i64 0, i64 61, !dbg !165 ; [#uses=1 type=i8*] [debug line = 128:4]
  store i8 %tmp_78, i8* %ctx_data_addr_5, align 1, !dbg !165 ; [debug line = 128:4]
  %tmp_79 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %ctx_bitlen, i32 24, i32 31), !dbg !166 ; [#uses=1 type=i8] [debug line = 129:4]
  %ctx_data_addr_7 = getelementptr [64 x i8]* %ctx_data, i64 0, i64 60, !dbg !166 ; [#uses=1 type=i8*] [debug line = 129:4]
  store i8 %tmp_79, i8* %ctx_data_addr_7, align 1, !dbg !166 ; [debug line = 129:4]
  %tmp_111 = trunc i32 %tmp_102_read3 to i8, !dbg !167 ; [#uses=1 type=i8] [debug line = 130:4]
  %ctx_data_addr_8 = getelementptr [64 x i8]* %ctx_data, i64 0, i64 59, !dbg !167 ; [#uses=1 type=i8*] [debug line = 130:4]
  store i8 %tmp_111, i8* %ctx_data_addr_8, align 1, !dbg !167 ; [debug line = 130:4]
  %tmp_80 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_102_read3, i32 8, i32 15), !dbg !168 ; [#uses=1 type=i8] [debug line = 131:4]
  %ctx_data_addr_9 = getelementptr [64 x i8]* %ctx_data, i64 0, i64 58, !dbg !168 ; [#uses=1 type=i8*] [debug line = 131:4]
  store i8 %tmp_80, i8* %ctx_data_addr_9, align 1, !dbg !168 ; [debug line = 131:4]
  %tmp_82 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_102_read3, i32 16, i32 23), !dbg !169 ; [#uses=1 type=i8] [debug line = 132:4]
  %ctx_data_addr_10 = getelementptr [64 x i8]* %ctx_data, i64 0, i64 57, !dbg !169 ; [#uses=1 type=i8*] [debug line = 132:4]
  store i8 %tmp_82, i8* %ctx_data_addr_10, align 1, !dbg !169 ; [debug line = 132:4]
  %tmp_83 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_102_read3, i32 24, i32 31), !dbg !170 ; [#uses=1 type=i8] [debug line = 133:4]
  %ctx_data_addr_11 = getelementptr [64 x i8]* %ctx_data, i64 0, i64 56, !dbg !170 ; [#uses=1 type=i8*] [debug line = 133:4]
  store i8 %tmp_83, i8* %ctx_data_addr_11, align 1, !dbg !170 ; [debug line = 133:4]
  %call_ret = call fastcc { i32, i32, i32, i32, i32, i32, i32, i32 } @sha256_transform(i32 %ctx_state, i32 %ctx_state_1, i32 %ctx_state_2, i32 %ctx_state_3, i32 %ctx_state_4, i32 %ctx_state_5, i32 %ctx_state_6, i32 %ctx_state_7, [64 x i8]* %ctx_data), !dbg !171 ; [#uses=8 type={ i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 134:4]
  %ctx_state_0_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 0, !dbg !171 ; [#uses=1 type=i32] [debug line = 134:4]
  %ctx_state_1_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 1, !dbg !171 ; [#uses=1 type=i32] [debug line = 134:4]
  %ctx_state_2_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 2, !dbg !171 ; [#uses=1 type=i32] [debug line = 134:4]
  %ctx_state_3_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 3, !dbg !171 ; [#uses=1 type=i32] [debug line = 134:4]
  %ctx_state_4_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 4, !dbg !171 ; [#uses=1 type=i32] [debug line = 134:4]
  %ctx_state_5_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 5, !dbg !171 ; [#uses=1 type=i32] [debug line = 134:4]
  %ctx_state_6_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 6, !dbg !171 ; [#uses=1 type=i32] [debug line = 134:4]
  %ctx_state_7_ret = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 7, !dbg !171 ; [#uses=1 type=i32] [debug line = 134:4]
  br label %6, !dbg !172                          ; [debug line = 138:9]

; <label>:6                                       ; preds = %7, %.loopexit
  %i_3 = phi i3 [ 0, %.loopexit ], [ %i_6, %7 ]   ; [#uses=8 type=i3]
  %i_3_cast1 = zext i3 %i_3 to i5, !dbg !172      ; [#uses=1 type=i5] [debug line = 138:9]
  %tmp_84 = icmp eq i3 %i_3, -4, !dbg !172        ; [#uses=1 type=i1] [debug line = 138:9]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  %i_6 = add i3 %i_3, 1, !dbg !174                ; [#uses=1 type=i3] [debug line = 138:21]
  br i1 %tmp_84, label %8, label %7, !dbg !172    ; [debug line = 138:9]

; <label>:7                                       ; preds = %6
  %tmp_114 = trunc i3 %i_3 to i2                  ; [#uses=1 type=i2]
  %tmp_85 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_114, i3 0), !dbg !175 ; [#uses=1 type=i5] [debug line = 139:7]
  %tmp_86 = sub i5 -8, %tmp_85, !dbg !175         ; [#uses=1 type=i5] [debug line = 139:7]
  %tmp_109_cast = zext i5 %tmp_86 to i32, !dbg !175 ; [#uses=8 type=i32] [debug line = 139:7]
  %tmp_87 = lshr i32 %ctx_state_0_ret, %tmp_109_cast, !dbg !175 ; [#uses=1 type=i32] [debug line = 139:7]
  %tmp_116 = trunc i32 %tmp_87 to i8, !dbg !175   ; [#uses=1 type=i8] [debug line = 139:7]
  %tmp_88 = zext i3 %i_3 to i64, !dbg !175        ; [#uses=1 type=i64] [debug line = 139:7]
  %hash_addr = getelementptr [64 x i8]* %hash, i64 0, i64 %tmp_88, !dbg !175 ; [#uses=1 type=i8*] [debug line = 139:7]
  store i8 %tmp_116, i8* %hash_addr, align 1, !dbg !175 ; [debug line = 139:7]
  %tmp_90 = lshr i32 %ctx_state_1_ret, %tmp_109_cast, !dbg !177 ; [#uses=1 type=i32] [debug line = 140:7]
  %tmp_117 = trunc i32 %tmp_90 to i8, !dbg !177   ; [#uses=1 type=i8] [debug line = 140:7]
  %tmp_91 = xor i3 %i_3, -4, !dbg !177            ; [#uses=3 type=i3] [debug line = 140:7]
  %tmp_93 = zext i3 %tmp_91 to i64, !dbg !177     ; [#uses=1 type=i64] [debug line = 140:7]
  %hash_addr_1 = getelementptr [64 x i8]* %hash, i64 0, i64 %tmp_93, !dbg !177 ; [#uses=1 type=i8*] [debug line = 140:7]
  store i8 %tmp_117, i8* %hash_addr_1, align 1, !dbg !177 ; [debug line = 140:7]
  %tmp_94 = lshr i32 %ctx_state_2_ret, %tmp_109_cast, !dbg !178 ; [#uses=1 type=i32] [debug line = 141:7]
  %tmp_118 = trunc i32 %tmp_94 to i8, !dbg !178   ; [#uses=1 type=i8] [debug line = 141:7]
  %tmp_95 = call i4 @_ssdm_op_BitConcatenate.i4.i1.i3(i1 true, i3 %i_3), !dbg !178 ; [#uses=2 type=i4] [debug line = 141:7]
  %tmp_97 = zext i4 %tmp_95 to i64, !dbg !178     ; [#uses=1 type=i64] [debug line = 141:7]
  %hash_addr_2 = getelementptr [64 x i8]* %hash, i64 0, i64 %tmp_97, !dbg !178 ; [#uses=1 type=i8*] [debug line = 141:7]
  store i8 %tmp_118, i8* %hash_addr_2, align 1, !dbg !178 ; [debug line = 141:7]
  %tmp_98 = lshr i32 %ctx_state_3_ret, %tmp_109_cast, !dbg !179 ; [#uses=1 type=i32] [debug line = 142:7]
  %tmp_119 = trunc i32 %tmp_98 to i8, !dbg !179   ; [#uses=1 type=i8] [debug line = 142:7]
  %tmp_123_cast8 = sext i3 %tmp_91 to i4, !dbg !179 ; [#uses=1 type=i4] [debug line = 142:7]
  %tmp_99 = zext i4 %tmp_123_cast8 to i64, !dbg !179 ; [#uses=1 type=i64] [debug line = 142:7]
  %hash_addr_3 = getelementptr [64 x i8]* %hash, i64 0, i64 %tmp_99, !dbg !179 ; [#uses=1 type=i8*] [debug line = 142:7]
  store i8 %tmp_119, i8* %hash_addr_3, align 1, !dbg !179 ; [debug line = 142:7]
  %tmp_101 = lshr i32 %ctx_state_4_ret, %tmp_109_cast, !dbg !180 ; [#uses=1 type=i32] [debug line = 143:7]
  %tmp_120 = trunc i32 %tmp_101 to i8, !dbg !180  ; [#uses=1 type=i8] [debug line = 143:7]
  %tmp_102 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 -2, i3 %i_3), !dbg !180 ; [#uses=1 type=i5] [debug line = 143:7]
  %tmp_104 = zext i5 %tmp_102 to i64, !dbg !180   ; [#uses=1 type=i64] [debug line = 143:7]
  %hash_addr_4 = getelementptr [64 x i8]* %hash, i64 0, i64 %tmp_104, !dbg !180 ; [#uses=1 type=i8*] [debug line = 143:7]
  store i8 %tmp_120, i8* %hash_addr_4, align 1, !dbg !180 ; [debug line = 143:7]
  %tmp_105 = lshr i32 %ctx_state_5_ret, %tmp_109_cast, !dbg !181 ; [#uses=1 type=i32] [debug line = 144:7]
  %tmp_121 = trunc i32 %tmp_105 to i8, !dbg !181  ; [#uses=1 type=i8] [debug line = 144:7]
  %tmp_106 = add i5 -12, %i_3_cast1, !dbg !181    ; [#uses=1 type=i5] [debug line = 144:7]
  %tmp_108 = zext i5 %tmp_106 to i64, !dbg !181   ; [#uses=1 type=i64] [debug line = 144:7]
  %hash_addr_5 = getelementptr [64 x i8]* %hash, i64 0, i64 %tmp_108, !dbg !181 ; [#uses=1 type=i8*] [debug line = 144:7]
  store i8 %tmp_121, i8* %hash_addr_5, align 1, !dbg !181 ; [debug line = 144:7]
  %tmp_109 = lshr i32 %ctx_state_6_ret, %tmp_109_cast, !dbg !182 ; [#uses=1 type=i32] [debug line = 145:7]
  %tmp_122 = trunc i32 %tmp_109 to i8, !dbg !182  ; [#uses=1 type=i8] [debug line = 145:7]
  %tmp_135_cast7 = sext i4 %tmp_95 to i5, !dbg !182 ; [#uses=1 type=i5] [debug line = 145:7]
  %tmp_110 = zext i5 %tmp_135_cast7 to i64, !dbg !182 ; [#uses=1 type=i64] [debug line = 145:7]
  %hash_addr_6 = getelementptr [64 x i8]* %hash, i64 0, i64 %tmp_110, !dbg !182 ; [#uses=1 type=i8*] [debug line = 145:7]
  store i8 %tmp_122, i8* %hash_addr_6, align 1, !dbg !182 ; [debug line = 145:7]
  %tmp_112 = lshr i32 %ctx_state_7_ret, %tmp_109_cast, !dbg !183 ; [#uses=1 type=i32] [debug line = 146:7]
  %tmp_123 = trunc i32 %tmp_112 to i8, !dbg !183  ; [#uses=1 type=i8] [debug line = 146:7]
  %tmp_139_cast6 = sext i3 %tmp_91 to i5, !dbg !183 ; [#uses=1 type=i5] [debug line = 146:7]
  %tmp_113 = zext i5 %tmp_139_cast6 to i64, !dbg !183 ; [#uses=1 type=i64] [debug line = 146:7]
  %hash_addr_7 = getelementptr [64 x i8]* %hash, i64 0, i64 %tmp_113, !dbg !183 ; [#uses=1 type=i8*] [debug line = 146:7]
  store i8 %tmp_123, i8* %hash_addr_7, align 1, !dbg !183 ; [debug line = 146:7]
  call void @llvm.dbg.value(metadata !{i3 %i_6}, i64 0, metadata !142), !dbg !174 ; [debug line = 138:21] [debug variable = i]
  br label %6, !dbg !174                          ; [debug line = 138:21]

; <label>:8                                       ; preds = %6
  ret void
}

; [#uses=0]
define void @sha256([256 x i8]* %data, i32 %base_offset, i32 %bytes, [32 x i8]* %digest) nounwind uwtable {
  %n = alloca i32                                 ; [#uses=4 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !184) ; [debug variable = bytes]
  %sha256ctx_datalen = alloca i32                 ; [#uses=6 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %sha256ctx_datalen}, metadata !189) ; [debug variable = sha256ctx.datalen]
  %sha256ctx_bitlen_0_2 = alloca i32              ; [#uses=6 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %sha256ctx_bitlen_0_2}, metadata !201) ; [debug variable = sha256ctx.bitlen[0]]
  %sha256ctx_bitlen_1_2 = alloca i32              ; [#uses=6 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %sha256ctx_bitlen_1_2}, metadata !204) ; [debug variable = sha256ctx.bitlen[1]]
  %sha256ctx_state_0_2 = alloca i32               ; [#uses=6 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %sha256ctx_state_0_2}, metadata !205) ; [debug variable = sha256ctx.state[0]]
  %sha256ctx_state_1_2 = alloca i32               ; [#uses=6 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %sha256ctx_state_1_2}, metadata !206) ; [debug variable = sha256ctx.state[1]]
  %sha256ctx_state_2_2 = alloca i32               ; [#uses=6 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %sha256ctx_state_2_2}, metadata !207) ; [debug variable = sha256ctx.state[2]]
  %sha256ctx_state_3_2 = alloca i32               ; [#uses=6 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %sha256ctx_state_3_2}, metadata !208) ; [debug variable = sha256ctx.state[3]]
  %sha256ctx_state_4_2 = alloca i32               ; [#uses=6 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %sha256ctx_state_4_2}, metadata !209) ; [debug variable = sha256ctx.state[4]]
  %sha256ctx_state_5_2 = alloca i32               ; [#uses=6 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %sha256ctx_state_5_2}, metadata !210) ; [debug variable = sha256ctx.state[5]]
  %sha256ctx_state_6_2 = alloca i32               ; [#uses=6 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %sha256ctx_state_6_2}, metadata !211) ; [debug variable = sha256ctx.state[6]]
  %sha256ctx_state_7_2 = alloca i32               ; [#uses=6 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %sha256ctx_state_7_2}, metadata !212) ; [debug variable = sha256ctx.state[7]]
  %seg_offset = alloca i32                        ; [#uses=4 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %seg_offset}, metadata !213) ; [debug variable = seg_offset]
  call void (...)* @_ssdm_op_SpecBitsMap([256 x i8]* %data) nounwind, !map !214
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %base_offset) nounwind, !map !220
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %bytes) nounwind, !map !226
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %digest) nounwind, !map !230
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @sha256_str) nounwind
  %bytes_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %bytes) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %bytes_read}, i64 0, metadata !184), !dbg !236 ; [debug line = 10:18] [debug variable = bytes]
  %base_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %base_offset) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %base_offset_read}, i64 0, metadata !237), !dbg !238 ; [debug line = 9:18] [debug variable = base_offset]
  %seg_buf = alloca [64 x i8], align 16           ; [#uses=37 type=[64 x i8]*]
  %sha256ctx_data = alloca [64 x i8], align 1     ; [#uses=3 type=[64 x i8]*]
  call void @llvm.dbg.value(metadata !{[256 x i8]* %data}, i64 0, metadata !239), !dbg !243 ; [debug line = 8:28] [debug variable = data]
  call void @llvm.dbg.value(metadata !{i32 %base_offset}, i64 0, metadata !237), !dbg !238 ; [debug line = 9:18] [debug variable = base_offset]
  call void @llvm.dbg.value(metadata !{i32 %bytes}, i64 0, metadata !184), !dbg !236 ; [debug line = 10:18] [debug variable = bytes]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %digest}, i64 0, metadata !244), !dbg !248 ; [debug line = 11:19] [debug variable = digest]
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i8]* %data, [1 x i8]* @p_str3, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str3, i32 -1, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([256 x i8]* %data, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty_12 = call i32 (...)* @_ssdm_op_SpecMemCore([32 x i8]* %digest, [1 x i8]* @p_str4, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str4, i32 -1, [1 x i8]* @p_str4, [1 x i8]* @p_str4, [1 x i8]* @p_str4, [1 x i8]* @p_str4, [1 x i8]* @p_str4) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %digest, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %base_offset, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !249 ; [debug line = 17:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %bytes, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !250 ; [debug line = 18:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !251 ; [debug line = 19:1]
  call void @llvm.dbg.declare(metadata !{[64 x i8]* %seg_buf}, metadata !252), !dbg !253 ; [debug line = 22:16] [debug variable = seg_buf]
  call void @llvm.dbg.value(metadata !{i32 %bytes}, i64 0, metadata !254), !dbg !255 ; [debug line = 25:24] [debug variable = n]
  call void @llvm.dbg.declare(metadata !{[64 x i8]* %sha256ctx_data}, metadata !256), !dbg !259 ; [debug line = 28:13] [debug variable = sha256ctx.data]
  %tmp = trunc i32 %base_offset_read to i10, !dbg !260 ; [#uses=2 type=i10] [debug line = 32:2]
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
  store i32 %bytes_read, i32* %n, !dbg !236       ; [debug line = 10:18]
  br label %.backedge, !dbg !260                  ; [debug line = 32:2]

.backedge:                                        ; preds = %.backedge.backedge, %0
  %n_load = load i32* %n, !dbg !261               ; [#uses=5 type=i32] [debug line = 38:4]
  %tmp_s = icmp eq i32 %n_load, 0, !dbg !260      ; [#uses=1 type=i1] [debug line = 32:2]
  br i1 %tmp_s, label %6, label %1, !dbg !260     ; [debug line = 32:2]

; <label>:1                                       ; preds = %.backedge
  %seg_offset_load_1 = load i32* %seg_offset, !dbg !264 ; [#uses=1 type=i32] [debug line = 34:3]
  %tmp_124 = call i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32 %n_load, i32 6, i32 31), !dbg !264 ; [#uses=1 type=i26] [debug line = 34:3]
  %icmp = icmp eq i26 %tmp_124, 0, !dbg !264      ; [#uses=1 type=i1] [debug line = 34:3]
  %tmp_125 = trunc i32 %seg_offset_load_1 to i10, !dbg !264 ; [#uses=2 type=i10] [debug line = 34:3]
  br i1 %icmp, label %.preheader.preheader, label %.preheader6.preheader, !dbg !264 ; [debug line = 34:3]

.preheader6.preheader:                            ; preds = %1
  br label %.preheader6, !dbg !265                ; [debug line = 36:9]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !267                 ; [debug line = 44:9]

.preheader6:                                      ; preds = %2, %.preheader6.preheader
  %i9 = phi i7 [ %i, %2 ], [ 0, %.preheader6.preheader ] ; [#uses=4 type=i7]
  %exitcond5 = icmp eq i7 %i9, -64, !dbg !265     ; [#uses=1 type=i1] [debug line = 36:9]
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %i = add i7 %i9, 1, !dbg !270                   ; [#uses=1 type=i7] [debug line = 36:20]
  br i1 %exitcond5, label %3, label %2, !dbg !265 ; [debug line = 36:9]

; <label>:2                                       ; preds = %.preheader6
  %tmp_115 = zext i7 %i9 to i64, !dbg !271        ; [#uses=1 type=i64] [debug line = 37:5]
  %tmp_143_cast = zext i7 %i9 to i10              ; [#uses=1 type=i10]
  %tmp1 = add i10 %tmp_125, %tmp_143_cast         ; [#uses=1 type=i10]
  %sum = add i10 %tmp1, %tmp                      ; [#uses=1 type=i10]
  %sum_cast = zext i10 %sum to i64                ; [#uses=1 type=i64]
  %data_addr = getelementptr [256 x i8]* %data, i64 0, i64 %sum_cast, !dbg !271 ; [#uses=1 type=i8*] [debug line = 37:5]
  %data_load = load i8* %data_addr, align 1, !dbg !271 ; [#uses=1 type=i8] [debug line = 37:5]
  %seg_buf_addr_2 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 %tmp_115, !dbg !271 ; [#uses=1 type=i8*] [debug line = 37:5]
  store i8 %data_load, i8* %seg_buf_addr_2, align 1, !dbg !271 ; [debug line = 37:5]
  call void @llvm.dbg.value(metadata !{i7 %i}, i64 0, metadata !272), !dbg !270 ; [debug line = 36:20] [debug variable = i]
  br label %.preheader6, !dbg !270                ; [debug line = 36:20]

; <label>:3                                       ; preds = %.preheader6
  %sha256ctx_datalen_lo = load i32* %sha256ctx_datalen, !dbg !274 ; [#uses=1 type=i32] [debug line = 40:4]
  %sha256ctx_bitlen_0_s = load i32* %sha256ctx_bitlen_0_2, !dbg !274 ; [#uses=1 type=i32] [debug line = 40:4]
  %sha256ctx_bitlen_1_s = load i32* %sha256ctx_bitlen_1_2, !dbg !274 ; [#uses=1 type=i32] [debug line = 40:4]
  %sha256ctx_state_0_2_1 = load i32* %sha256ctx_state_0_2, !dbg !274 ; [#uses=1 type=i32] [debug line = 40:4]
  %sha256ctx_state_1_2_1 = load i32* %sha256ctx_state_1_2, !dbg !274 ; [#uses=1 type=i32] [debug line = 40:4]
  %sha256ctx_state_2_2_1 = load i32* %sha256ctx_state_2_2, !dbg !274 ; [#uses=1 type=i32] [debug line = 40:4]
  %sha256ctx_state_3_2_1 = load i32* %sha256ctx_state_3_2, !dbg !274 ; [#uses=1 type=i32] [debug line = 40:4]
  %sha256ctx_state_4_2_1 = load i32* %sha256ctx_state_4_2, !dbg !274 ; [#uses=1 type=i32] [debug line = 40:4]
  %sha256ctx_state_5_2_1 = load i32* %sha256ctx_state_5_2, !dbg !274 ; [#uses=1 type=i32] [debug line = 40:4]
  %sha256ctx_state_6_2_1 = load i32* %sha256ctx_state_6_2, !dbg !274 ; [#uses=1 type=i32] [debug line = 40:4]
  %sha256ctx_state_7_2_1 = load i32* %sha256ctx_state_7_2, !dbg !274 ; [#uses=1 type=i32] [debug line = 40:4]
  %seg_offset_load = load i32* %seg_offset, !dbg !275 ; [#uses=1 type=i32] [debug line = 39:4]
  %n_1 = add i32 %n_load, -64, !dbg !261          ; [#uses=1 type=i32] [debug line = 38:4]
  call void @llvm.dbg.value(metadata !{i32 %n_1}, i64 0, metadata !254), !dbg !261 ; [debug line = 38:4] [debug variable = n]
  %seg_offset_1 = add i32 %seg_offset_load, 64, !dbg !275 ; [#uses=1 type=i32] [debug line = 39:4]
  call void @llvm.dbg.value(metadata !{i32 %seg_offset_1}, i64 0, metadata !213), !dbg !275 ; [debug line = 39:4] [debug variable = seg_offset]
  %call_ret = call fastcc { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } @sha256_update([64 x i8]* %sha256ctx_data, i32 %sha256ctx_datalen_lo, i32 %sha256ctx_bitlen_0_s, i32 %sha256ctx_bitlen_1_s, i32 %sha256ctx_state_0_2_1, i32 %sha256ctx_state_1_2_1, i32 %sha256ctx_state_2_2_1, i32 %sha256ctx_state_3_2_1, i32 %sha256ctx_state_4_2_1, i32 %sha256ctx_state_5_2_1, i32 %sha256ctx_state_6_2_1, i32 %sha256ctx_state_7_2_1, [64 x i8]* %seg_buf, i32 64) nounwind, !dbg !274 ; [#uses=11 type={ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 40:4]
  %sha256ctx_datalen_1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 0, !dbg !274 ; [#uses=1 type=i32] [debug line = 40:4]
  %sha256ctx_bitlen_0 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 1, !dbg !274 ; [#uses=1 type=i32] [debug line = 40:4]
  %sha256ctx_bitlen_1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 2, !dbg !274 ; [#uses=1 type=i32] [debug line = 40:4]
  %sha256ctx_state_0 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 3, !dbg !274 ; [#uses=1 type=i32] [debug line = 40:4]
  call void @llvm.dbg.value(metadata !{i32 %sha256ctx_state_0}, i64 0, metadata !205), !dbg !274 ; [debug line = 40:4] [debug variable = sha256ctx.state[0]]
  %sha256ctx_state_1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 4, !dbg !274 ; [#uses=1 type=i32] [debug line = 40:4]
  call void @llvm.dbg.value(metadata !{i32 %sha256ctx_state_1}, i64 0, metadata !206), !dbg !274 ; [debug line = 40:4] [debug variable = sha256ctx.state[1]]
  %sha256ctx_state_2 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 5, !dbg !274 ; [#uses=1 type=i32] [debug line = 40:4]
  call void @llvm.dbg.value(metadata !{i32 %sha256ctx_state_2}, i64 0, metadata !207), !dbg !274 ; [debug line = 40:4] [debug variable = sha256ctx.state[2]]
  %sha256ctx_state_3 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 6, !dbg !274 ; [#uses=1 type=i32] [debug line = 40:4]
  call void @llvm.dbg.value(metadata !{i32 %sha256ctx_state_3}, i64 0, metadata !208), !dbg !274 ; [debug line = 40:4] [debug variable = sha256ctx.state[3]]
  %sha256ctx_state_4 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 7, !dbg !274 ; [#uses=1 type=i32] [debug line = 40:4]
  call void @llvm.dbg.value(metadata !{i32 %sha256ctx_state_4}, i64 0, metadata !209), !dbg !274 ; [debug line = 40:4] [debug variable = sha256ctx.state[4]]
  %sha256ctx_state_5 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 8, !dbg !274 ; [#uses=1 type=i32] [debug line = 40:4]
  call void @llvm.dbg.value(metadata !{i32 %sha256ctx_state_5}, i64 0, metadata !210), !dbg !274 ; [debug line = 40:4] [debug variable = sha256ctx.state[5]]
  %sha256ctx_state_6 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 9, !dbg !274 ; [#uses=1 type=i32] [debug line = 40:4]
  call void @llvm.dbg.value(metadata !{i32 %sha256ctx_state_6}, i64 0, metadata !211), !dbg !274 ; [debug line = 40:4] [debug variable = sha256ctx.state[6]]
  %sha256ctx_state_7 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret, 10, !dbg !274 ; [#uses=1 type=i32] [debug line = 40:4]
  call void @llvm.dbg.value(metadata !{i32 %sha256ctx_state_7}, i64 0, metadata !212), !dbg !274 ; [debug line = 40:4] [debug variable = sha256ctx.state[7]]
  call void @llvm.dbg.value(metadata !{i32 %sha256ctx_bitlen_0}, i64 0, metadata !201), !dbg !274 ; [debug line = 40:4] [debug variable = sha256ctx.bitlen[0]]
  call void @llvm.dbg.value(metadata !{i32 %sha256ctx_bitlen_1}, i64 0, metadata !204), !dbg !274 ; [debug line = 40:4] [debug variable = sha256ctx.bitlen[1]]
  call void @llvm.dbg.value(metadata !{i32 %sha256ctx_datalen_1}, i64 0, metadata !189), !dbg !274 ; [debug line = 40:4] [debug variable = sha256ctx.datalen]
  store i32 %seg_offset_1, i32* %seg_offset, !dbg !275 ; [debug line = 39:4]
  store i32 %sha256ctx_state_7, i32* %sha256ctx_state_7_2, !dbg !274 ; [debug line = 40:4]
  store i32 %sha256ctx_state_6, i32* %sha256ctx_state_6_2, !dbg !274 ; [debug line = 40:4]
  store i32 %sha256ctx_state_5, i32* %sha256ctx_state_5_2, !dbg !274 ; [debug line = 40:4]
  store i32 %sha256ctx_state_4, i32* %sha256ctx_state_4_2, !dbg !274 ; [debug line = 40:4]
  store i32 %sha256ctx_state_3, i32* %sha256ctx_state_3_2, !dbg !274 ; [debug line = 40:4]
  store i32 %sha256ctx_state_2, i32* %sha256ctx_state_2_2, !dbg !274 ; [debug line = 40:4]
  store i32 %sha256ctx_state_1, i32* %sha256ctx_state_1_2, !dbg !274 ; [debug line = 40:4]
  store i32 %sha256ctx_state_0, i32* %sha256ctx_state_0_2, !dbg !274 ; [debug line = 40:4]
  store i32 %sha256ctx_bitlen_1, i32* %sha256ctx_bitlen_1_2, !dbg !274 ; [debug line = 40:4]
  store i32 %sha256ctx_bitlen_0, i32* %sha256ctx_bitlen_0_2, !dbg !274 ; [debug line = 40:4]
  store i32 %sha256ctx_datalen_1, i32* %sha256ctx_datalen, !dbg !274 ; [debug line = 40:4]
  store i32 %n_1, i32* %n, !dbg !261              ; [debug line = 38:4]
  br label %.backedge.backedge, !dbg !276         ; [debug line = 41:3]

.preheader:                                       ; preds = %4, %.preheader.preheader
  %i_1 = phi i6 [ %i_7, %4 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i6]
  %i_1_cast = zext i6 %i_1 to i32, !dbg !267      ; [#uses=1 type=i32] [debug line = 44:9]
  %exitcond4 = icmp eq i32 %i_1_cast, %n_load, !dbg !267 ; [#uses=1 type=i1] [debug line = 44:9]
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 63, i64 0) nounwind ; [#uses=0 type=i32]
  %i_7 = add i6 %i_1, 1, !dbg !277                ; [#uses=1 type=i6] [debug line = 44:19]
  br i1 %exitcond4, label %5, label %4, !dbg !267 ; [debug line = 44:9]

; <label>:4                                       ; preds = %.preheader
  %tmp_114 = zext i6 %i_1 to i64, !dbg !278       ; [#uses=1 type=i64] [debug line = 45:5]
  %tmp_144_cast = zext i6 %i_1 to i10             ; [#uses=1 type=i10]
  %tmp2 = add i10 %tmp_125, %tmp_144_cast         ; [#uses=1 type=i10]
  %sum2 = add i10 %tmp2, %tmp                     ; [#uses=1 type=i10]
  %sum2_cast = zext i10 %sum2 to i64              ; [#uses=1 type=i64]
  %data_addr_4 = getelementptr [256 x i8]* %data, i64 0, i64 %sum2_cast, !dbg !278 ; [#uses=1 type=i8*] [debug line = 45:5]
  %data_load_4 = load i8* %data_addr_4, align 1, !dbg !278 ; [#uses=1 type=i8] [debug line = 45:5]
  %seg_buf_addr_3 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 %tmp_114, !dbg !278 ; [#uses=1 type=i8*] [debug line = 45:5]
  store i8 %data_load_4, i8* %seg_buf_addr_3, align 1, !dbg !278 ; [debug line = 45:5]
  call void @llvm.dbg.value(metadata !{i6 %i_7}, i64 0, metadata !272), !dbg !277 ; [debug line = 44:19] [debug variable = i]
  br label %.preheader, !dbg !277                 ; [debug line = 44:19]

; <label>:5                                       ; preds = %.preheader
  %sha256ctx_datalen_lo_1 = load i32* %sha256ctx_datalen, !dbg !279 ; [#uses=1 type=i32] [debug line = 46:4]
  %sha256ctx_bitlen_0_1 = load i32* %sha256ctx_bitlen_0_2, !dbg !279 ; [#uses=1 type=i32] [debug line = 46:4]
  %sha256ctx_bitlen_1_1 = load i32* %sha256ctx_bitlen_1_2, !dbg !279 ; [#uses=1 type=i32] [debug line = 46:4]
  %sha256ctx_state_0_2_2 = load i32* %sha256ctx_state_0_2, !dbg !279 ; [#uses=1 type=i32] [debug line = 46:4]
  %sha256ctx_state_1_2_2 = load i32* %sha256ctx_state_1_2, !dbg !279 ; [#uses=1 type=i32] [debug line = 46:4]
  %sha256ctx_state_2_2_2 = load i32* %sha256ctx_state_2_2, !dbg !279 ; [#uses=1 type=i32] [debug line = 46:4]
  %sha256ctx_state_3_2_2 = load i32* %sha256ctx_state_3_2, !dbg !279 ; [#uses=1 type=i32] [debug line = 46:4]
  %sha256ctx_state_4_2_2 = load i32* %sha256ctx_state_4_2, !dbg !279 ; [#uses=1 type=i32] [debug line = 46:4]
  %sha256ctx_state_5_2_2 = load i32* %sha256ctx_state_5_2, !dbg !279 ; [#uses=1 type=i32] [debug line = 46:4]
  %sha256ctx_state_6_2_2 = load i32* %sha256ctx_state_6_2, !dbg !279 ; [#uses=1 type=i32] [debug line = 46:4]
  %sha256ctx_state_7_2_2 = load i32* %sha256ctx_state_7_2, !dbg !279 ; [#uses=1 type=i32] [debug line = 46:4]
  %call_ret1 = call fastcc { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } @sha256_update([64 x i8]* %sha256ctx_data, i32 %sha256ctx_datalen_lo_1, i32 %sha256ctx_bitlen_0_1, i32 %sha256ctx_bitlen_1_1, i32 %sha256ctx_state_0_2_2, i32 %sha256ctx_state_1_2_2, i32 %sha256ctx_state_2_2_2, i32 %sha256ctx_state_3_2_2, i32 %sha256ctx_state_4_2_2, i32 %sha256ctx_state_5_2_2, i32 %sha256ctx_state_6_2_2, i32 %sha256ctx_state_7_2_2, [64 x i8]* %seg_buf, i32 %n_load) nounwind, !dbg !279 ; [#uses=11 type={ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }] [debug line = 46:4]
  %sha256ctx_datalen_2 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 0, !dbg !279 ; [#uses=1 type=i32] [debug line = 46:4]
  %sha256ctx_bitlen_0_1_15 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 1, !dbg !279 ; [#uses=1 type=i32] [debug line = 46:4]
  %sha256ctx_bitlen_1_1_16 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 2, !dbg !279 ; [#uses=1 type=i32] [debug line = 46:4]
  %sha256ctx_state_0_1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 3, !dbg !279 ; [#uses=1 type=i32] [debug line = 46:4]
  call void @llvm.dbg.value(metadata !{i32 %sha256ctx_state_0_1}, i64 0, metadata !205), !dbg !279 ; [debug line = 46:4] [debug variable = sha256ctx.state[0]]
  %sha256ctx_state_1_1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 4, !dbg !279 ; [#uses=1 type=i32] [debug line = 46:4]
  call void @llvm.dbg.value(metadata !{i32 %sha256ctx_state_1_1}, i64 0, metadata !206), !dbg !279 ; [debug line = 46:4] [debug variable = sha256ctx.state[1]]
  %sha256ctx_state_2_1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 5, !dbg !279 ; [#uses=1 type=i32] [debug line = 46:4]
  call void @llvm.dbg.value(metadata !{i32 %sha256ctx_state_2_1}, i64 0, metadata !207), !dbg !279 ; [debug line = 46:4] [debug variable = sha256ctx.state[2]]
  %sha256ctx_state_3_1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 6, !dbg !279 ; [#uses=1 type=i32] [debug line = 46:4]
  call void @llvm.dbg.value(metadata !{i32 %sha256ctx_state_3_1}, i64 0, metadata !208), !dbg !279 ; [debug line = 46:4] [debug variable = sha256ctx.state[3]]
  %sha256ctx_state_4_1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 7, !dbg !279 ; [#uses=1 type=i32] [debug line = 46:4]
  call void @llvm.dbg.value(metadata !{i32 %sha256ctx_state_4_1}, i64 0, metadata !209), !dbg !279 ; [debug line = 46:4] [debug variable = sha256ctx.state[4]]
  %sha256ctx_state_5_1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 8, !dbg !279 ; [#uses=1 type=i32] [debug line = 46:4]
  call void @llvm.dbg.value(metadata !{i32 %sha256ctx_state_5_1}, i64 0, metadata !210), !dbg !279 ; [debug line = 46:4] [debug variable = sha256ctx.state[5]]
  %sha256ctx_state_6_1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 9, !dbg !279 ; [#uses=1 type=i32] [debug line = 46:4]
  call void @llvm.dbg.value(metadata !{i32 %sha256ctx_state_6_1}, i64 0, metadata !211), !dbg !279 ; [debug line = 46:4] [debug variable = sha256ctx.state[6]]
  %sha256ctx_state_7_1 = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } %call_ret1, 10, !dbg !279 ; [#uses=1 type=i32] [debug line = 46:4]
  call void @llvm.dbg.value(metadata !{i32 %sha256ctx_state_7_1}, i64 0, metadata !212), !dbg !279 ; [debug line = 46:4] [debug variable = sha256ctx.state[7]]
  call void @llvm.dbg.value(metadata !{i32 %sha256ctx_bitlen_0_1_15}, i64 0, metadata !201), !dbg !279 ; [debug line = 46:4] [debug variable = sha256ctx.bitlen[0]]
  call void @llvm.dbg.value(metadata !{i32 %sha256ctx_bitlen_1_1_16}, i64 0, metadata !204), !dbg !279 ; [debug line = 46:4] [debug variable = sha256ctx.bitlen[1]]
  call void @llvm.dbg.value(metadata !{i32 %sha256ctx_datalen_2}, i64 0, metadata !189), !dbg !279 ; [debug line = 46:4] [debug variable = sha256ctx.datalen]
  store i32 %sha256ctx_state_7_1, i32* %sha256ctx_state_7_2, !dbg !279 ; [debug line = 46:4]
  store i32 %sha256ctx_state_6_1, i32* %sha256ctx_state_6_2, !dbg !279 ; [debug line = 46:4]
  store i32 %sha256ctx_state_5_1, i32* %sha256ctx_state_5_2, !dbg !279 ; [debug line = 46:4]
  store i32 %sha256ctx_state_4_1, i32* %sha256ctx_state_4_2, !dbg !279 ; [debug line = 46:4]
  store i32 %sha256ctx_state_3_1, i32* %sha256ctx_state_3_2, !dbg !279 ; [debug line = 46:4]
  store i32 %sha256ctx_state_2_1, i32* %sha256ctx_state_2_2, !dbg !279 ; [debug line = 46:4]
  store i32 %sha256ctx_state_1_1, i32* %sha256ctx_state_1_2, !dbg !279 ; [debug line = 46:4]
  store i32 %sha256ctx_state_0_1, i32* %sha256ctx_state_0_2, !dbg !279 ; [debug line = 46:4]
  store i32 %sha256ctx_bitlen_1_1_16, i32* %sha256ctx_bitlen_1_2, !dbg !279 ; [debug line = 46:4]
  store i32 %sha256ctx_bitlen_0_1_15, i32* %sha256ctx_bitlen_0_2, !dbg !279 ; [debug line = 46:4]
  store i32 %sha256ctx_datalen_2, i32* %sha256ctx_datalen, !dbg !279 ; [debug line = 46:4]
  store i32 0, i32* %n
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %5, %3
  br label %.backedge

; <label>:6                                       ; preds = %.backedge
  %sha256ctx_datalen_lo_2 = load i32* %sha256ctx_datalen, !dbg !280 ; [#uses=1 type=i32] [debug line = 52:2]
  %sha256ctx_bitlen_0_2_17 = load i32* %sha256ctx_bitlen_0_2, !dbg !280 ; [#uses=1 type=i32] [debug line = 52:2]
  %sha256ctx_bitlen_1_2_18 = load i32* %sha256ctx_bitlen_1_2, !dbg !280 ; [#uses=1 type=i32] [debug line = 52:2]
  %sha256ctx_state_0_2_3 = load i32* %sha256ctx_state_0_2, !dbg !280 ; [#uses=1 type=i32] [debug line = 52:2]
  %sha256ctx_state_1_2_3 = load i32* %sha256ctx_state_1_2, !dbg !280 ; [#uses=1 type=i32] [debug line = 52:2]
  %sha256ctx_state_2_2_3 = load i32* %sha256ctx_state_2_2, !dbg !280 ; [#uses=1 type=i32] [debug line = 52:2]
  %sha256ctx_state_3_2_3 = load i32* %sha256ctx_state_3_2, !dbg !280 ; [#uses=1 type=i32] [debug line = 52:2]
  %sha256ctx_state_4_2_3 = load i32* %sha256ctx_state_4_2, !dbg !280 ; [#uses=1 type=i32] [debug line = 52:2]
  %sha256ctx_state_5_2_3 = load i32* %sha256ctx_state_5_2, !dbg !280 ; [#uses=1 type=i32] [debug line = 52:2]
  %sha256ctx_state_6_2_3 = load i32* %sha256ctx_state_6_2, !dbg !280 ; [#uses=1 type=i32] [debug line = 52:2]
  %sha256ctx_state_7_2_3 = load i32* %sha256ctx_state_7_2, !dbg !280 ; [#uses=1 type=i32] [debug line = 52:2]
  call fastcc void @sha256_final([64 x i8]* %sha256ctx_data, i32 %sha256ctx_datalen_lo_2, i32 %sha256ctx_bitlen_0_2_17, i32 %sha256ctx_bitlen_1_2_18, i32 %sha256ctx_state_0_2_3, i32 %sha256ctx_state_1_2_3, i32 %sha256ctx_state_2_2_3, i32 %sha256ctx_state_3_2_3, i32 %sha256ctx_state_4_2_3, i32 %sha256ctx_state_5_2_3, i32 %sha256ctx_state_6_2_3, i32 %sha256ctx_state_7_2_3, [64 x i8]* %seg_buf) nounwind, !dbg !280 ; [debug line = 52:2]
  %seg_buf_addr = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 0, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load = load i8* %seg_buf_addr, align 16, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr = getelementptr [32 x i8]* %digest, i64 0, i64 0, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load, i8* %digest_addr, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_1 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 1, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_1 = load i8* %seg_buf_addr_1, align 1, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_1 = getelementptr [32 x i8]* %digest, i64 0, i64 1, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_1, i8* %digest_addr_1, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_4 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 2, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_2 = load i8* %seg_buf_addr_4, align 2, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_2 = getelementptr [32 x i8]* %digest, i64 0, i64 2, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_2, i8* %digest_addr_2, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_5 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 3, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_3 = load i8* %seg_buf_addr_5, align 1, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_3 = getelementptr [32 x i8]* %digest, i64 0, i64 3, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_3, i8* %digest_addr_3, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_6 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 4, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_4 = load i8* %seg_buf_addr_6, align 4, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_4 = getelementptr [32 x i8]* %digest, i64 0, i64 4, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_4, i8* %digest_addr_4, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_7 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 5, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_5 = load i8* %seg_buf_addr_7, align 1, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_5 = getelementptr [32 x i8]* %digest, i64 0, i64 5, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_5, i8* %digest_addr_5, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_8 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 6, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_6 = load i8* %seg_buf_addr_8, align 2, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_6 = getelementptr [32 x i8]* %digest, i64 0, i64 6, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_6, i8* %digest_addr_6, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_9 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 7, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_7 = load i8* %seg_buf_addr_9, align 1, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_7 = getelementptr [32 x i8]* %digest, i64 0, i64 7, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_7, i8* %digest_addr_7, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_10 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 8, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_8 = load i8* %seg_buf_addr_10, align 8, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_8 = getelementptr [32 x i8]* %digest, i64 0, i64 8, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_8, i8* %digest_addr_8, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_11 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 9, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_9 = load i8* %seg_buf_addr_11, align 1, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_9 = getelementptr [32 x i8]* %digest, i64 0, i64 9, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_9, i8* %digest_addr_9, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_12 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 10, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_10 = load i8* %seg_buf_addr_12, align 2, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_10 = getelementptr [32 x i8]* %digest, i64 0, i64 10, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_10, i8* %digest_addr_10, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_13 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 11, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_11 = load i8* %seg_buf_addr_13, align 1, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_11 = getelementptr [32 x i8]* %digest, i64 0, i64 11, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_11, i8* %digest_addr_11, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_14 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 12, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_12 = load i8* %seg_buf_addr_14, align 4, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_12 = getelementptr [32 x i8]* %digest, i64 0, i64 12, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_12, i8* %digest_addr_12, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_15 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 13, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_13 = load i8* %seg_buf_addr_15, align 1, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_13 = getelementptr [32 x i8]* %digest, i64 0, i64 13, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_13, i8* %digest_addr_13, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_16 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 14, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_14 = load i8* %seg_buf_addr_16, align 2, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_14 = getelementptr [32 x i8]* %digest, i64 0, i64 14, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_14, i8* %digest_addr_14, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_17 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 15, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_15 = load i8* %seg_buf_addr_17, align 1, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_15 = getelementptr [32 x i8]* %digest, i64 0, i64 15, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_15, i8* %digest_addr_15, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_18 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 16, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_16 = load i8* %seg_buf_addr_18, align 16, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_16 = getelementptr [32 x i8]* %digest, i64 0, i64 16, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_16, i8* %digest_addr_16, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_19 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 17, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_17 = load i8* %seg_buf_addr_19, align 1, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_17 = getelementptr [32 x i8]* %digest, i64 0, i64 17, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_17, i8* %digest_addr_17, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_20 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 18, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_18 = load i8* %seg_buf_addr_20, align 2, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_18 = getelementptr [32 x i8]* %digest, i64 0, i64 18, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_18, i8* %digest_addr_18, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_21 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 19, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_19 = load i8* %seg_buf_addr_21, align 1, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_19 = getelementptr [32 x i8]* %digest, i64 0, i64 19, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_19, i8* %digest_addr_19, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_22 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 20, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_20 = load i8* %seg_buf_addr_22, align 4, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_20 = getelementptr [32 x i8]* %digest, i64 0, i64 20, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_20, i8* %digest_addr_20, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_23 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 21, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_21 = load i8* %seg_buf_addr_23, align 1, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_21 = getelementptr [32 x i8]* %digest, i64 0, i64 21, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_21, i8* %digest_addr_21, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_24 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 22, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_22 = load i8* %seg_buf_addr_24, align 2, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_22 = getelementptr [32 x i8]* %digest, i64 0, i64 22, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_22, i8* %digest_addr_22, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_25 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 23, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_23 = load i8* %seg_buf_addr_25, align 1, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_23 = getelementptr [32 x i8]* %digest, i64 0, i64 23, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_23, i8* %digest_addr_23, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_26 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 24, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_24 = load i8* %seg_buf_addr_26, align 8, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_24 = getelementptr [32 x i8]* %digest, i64 0, i64 24, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_24, i8* %digest_addr_24, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_27 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 25, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_25 = load i8* %seg_buf_addr_27, align 1, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_25 = getelementptr [32 x i8]* %digest, i64 0, i64 25, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_25, i8* %digest_addr_25, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_28 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 26, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_26 = load i8* %seg_buf_addr_28, align 2, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_26 = getelementptr [32 x i8]* %digest, i64 0, i64 26, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_26, i8* %digest_addr_26, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_29 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 27, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_27 = load i8* %seg_buf_addr_29, align 1, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_27 = getelementptr [32 x i8]* %digest, i64 0, i64 27, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_27, i8* %digest_addr_27, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_30 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 28, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_28 = load i8* %seg_buf_addr_30, align 4, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_28 = getelementptr [32 x i8]* %digest, i64 0, i64 28, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_28, i8* %digest_addr_28, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_31 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 29, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_29 = load i8* %seg_buf_addr_31, align 1, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_29 = getelementptr [32 x i8]* %digest, i64 0, i64 29, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_29, i8* %digest_addr_29, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_32 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 30, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_30 = load i8* %seg_buf_addr_32, align 2, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_30 = getelementptr [32 x i8]* %digest, i64 0, i64 30, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_30, i8* %digest_addr_30, align 1, !dbg !281 ; [debug line = 56:2]
  %seg_buf_addr_33 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 31, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf_load_31 = load i8* %seg_buf_addr_33, align 1, !dbg !281 ; [#uses=1 type=i8] [debug line = 56:2]
  %digest_addr_31 = getelementptr [32 x i8]* %digest, i64 0, i64 31, !dbg !281 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf_load_31, i8* %digest_addr_31, align 1, !dbg !281 ; [debug line = 56:2]
  ret void, !dbg !284                             ; [debug line = 58:1]
}

; [#uses=13]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
declare i24 @llvm.part.select.i24(i24, i32, i32) nounwind readnone

; [#uses=1]
declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

; [#uses=62]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=17]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecMemCore(...) {
entry:
  ret i32 0
}

; [#uses=8]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=4]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=31]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=4]
define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_19 = trunc i32 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_19
}

; [#uses=1]
define weak i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.select.i24(i24 %0, i32 %1, i32 %2) ; [#uses=1 type=i24]
  %empty_20 = trunc i24 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_20
}

; [#uses=1]
define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2) ; [#uses=1 type=i16]
  %empty_21 = trunc i16 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_21
}

; [#uses=1]
define weak i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_22 = trunc i32 %empty to i7              ; [#uses=1 type=i7]
  ret i7 %empty_22
}

; [#uses=0]
declare i6 @_ssdm_op_PartSelect.i6.i7.i32.i32(i7, i32, i32) nounwind readnone

; [#uses=0]
declare i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i5 @_ssdm_op_PartSelect.i5.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_23 = trunc i32 %empty to i30             ; [#uses=1 type=i30]
  ret i30 %empty_23
}

; [#uses=1]
define weak i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_24 = trunc i32 %empty to i29             ; [#uses=1 type=i29]
  ret i29 %empty_24
}

; [#uses=3]
define weak i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_25 = trunc i32 %empty to i26             ; [#uses=1 type=i26]
  ret i26 %empty_25
}

; [#uses=1]
define weak i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_26 = trunc i32 %empty to i25             ; [#uses=1 type=i25]
  ret i25 %empty_26
}

; [#uses=0]
declare i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_27 = trunc i32 %empty to i22             ; [#uses=1 type=i22]
  ret i22 %empty_27
}

; [#uses=1]
define weak i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_28 = trunc i32 %empty to i21             ; [#uses=1 type=i21]
  ret i21 %empty_28
}

; [#uses=0]
declare i2 @_ssdm_op_PartSelect.i2.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

; [#uses=1]
define weak i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_29 = trunc i32 %empty to i19             ; [#uses=1 type=i19]
  ret i19 %empty_29
}

; [#uses=0]
declare i18 @_ssdm_op_PartSelect.i18.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i17 @_ssdm_op_PartSelect.i17.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i15 @_ssdm_op_PartSelect.i15.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_30 = trunc i32 %empty to i15             ; [#uses=1 type=i15]
  ret i15 %empty_30
}

; [#uses=1]
define weak i14 @_ssdm_op_PartSelect.i14.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_31 = trunc i32 %empty to i14             ; [#uses=1 type=i14]
  ret i14 %empty_31
}

; [#uses=1]
define weak i13 @_ssdm_op_PartSelect.i13.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_32 = trunc i32 %empty to i13             ; [#uses=1 type=i13]
  ret i13 %empty_32
}

; [#uses=0]
declare i11 @_ssdm_op_PartSelect.i11.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i10 @_ssdm_op_PartSelect.i10.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_33 = trunc i32 %empty to i10             ; [#uses=1 type=i10]
  ret i10 %empty_33
}

; [#uses=1]
define weak i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5, i3) nounwind readnone {
entry:
  %empty = zext i5 %0 to i8                       ; [#uses=1 type=i8]
  %empty_34 = zext i3 %1 to i8                    ; [#uses=1 type=i8]
  %empty_35 = shl i8 %empty, 3                    ; [#uses=1 type=i8]
  %empty_36 = or i8 %empty_35, %empty_34          ; [#uses=1 type=i8]
  ret i8 %empty_36
}

; [#uses=2]
define weak i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2, i3) nounwind readnone {
entry:
  %empty = zext i2 %0 to i5                       ; [#uses=1 type=i5]
  %empty_37 = zext i3 %1 to i5                    ; [#uses=1 type=i5]
  %empty_38 = shl i5 %empty, 3                    ; [#uses=1 type=i5]
  %empty_39 = or i5 %empty_38, %empty_37          ; [#uses=1 type=i5]
  ret i5 %empty_39
}

; [#uses=1]
define weak i4 @_ssdm_op_BitConcatenate.i4.i1.i3(i1, i3) nounwind readnone {
entry:
  %empty = zext i1 %0 to i4                       ; [#uses=1 type=i4]
  %empty_40 = zext i3 %1 to i4                    ; [#uses=1 type=i4]
  %empty_41 = shl i4 %empty, 3                    ; [#uses=1 type=i4]
  %empty_42 = or i4 %empty_41, %empty_40          ; [#uses=1 type=i4]
  ret i4 %empty_42
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16                      ; [#uses=1 type=i16]
  %empty_43 = zext i8 %3 to i16                   ; [#uses=1 type=i16]
  %empty_44 = shl i16 %empty, 8                   ; [#uses=1 type=i16]
  %empty_45 = or i16 %empty_44, %empty_43         ; [#uses=1 type=i16]
  %empty_46 = zext i8 %1 to i24                   ; [#uses=1 type=i24]
  %empty_47 = zext i16 %empty_45 to i24           ; [#uses=1 type=i24]
  %empty_48 = shl i24 %empty_46, 16               ; [#uses=1 type=i24]
  %empty_49 = or i24 %empty_48, %empty_47         ; [#uses=1 type=i24]
  %empty_50 = zext i8 %0 to i32                   ; [#uses=1 type=i32]
  %empty_51 = zext i24 %empty_49 to i32           ; [#uses=1 type=i32]
  %empty_52 = shl i32 %empty_50, 24               ; [#uses=1 type=i32]
  %empty_53 = or i32 %empty_52, %empty_51         ; [#uses=1 type=i32]
  ret i32 %empty_53
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i7.i25(i7, i25) nounwind readnone {
entry:
  %empty = zext i7 %0 to i32                      ; [#uses=1 type=i32]
  %empty_54 = zext i25 %1 to i32                  ; [#uses=1 type=i32]
  %empty_55 = shl i32 %empty, 25                  ; [#uses=1 type=i32]
  %empty_56 = or i32 %empty_55, %empty_54         ; [#uses=1 type=i32]
  ret i32 %empty_56
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i6.i26(i6, i26) nounwind readnone {
entry:
  %empty = zext i6 %0 to i32                      ; [#uses=1 type=i32]
  %empty_57 = zext i26 %1 to i32                  ; [#uses=1 type=i32]
  %empty_58 = shl i32 %empty, 26                  ; [#uses=1 type=i32]
  %empty_59 = or i32 %empty_58, %empty_57         ; [#uses=1 type=i32]
  ret i32 %empty_59
}

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i29.i3(i29, i3) nounwind readnone

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i25.i7(i25, i7) nounwind readnone {
entry:
  %empty = zext i25 %0 to i32                     ; [#uses=1 type=i32]
  %empty_60 = zext i7 %1 to i32                   ; [#uses=1 type=i32]
  %empty_61 = shl i32 %empty, 7                   ; [#uses=1 type=i32]
  %empty_62 = or i32 %empty_61, %empty_60         ; [#uses=1 type=i32]
  ret i32 %empty_62
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i22.i10(i22, i10) nounwind readnone {
entry:
  %empty = zext i22 %0 to i32                     ; [#uses=1 type=i32]
  %empty_63 = zext i10 %1 to i32                  ; [#uses=1 type=i32]
  %empty_64 = shl i32 %empty, 10                  ; [#uses=1 type=i32]
  %empty_65 = or i32 %empty_64, %empty_63         ; [#uses=1 type=i32]
  ret i32 %empty_65
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i2.i30(i2, i30) nounwind readnone {
entry:
  %empty = zext i2 %0 to i32                      ; [#uses=1 type=i32]
  %empty_66 = zext i30 %1 to i32                  ; [#uses=1 type=i32]
  %empty_67 = shl i32 %empty, 30                  ; [#uses=1 type=i32]
  %empty_68 = or i32 %empty_67, %empty_66         ; [#uses=1 type=i32]
  ret i32 %empty_68
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i19.i13(i19, i13) nounwind readnone {
entry:
  %empty = zext i19 %0 to i32                     ; [#uses=1 type=i32]
  %empty_69 = zext i13 %1 to i32                  ; [#uses=1 type=i32]
  %empty_70 = shl i32 %empty, 13                  ; [#uses=1 type=i32]
  %empty_71 = or i32 %empty_70, %empty_69         ; [#uses=1 type=i32]
  ret i32 %empty_71
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i18.i14(i18, i14) nounwind readnone {
entry:
  %empty = zext i18 %0 to i32                     ; [#uses=1 type=i32]
  %empty_72 = zext i14 %1 to i32                  ; [#uses=1 type=i32]
  %empty_73 = shl i32 %empty, 14                  ; [#uses=1 type=i32]
  %empty_74 = or i32 %empty_73, %empty_72         ; [#uses=1 type=i32]
  ret i32 %empty_74
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i17.i15(i17, i15) nounwind readnone {
entry:
  %empty = zext i17 %0 to i32                     ; [#uses=1 type=i32]
  %empty_75 = zext i15 %1 to i32                  ; [#uses=1 type=i32]
  %empty_76 = shl i32 %empty, 15                  ; [#uses=1 type=i32]
  %empty_77 = or i32 %empty_76, %empty_75         ; [#uses=1 type=i32]
  ret i32 %empty_77
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i13.i19(i13, i19) nounwind readnone {
entry:
  %empty = zext i13 %0 to i32                     ; [#uses=1 type=i32]
  %empty_78 = zext i19 %1 to i32                  ; [#uses=1 type=i32]
  %empty_79 = shl i32 %empty, 19                  ; [#uses=1 type=i32]
  %empty_80 = or i32 %empty_79, %empty_78         ; [#uses=1 type=i32]
  ret i32 %empty_80
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i11.i21(i11, i21) nounwind readnone {
entry:
  %empty = zext i11 %0 to i32                     ; [#uses=1 type=i32]
  %empty_81 = zext i21 %1 to i32                  ; [#uses=1 type=i32]
  %empty_82 = shl i32 %empty, 21                  ; [#uses=1 type=i32]
  %empty_83 = or i32 %empty_82, %empty_81         ; [#uses=1 type=i32]
  ret i32 %empty_83
}

; [#uses=1]
define weak i24 @_ssdm_op_BitConcatenate.i24.i21.i3(i21, i3) nounwind readnone {
entry:
  %empty = zext i21 %0 to i24                     ; [#uses=1 type=i24]
  %empty_84 = zext i3 %1 to i24                   ; [#uses=1 type=i24]
  %empty_85 = shl i24 %empty, 3                   ; [#uses=1 type=i24]
  %empty_86 = or i24 %empty_85, %empty_84         ; [#uses=1 type=i24]
  ret i24 %empty_86
}

; [#uses=1]
define weak i16 @_ssdm_op_BitConcatenate.i16.i13.i3(i13, i3) nounwind readnone {
entry:
  %empty = zext i13 %0 to i16                     ; [#uses=1 type=i16]
  %empty_87 = zext i3 %1 to i16                   ; [#uses=1 type=i16]
  %empty_88 = shl i16 %empty, 3                   ; [#uses=1 type=i16]
  %empty_89 = or i16 %empty_88, %empty_87         ; [#uses=1 type=i16]
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
!27 = metadata !{i32 790533, metadata !28, metadata !"ctx.datalen", null, i32 86, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!28 = metadata !{i32 786689, metadata !29, metadata !"ctx", metadata !30, i32 16777302, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!29 = metadata !{i32 786478, i32 0, metadata !30, metadata !"sha256_update", metadata !"sha256_update", metadata !"", metadata !30, i32 86, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !54, i32 87} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 786473, metadata !"sha256/src/sha256_impl.c", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!31 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!32 = metadata !{null, metadata !33, metadata !53, metadata !44}
!33 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ]
!34 = metadata !{i32 786454, null, metadata !"SHA256_CTX", metadata !30, i32 11, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_typedef ]
!35 = metadata !{i32 786451, null, metadata !"", metadata !36, i32 6, i64 864, i64 32, i32 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!36 = metadata !{i32 786473, metadata !"sha256/src/sha256_impl.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!37 = metadata !{metadata !38, metadata !43, metadata !45, metadata !49}
!38 = metadata !{i32 786445, metadata !35, metadata !"data", metadata !36, i32 7, i64 512, i64 8, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ]
!39 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !40, metadata !41, i32 0, i32 0} ; [ DW_TAG_array_type ]
!40 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!41 = metadata !{metadata !42}
!42 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!43 = metadata !{i32 786445, metadata !35, metadata !"datalen", metadata !36, i32 8, i64 32, i64 32, i64 512, i32 0, metadata !44} ; [ DW_TAG_member ]
!44 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!45 = metadata !{i32 786445, metadata !35, metadata !"bitlen", metadata !36, i32 9, i64 64, i64 32, i64 544, i32 0, metadata !46} ; [ DW_TAG_member ]
!46 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 64, i64 32, i32 0, i32 0, metadata !44, metadata !47, i32 0, i32 0} ; [ DW_TAG_array_type ]
!47 = metadata !{metadata !48}
!48 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ]
!49 = metadata !{i32 786445, metadata !35, metadata !"state", metadata !36, i32 10, i64 256, i64 32, i64 608, i32 0, metadata !50} ; [ DW_TAG_member ]
!50 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 32, i32 0, i32 0, metadata !44, metadata !51, i32 0, i32 0} ; [ DW_TAG_array_type ]
!51 = metadata !{metadata !52}
!52 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!53 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ]
!54 = metadata !{metadata !55}
!55 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!56 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !57} ; [ DW_TAG_pointer_type ]
!57 = metadata !{i32 786452, null, metadata !"", metadata !36, i32 6, i64 32, i64 32, i32 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!58 = metadata !{metadata !43}
!59 = metadata !{i32 786689, metadata !29, metadata !"len", metadata !30, i32 50331734, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!60 = metadata !{i32 86, i32 105, metadata !29, null}
!61 = metadata !{i32 86, i32 32, metadata !29, null}
!62 = metadata !{i32 790531, metadata !28, metadata !"ctx.data", null, i32 86, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!63 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ]
!64 = metadata !{i32 786452, null, metadata !"", metadata !36, i32 6, i64 512, i64 32, i32 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!65 = metadata !{metadata !38}
!66 = metadata !{i32 786689, metadata !29, metadata !"data", null, i32 86, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!67 = metadata !{i32 86, i32 67, metadata !29, null}
!68 = metadata !{i32 90, i32 9, metadata !69, null}
!69 = metadata !{i32 786443, metadata !70, i32 90, i32 4, metadata !30, i32 7} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 786443, metadata !29, i32 87, i32 1, metadata !30, i32 6} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 90, i32 23, metadata !69, null}
!72 = metadata !{i32 786688, metadata !70, metadata !"i", metadata !30, i32 88, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!73 = metadata !{i32 92, i32 7, metadata !74, null}
!74 = metadata !{i32 786443, metadata !69, i32 90, i32 28, metadata !30, i32 8} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 91, i32 7, metadata !74, null}
!76 = metadata !{i32 93, i32 7, metadata !74, null}
!77 = metadata !{i32 94, i32 10, metadata !78, null}
!78 = metadata !{i32 786443, metadata !74, i32 93, i32 31, metadata !30, i32 9} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 95, i32 51, metadata !78, null}
!80 = metadata !{i32 95, i32 69, metadata !78, null}
!81 = metadata !{i32 95, i32 10, metadata !78, null}
!82 = metadata !{i32 97, i32 7, metadata !78, null}
!83 = metadata !{i32 99, i32 1, metadata !70, null}
!84 = metadata !{i32 786689, metadata !85, metadata !"data", null, i32 30, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!85 = metadata !{i32 786478, i32 0, metadata !30, metadata !"sha256_transform", metadata !"sha256_transform", metadata !"", metadata !30, i32 30, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !54, i32 31} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!87 = metadata !{null, metadata !33, metadata !53}
!88 = metadata !{i32 30, i32 70, metadata !85, null}
!89 = metadata !{i32 786688, metadata !90, metadata !"m", metadata !30, i32 32, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!90 = metadata !{i32 786443, metadata !85, i32 31, i32 1, metadata !30, i32 0} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !44, metadata !41, i32 0, i32 0} ; [ DW_TAG_array_type ]
!92 = metadata !{i32 32, i32 60, metadata !90, null}
!93 = metadata !{i32 34, i32 9, metadata !94, null}
!94 = metadata !{i32 786443, metadata !90, i32 34, i32 4, metadata !30, i32 1} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 34, i32 26, metadata !94, null}
!96 = metadata !{i32 36, i32 4, metadata !97, null}
!97 = metadata !{i32 786443, metadata !90, i32 36, i32 4, metadata !30, i32 2} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 35, i32 7, metadata !94, null}
!99 = metadata !{i32 786688, metadata !90, metadata !"j", metadata !30, i32 32, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 48, i32 9, metadata !101, null}
!101 = metadata !{i32 786443, metadata !90, i32 48, i32 4, metadata !30, i32 3} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 37, i32 7, metadata !97, null}
!103 = metadata !{i32 36, i32 20, metadata !97, null}
!104 = metadata !{i32 786688, metadata !90, metadata !"i", metadata !30, i32 32, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 48, i32 24, metadata !101, null}
!106 = metadata !{i32 49, i32 7, metadata !107, null}
!107 = metadata !{i32 786443, metadata !101, i32 48, i32 29, metadata !30, i32 4} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 786688, metadata !90, metadata !"t1", metadata !30, i32 32, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 50, i32 7, metadata !107, null}
!110 = metadata !{i32 786688, metadata !90, metadata !"h", metadata !30, i32 32, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!111 = metadata !{i32 51, i32 7, metadata !107, null}
!112 = metadata !{i32 786688, metadata !90, metadata !"g", metadata !30, i32 32, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!113 = metadata !{i32 52, i32 7, metadata !107, null}
!114 = metadata !{i32 786688, metadata !90, metadata !"f", metadata !30, i32 32, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!115 = metadata !{i32 53, i32 7, metadata !107, null}
!116 = metadata !{i32 54, i32 7, metadata !107, null}
!117 = metadata !{i32 786688, metadata !90, metadata !"e", metadata !30, i32 32, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!118 = metadata !{i32 786688, metadata !90, metadata !"d", metadata !30, i32 32, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!119 = metadata !{i32 55, i32 7, metadata !107, null}
!120 = metadata !{i32 786688, metadata !90, metadata !"c", metadata !30, i32 32, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!121 = metadata !{i32 56, i32 7, metadata !107, null}
!122 = metadata !{i32 786688, metadata !90, metadata !"b", metadata !30, i32 32, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!123 = metadata !{i32 57, i32 7, metadata !107, null}
!124 = metadata !{i32 58, i32 7, metadata !107, null}
!125 = metadata !{i32 786688, metadata !90, metadata !"a", metadata !30, i32 32, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!126 = metadata !{i32 61, i32 4, metadata !90, null}
!127 = metadata !{i32 62, i32 4, metadata !90, null}
!128 = metadata !{i32 63, i32 4, metadata !90, null}
!129 = metadata !{i32 64, i32 4, metadata !90, null}
!130 = metadata !{i32 65, i32 4, metadata !90, null}
!131 = metadata !{i32 66, i32 4, metadata !90, null}
!132 = metadata !{i32 67, i32 4, metadata !90, null}
!133 = metadata !{i32 68, i32 4, metadata !90, null}
!134 = metadata !{i32 69, i32 1, metadata !90, null}
!135 = metadata !{i32 790533, metadata !136, metadata !"ctx.datalen", null, i32 101, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!136 = metadata !{i32 786689, metadata !137, metadata !"ctx", metadata !30, i32 16777317, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!137 = metadata !{i32 786478, i32 0, metadata !30, metadata !"sha256_final", metadata !"sha256_final", metadata !"", metadata !30, i32 101, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !54, i32 102} ; [ DW_TAG_subprogram ]
!138 = metadata !{i32 101, i32 31, metadata !137, null}
!139 = metadata !{i32 790531, metadata !136, metadata !"ctx.data", null, i32 101, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!140 = metadata !{i32 786689, metadata !137, metadata !"hash", null, i32 101, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!141 = metadata !{i32 101, i32 66, metadata !137, null}
!142 = metadata !{i32 786688, metadata !143, metadata !"i", metadata !30, i32 103, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!143 = metadata !{i32 786443, metadata !137, i32 102, i32 1, metadata !30, i32 10} ; [ DW_TAG_lexical_block ]
!144 = metadata !{i32 105, i32 2, metadata !143, null}
!145 = metadata !{i32 108, i32 2, metadata !143, null}
!146 = metadata !{i32 109, i32 3, metadata !147, null}
!147 = metadata !{i32 786443, metadata !143, i32 108, i32 25, metadata !30, i32 11} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 114, i32 3, metadata !149, null}
!149 = metadata !{i32 786443, metadata !143, i32 113, i32 7, metadata !30, i32 12} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 110, i32 3, metadata !147, null}
!151 = metadata !{i32 111, i32 4, metadata !147, null}
!152 = metadata !{i32 115, i32 3, metadata !149, null}
!153 = metadata !{i32 116, i32 4, metadata !149, null}
!154 = metadata !{i32 117, i32 3, metadata !149, null}
!155 = metadata !{i32 118, i32 8, metadata !156, null}
!156 = metadata !{i32 786443, metadata !149, i32 118, i32 3, metadata !30, i32 13} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 118, i32 23, metadata !156, null}
!158 = metadata !{i32 119, i32 4, metadata !159, null}
!159 = metadata !{i32 786443, metadata !156, i32 118, i32 29, metadata !30, i32 14} ; [ DW_TAG_lexical_block ]
!160 = metadata !{i32 125, i32 4, metadata !143, null}
!161 = metadata !{i32 125, i32 58, metadata !143, null}
!162 = metadata !{i32 125, i32 76, metadata !143, null}
!163 = metadata !{i32 126, i32 4, metadata !143, null}
!164 = metadata !{i32 127, i32 4, metadata !143, null}
!165 = metadata !{i32 128, i32 4, metadata !143, null}
!166 = metadata !{i32 129, i32 4, metadata !143, null}
!167 = metadata !{i32 130, i32 4, metadata !143, null}
!168 = metadata !{i32 131, i32 4, metadata !143, null}
!169 = metadata !{i32 132, i32 4, metadata !143, null}
!170 = metadata !{i32 133, i32 4, metadata !143, null}
!171 = metadata !{i32 134, i32 4, metadata !143, null}
!172 = metadata !{i32 138, i32 9, metadata !173, null}
!173 = metadata !{i32 786443, metadata !143, i32 138, i32 4, metadata !30, i32 15} ; [ DW_TAG_lexical_block ]
!174 = metadata !{i32 138, i32 21, metadata !173, null}
!175 = metadata !{i32 139, i32 7, metadata !176, null}
!176 = metadata !{i32 786443, metadata !173, i32 138, i32 26, metadata !30, i32 16} ; [ DW_TAG_lexical_block ]
!177 = metadata !{i32 140, i32 7, metadata !176, null}
!178 = metadata !{i32 141, i32 7, metadata !176, null}
!179 = metadata !{i32 142, i32 7, metadata !176, null}
!180 = metadata !{i32 143, i32 7, metadata !176, null}
!181 = metadata !{i32 144, i32 7, metadata !176, null}
!182 = metadata !{i32 145, i32 7, metadata !176, null}
!183 = metadata !{i32 146, i32 7, metadata !176, null}
!184 = metadata !{i32 786689, metadata !185, metadata !"bytes", metadata !186, i32 50331658, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!185 = metadata !{i32 786478, i32 0, metadata !186, metadata !"sha256", metadata !"sha256", metadata !"", metadata !186, i32 8, metadata !187, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !54, i32 11} ; [ DW_TAG_subprogram ]
!186 = metadata !{i32 786473, metadata !"sha256/src/sha256.c", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!187 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !188, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!188 = metadata !{null, metadata !53, metadata !44, metadata !44, metadata !53}
!189 = metadata !{i32 790529, metadata !190, metadata !"sha256ctx.datalen", null, i32 28, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!190 = metadata !{i32 786688, metadata !191, metadata !"sha256ctx", metadata !186, i32 28, metadata !192, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!191 = metadata !{i32 786443, metadata !185, i32 11, i32 80, metadata !186, i32 0} ; [ DW_TAG_lexical_block ]
!192 = metadata !{i32 786454, null, metadata !"SHA256_CTX", metadata !186, i32 11, i64 0, i64 0, i64 0, i32 0, metadata !193} ; [ DW_TAG_typedef ]
!193 = metadata !{i32 786451, null, metadata !"", metadata !36, i32 6, i64 864, i64 32, i32 0, i32 0, null, metadata !194, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!194 = metadata !{metadata !195, metadata !196, metadata !197, metadata !198}
!195 = metadata !{i32 786445, metadata !193, metadata !"data", metadata !36, i32 7, i64 512, i64 8, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ]
!196 = metadata !{i32 786445, metadata !193, metadata !"datalen", metadata !36, i32 8, i64 32, i64 32, i64 512, i32 0, metadata !44} ; [ DW_TAG_member ]
!197 = metadata !{i32 786445, metadata !193, metadata !"bitlen", metadata !36, i32 9, i64 64, i64 32, i64 544, i32 0, metadata !46} ; [ DW_TAG_member ]
!198 = metadata !{i32 786445, metadata !193, metadata !"state", metadata !36, i32 10, i64 256, i64 32, i64 608, i32 0, metadata !50} ; [ DW_TAG_member ]
!199 = metadata !{i32 786452, null, metadata !"", metadata !36, i32 6, i64 32, i64 32, i32 0, i32 0, null, metadata !200, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!200 = metadata !{metadata !196}
!201 = metadata !{i32 790529, metadata !190, metadata !"sha256ctx.bitlen[0]", null, i32 28, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!202 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 32, i32 0, i32 0, null, metadata !203, i32 0, i32 0} ; [ DW_TAG_array_type ]
!203 = metadata !{metadata !44}
!204 = metadata !{i32 790529, metadata !190, metadata !"sha256ctx.bitlen[1]", null, i32 28, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!205 = metadata !{i32 790529, metadata !190, metadata !"sha256ctx.state[0]", null, i32 28, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!206 = metadata !{i32 790529, metadata !190, metadata !"sha256ctx.state[1]", null, i32 28, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!207 = metadata !{i32 790529, metadata !190, metadata !"sha256ctx.state[2]", null, i32 28, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!208 = metadata !{i32 790529, metadata !190, metadata !"sha256ctx.state[3]", null, i32 28, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!209 = metadata !{i32 790529, metadata !190, metadata !"sha256ctx.state[4]", null, i32 28, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!210 = metadata !{i32 790529, metadata !190, metadata !"sha256ctx.state[5]", null, i32 28, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!211 = metadata !{i32 790529, metadata !190, metadata !"sha256ctx.state[6]", null, i32 28, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!212 = metadata !{i32 790529, metadata !190, metadata !"sha256ctx.state[7]", null, i32 28, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!213 = metadata !{i32 786688, metadata !191, metadata !"seg_offset", metadata !186, i32 23, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!214 = metadata !{metadata !215}
!215 = metadata !{i32 0, i32 7, metadata !216}
!216 = metadata !{metadata !217}
!217 = metadata !{metadata !"data", metadata !218, metadata !"unsigned char", i32 0, i32 7}
!218 = metadata !{metadata !219}
!219 = metadata !{i32 0, i32 255, i32 1}
!220 = metadata !{metadata !221}
!221 = metadata !{i32 0, i32 31, metadata !222}
!222 = metadata !{metadata !223}
!223 = metadata !{metadata !"base_offset", metadata !224, metadata !"unsigned int", i32 0, i32 31}
!224 = metadata !{metadata !225}
!225 = metadata !{i32 0, i32 0, i32 0}
!226 = metadata !{metadata !227}
!227 = metadata !{i32 0, i32 31, metadata !228}
!228 = metadata !{metadata !229}
!229 = metadata !{metadata !"bytes", metadata !224, metadata !"unsigned int", i32 0, i32 31}
!230 = metadata !{metadata !231}
!231 = metadata !{i32 0, i32 7, metadata !232}
!232 = metadata !{metadata !233}
!233 = metadata !{metadata !"digest", metadata !234, metadata !"unsigned char", i32 0, i32 7}
!234 = metadata !{metadata !235}
!235 = metadata !{i32 0, i32 31, i32 1}
!236 = metadata !{i32 10, i32 18, metadata !185, null}
!237 = metadata !{i32 786689, metadata !185, metadata !"base_offset", metadata !186, i32 33554441, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!238 = metadata !{i32 9, i32 18, metadata !185, null}
!239 = metadata !{i32 786689, metadata !185, metadata !"data", null, i32 8, metadata !240, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!240 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !40, metadata !241, i32 0, i32 0} ; [ DW_TAG_array_type ]
!241 = metadata !{metadata !242}
!242 = metadata !{i32 786465, i64 0, i64 255}     ; [ DW_TAG_subrange_type ]
!243 = metadata !{i32 8, i32 28, metadata !185, null}
!244 = metadata !{i32 786689, metadata !185, metadata !"digest", null, i32 11, metadata !245, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!245 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !40, metadata !246, i32 0, i32 0} ; [ DW_TAG_array_type ]
!246 = metadata !{metadata !247}
!247 = metadata !{i32 786465, i64 0, i64 31}      ; [ DW_TAG_subrange_type ]
!248 = metadata !{i32 11, i32 19, metadata !185, null}
!249 = metadata !{i32 17, i32 1, metadata !191, null}
!250 = metadata !{i32 18, i32 1, metadata !191, null}
!251 = metadata !{i32 19, i32 1, metadata !191, null}
!252 = metadata !{i32 786688, metadata !191, metadata !"seg_buf", metadata !186, i32 22, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!253 = metadata !{i32 22, i32 16, metadata !191, null}
!254 = metadata !{i32 786688, metadata !191, metadata !"n", metadata !186, i32 25, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!255 = metadata !{i32 25, i32 24, metadata !191, null}
!256 = metadata !{i32 790529, metadata !190, metadata !"sha256ctx.data", null, i32 28, metadata !257, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!257 = metadata !{i32 786452, null, metadata !"", metadata !36, i32 6, i64 512, i64 32, i32 0, i32 0, null, metadata !258, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!258 = metadata !{metadata !195}
!259 = metadata !{i32 28, i32 13, metadata !191, null}
!260 = metadata !{i32 32, i32 2, metadata !191, null}
!261 = metadata !{i32 38, i32 4, metadata !262, null}
!262 = metadata !{i32 786443, metadata !263, i32 35, i32 3, metadata !186, i32 2} ; [ DW_TAG_lexical_block ]
!263 = metadata !{i32 786443, metadata !191, i32 33, i32 2, metadata !186, i32 1} ; [ DW_TAG_lexical_block ]
!264 = metadata !{i32 34, i32 3, metadata !263, null}
!265 = metadata !{i32 36, i32 9, metadata !266, null}
!266 = metadata !{i32 786443, metadata !262, i32 36, i32 4, metadata !186, i32 3} ; [ DW_TAG_lexical_block ]
!267 = metadata !{i32 44, i32 9, metadata !268, null}
!268 = metadata !{i32 786443, metadata !269, i32 44, i32 4, metadata !186, i32 5} ; [ DW_TAG_lexical_block ]
!269 = metadata !{i32 786443, metadata !263, i32 43, i32 3, metadata !186, i32 4} ; [ DW_TAG_lexical_block ]
!270 = metadata !{i32 36, i32 20, metadata !266, null}
!271 = metadata !{i32 37, i32 5, metadata !266, null}
!272 = metadata !{i32 786688, metadata !191, metadata !"i", metadata !186, i32 24, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!273 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!274 = metadata !{i32 40, i32 4, metadata !262, null}
!275 = metadata !{i32 39, i32 4, metadata !262, null}
!276 = metadata !{i32 41, i32 3, metadata !262, null}
!277 = metadata !{i32 44, i32 19, metadata !268, null}
!278 = metadata !{i32 45, i32 5, metadata !268, null}
!279 = metadata !{i32 46, i32 4, metadata !269, null}
!280 = metadata !{i32 52, i32 2, metadata !191, null}
!281 = metadata !{i32 56, i32 2, metadata !282, null}
!282 = metadata !{i32 786443, metadata !283, i32 54, i32 23, metadata !186, i32 7} ; [ DW_TAG_lexical_block ]
!283 = metadata !{i32 786443, metadata !191, i32 54, i32 2, metadata !186, i32 6} ; [ DW_TAG_lexical_block ]
!284 = metadata !{i32 58, i32 1, metadata !191, null}
