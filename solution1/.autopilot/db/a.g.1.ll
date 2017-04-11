; ModuleID = '/home/brett/Thesis/Vivado_WS/sha256/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SHA256_CTX.0 = type { [64 x i8], i32, [2 x i32], [8 x i32] }

@sha256.str = internal unnamed_addr constant [7 x i8] c"sha256\00" ; [#uses=1 type=[7 x i8]*]
@k = constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16 ; [#uses=1 type=[64 x i32]*]
@.str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]

; [#uses=2]
define internal fastcc void @sha256_update(%struct.SHA256_CTX.0* %ctx, i8* %data, i32 %len) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{%struct.SHA256_CTX.0* %ctx}, i64 0, metadata !87), !dbg !88 ; [debug line = 86:32] [debug variable = ctx]
  call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !89), !dbg !90 ; [debug line = 86:67] [debug variable = data]
  call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !91), !dbg !92 ; [debug line = 86:105] [debug variable = len]
  %ctx.addr = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 1, !dbg !93 ; [#uses=4 type=i32*] [debug line = 91:7]
  %ctx.addr.1 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 0, !dbg !97 ; [#uses=1 type=i8*] [debug line = 94:10]
  %ctx.addr.2 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 2, i64 0, !dbg !99 ; [#uses=2 type=i32*] [debug line = 95:10]
  %ctx.addr.3 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 2, i64 1, !dbg !100 ; [#uses=2 type=i32*] [debug line = 95:51]
  br label %1, !dbg !101                          ; [debug line = 90:9]

; <label>:1                                       ; preds = %._crit_edge, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %._crit_edge ]  ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, %len, !dbg !101     ; [#uses=1 type=i1] [debug line = 90:9]
  br i1 %exitcond, label %5, label %2, !dbg !101  ; [debug line = 90:9]

; <label>:2                                       ; preds = %1
  %tmp = zext i32 %i to i64, !dbg !93             ; [#uses=1 type=i64] [debug line = 91:7]
  %data.addr = getelementptr inbounds i8* %data, i64 %tmp, !dbg !93 ; [#uses=1 type=i8*] [debug line = 91:7]
  %data.load = load i8* %data.addr, align 1, !dbg !93 ; [#uses=2 type=i8] [debug line = 91:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %data.load) nounwind
  %ctx.load = load i32* %ctx.addr, align 4, !dbg !93 ; [#uses=2 type=i32] [debug line = 91:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load) nounwind
  %tmp.1 = zext i32 %ctx.load to i64, !dbg !93    ; [#uses=1 type=i64] [debug line = 91:7]
  %ctx.addr.4 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 %tmp.1, !dbg !93 ; [#uses=1 type=i8*] [debug line = 91:7]
  store i8 %data.load, i8* %ctx.addr.4, align 1, !dbg !93 ; [debug line = 91:7]
  %ctx.load.1 = load i32* %ctx.addr, align 4, !dbg !102 ; [#uses=2 type=i32] [debug line = 92:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.1) nounwind
  %tmp.2 = add i32 %ctx.load.1, 1, !dbg !102      ; [#uses=3 type=i32] [debug line = 92:7]
  store i32 %tmp.2, i32* %ctx.addr, align 4, !dbg !102 ; [debug line = 92:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.2) nounwind
  %tmp.3 = icmp eq i32 %tmp.2, 64, !dbg !103      ; [#uses=1 type=i1] [debug line = 93:7]
  br i1 %tmp.3, label %3, label %._crit_edge, !dbg !103 ; [debug line = 93:7]

; <label>:3                                       ; preds = %2
  call fastcc void @sha256_transform(%struct.SHA256_CTX.0* %ctx, i8* %ctx.addr.1), !dbg !97 ; [debug line = 94:10]
  %ctx.load.2 = load i32* %ctx.addr.2, align 4, !dbg !99 ; [#uses=4 type=i32] [debug line = 95:10]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.2) nounwind
  %tmp.4 = icmp ugt i32 %ctx.load.2, -513, !dbg !99 ; [#uses=1 type=i1] [debug line = 95:10]
  br i1 %tmp.4, label %4, label %._crit_edge1, !dbg !99 ; [debug line = 95:10]

; <label>:4                                       ; preds = %3
  %ctx.load.3 = load i32* %ctx.addr.3, align 4, !dbg !100 ; [#uses=2 type=i32] [debug line = 95:51]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.3) nounwind
  %tmp.5 = add i32 %ctx.load.3, 1, !dbg !100      ; [#uses=1 type=i32] [debug line = 95:51]
  store i32 %tmp.5, i32* %ctx.addr.3, align 4, !dbg !100 ; [debug line = 95:51]
  br label %._crit_edge1, !dbg !100               ; [debug line = 95:51]

._crit_edge1:                                     ; preds = %4, %3
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.2) nounwind
  %tmp.6 = add i32 %ctx.load.2, 512, !dbg !104    ; [#uses=1 type=i32] [debug line = 95:69]
  store i32 %tmp.6, i32* %ctx.addr.2, align 4, !dbg !104 ; [debug line = 95:69]
  store i32 0, i32* %ctx.addr, align 4, !dbg !105 ; [debug line = 96:10]
  br label %._crit_edge, !dbg !106                ; [debug line = 97:7]

._crit_edge:                                      ; preds = %._crit_edge1, %2
  %i.1 = add i32 %i, 1, !dbg !107                 ; [#uses=1 type=i32] [debug line = 90:23]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !108), !dbg !107 ; [debug line = 90:23] [debug variable = i]
  br label %1, !dbg !107                          ; [debug line = 90:23]

; <label>:5                                       ; preds = %1
  ret void, !dbg !109                             ; [debug line = 99:1]
}

; [#uses=3]
define internal fastcc void @sha256_transform(%struct.SHA256_CTX.0* %ctx, i8* %data) nounwind uwtable {
  %m = alloca [64 x i32], align 16                ; [#uses=7 type=[64 x i32]*]
  call void @llvm.dbg.value(metadata !{%struct.SHA256_CTX.0* %ctx}, i64 0, metadata !110), !dbg !111 ; [debug line = 30:35] [debug variable = ctx]
  call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !112), !dbg !113 ; [debug line = 30:70] [debug variable = data]
  call void @llvm.dbg.declare(metadata !{[64 x i32]* %m}, metadata !114), !dbg !116 ; [debug line = 32:60] [debug variable = m]
  br label %1, !dbg !117                          ; [debug line = 34:9]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %tmp.26, %2 ]         ; [#uses=3 type=i32]
  %j = phi i32 [ 0, %0 ], [ %j.1, %2 ]            ; [#uses=5 type=i32]
  %tmp = icmp eq i32 %i, 16, !dbg !117            ; [#uses=1 type=i1] [debug line = 34:9]
  br i1 %tmp, label %.preheader.preheader, label %2, !dbg !117 ; [debug line = 34:9]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !119                 ; [debug line = 36:4]

; <label>:2                                       ; preds = %1
  %tmp.8 = zext i32 %j to i64, !dbg !121          ; [#uses=1 type=i64] [debug line = 35:7]
  %data.addr = getelementptr inbounds i8* %data, i64 %tmp.8, !dbg !121 ; [#uses=1 type=i8*] [debug line = 35:7]
  %data.load = load i8* %data.addr, align 1, !dbg !121 ; [#uses=2 type=i8] [debug line = 35:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %data.load) nounwind
  %tmp.9 = zext i8 %data.load to i32, !dbg !121   ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.10 = shl nuw i32 %tmp.9, 24, !dbg !121     ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.11 = or i32 %j, 1, !dbg !121               ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.12 = zext i32 %tmp.11 to i64, !dbg !121    ; [#uses=1 type=i64] [debug line = 35:7]
  %data.addr.1 = getelementptr inbounds i8* %data, i64 %tmp.12, !dbg !121 ; [#uses=1 type=i8*] [debug line = 35:7]
  %data.load.1 = load i8* %data.addr.1, align 1, !dbg !121 ; [#uses=2 type=i8] [debug line = 35:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %data.load.1) nounwind
  %tmp.13 = zext i8 %data.load.1 to i32, !dbg !121 ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.14 = shl nuw nsw i32 %tmp.13, 16, !dbg !121 ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.15 = or i32 %j, 2, !dbg !121               ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.16 = zext i32 %tmp.15 to i64, !dbg !121    ; [#uses=1 type=i64] [debug line = 35:7]
  %data.addr.2 = getelementptr inbounds i8* %data, i64 %tmp.16, !dbg !121 ; [#uses=1 type=i8*] [debug line = 35:7]
  %data.load.2 = load i8* %data.addr.2, align 1, !dbg !121 ; [#uses=2 type=i8] [debug line = 35:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %data.load.2) nounwind
  %tmp.17 = zext i8 %data.load.2 to i32, !dbg !121 ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.18 = shl nuw nsw i32 %tmp.17, 8, !dbg !121 ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.19 = or i32 %j, 3, !dbg !121               ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.20 = zext i32 %tmp.19 to i64, !dbg !121    ; [#uses=1 type=i64] [debug line = 35:7]
  %data.addr.3 = getelementptr inbounds i8* %data, i64 %tmp.20, !dbg !121 ; [#uses=1 type=i8*] [debug line = 35:7]
  %data.load.3 = load i8* %data.addr.3, align 1, !dbg !121 ; [#uses=2 type=i8] [debug line = 35:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %data.load.3) nounwind
  %tmp.21 = zext i8 %data.load.3 to i32, !dbg !121 ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.22 = or i32 %tmp.14, %tmp.10, !dbg !121    ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.23 = or i32 %tmp.22, %tmp.18, !dbg !121    ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.24 = or i32 %tmp.23, %tmp.21, !dbg !121    ; [#uses=1 type=i32] [debug line = 35:7]
  %tmp.25 = zext i32 %i to i64, !dbg !121         ; [#uses=1 type=i64] [debug line = 35:7]
  %m.addr = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp.25, !dbg !121 ; [#uses=1 type=i32*] [debug line = 35:7]
  store i32 %tmp.24, i32* %m.addr, align 4, !dbg !121 ; [debug line = 35:7]
  %tmp.26 = add i32 %i, 1, !dbg !122              ; [#uses=1 type=i32] [debug line = 34:26]
  %j.1 = add i32 %j, 4, !dbg !122                 ; [#uses=1 type=i32] [debug line = 34:26]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !123), !dbg !122 ; [debug line = 34:26] [debug variable = j]
  br label %1, !dbg !122                          ; [debug line = 34:26]

.preheader:                                       ; preds = %3, %.preheader.preheader
  %i.1 = phi i32 [ %i.3, %3 ], [ 16, %.preheader.preheader ] ; [#uses=7 type=i32]
  %exitcond = icmp eq i32 %i.1, 64, !dbg !119     ; [#uses=1 type=i1] [debug line = 36:4]
  br i1 %exitcond, label %4, label %3, !dbg !119  ; [debug line = 36:4]

; <label>:3                                       ; preds = %.preheader
  %tmp.28 = add i32 %i.1, -2, !dbg !124           ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.29 = zext i32 %tmp.28 to i64, !dbg !124    ; [#uses=1 type=i64] [debug line = 37:7]
  %m.addr.1 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp.29, !dbg !124 ; [#uses=1 type=i32*] [debug line = 37:7]
  %m.load = load i32* %m.addr.1, align 4, !dbg !124 ; [#uses=10 type=i32] [debug line = 37:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load) nounwind
  %tmp.30 = lshr i32 %m.load, 17, !dbg !124       ; [#uses=1 type=i32] [debug line = 37:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load) nounwind
  %tmp.31 = shl i32 %m.load, 15, !dbg !124        ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.32 = or i32 %tmp.31, %tmp.30, !dbg !124    ; [#uses=1 type=i32] [debug line = 37:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load) nounwind
  %tmp.33 = lshr i32 %m.load, 19, !dbg !124       ; [#uses=1 type=i32] [debug line = 37:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load) nounwind
  %tmp.34 = shl i32 %m.load, 13, !dbg !124        ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.35 = or i32 %tmp.34, %tmp.33, !dbg !124    ; [#uses=1 type=i32] [debug line = 37:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load) nounwind
  %tmp.36 = lshr i32 %m.load, 10, !dbg !124       ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.37 = xor i32 %tmp.32, %tmp.36, !dbg !124   ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.38 = xor i32 %tmp.37, %tmp.35, !dbg !124   ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.39 = add i32 %i.1, -7, !dbg !124           ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.40 = zext i32 %tmp.39 to i64, !dbg !124    ; [#uses=1 type=i64] [debug line = 37:7]
  %m.addr.2 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp.40, !dbg !124 ; [#uses=1 type=i32*] [debug line = 37:7]
  %m.load.1 = load i32* %m.addr.2, align 4, !dbg !124 ; [#uses=2 type=i32] [debug line = 37:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load.1) nounwind
  %tmp.41 = add i32 %i.1, -15, !dbg !124          ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.42 = zext i32 %tmp.41 to i64, !dbg !124    ; [#uses=1 type=i64] [debug line = 37:7]
  %m.addr.3 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp.42, !dbg !124 ; [#uses=1 type=i32*] [debug line = 37:7]
  %m.load.2 = load i32* %m.addr.3, align 4, !dbg !124 ; [#uses=10 type=i32] [debug line = 37:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load.2) nounwind
  %tmp.43 = lshr i32 %m.load.2, 7, !dbg !124      ; [#uses=1 type=i32] [debug line = 37:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load.2) nounwind
  %tmp.44 = shl i32 %m.load.2, 25, !dbg !124      ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.45 = or i32 %tmp.44, %tmp.43, !dbg !124    ; [#uses=1 type=i32] [debug line = 37:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load.2) nounwind
  %tmp.46 = lshr i32 %m.load.2, 18, !dbg !124     ; [#uses=1 type=i32] [debug line = 37:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load.2) nounwind
  %tmp.47 = shl i32 %m.load.2, 14, !dbg !124      ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.48 = or i32 %tmp.47, %tmp.46, !dbg !124    ; [#uses=1 type=i32] [debug line = 37:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load.2) nounwind
  %tmp.49 = lshr i32 %m.load.2, 3, !dbg !124      ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.50 = xor i32 %tmp.45, %tmp.49, !dbg !124   ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.51 = xor i32 %tmp.50, %tmp.48, !dbg !124   ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.52 = add i32 %i.1, -16, !dbg !124          ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.53 = zext i32 %tmp.52 to i64, !dbg !124    ; [#uses=1 type=i64] [debug line = 37:7]
  %m.addr.4 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp.53, !dbg !124 ; [#uses=1 type=i32*] [debug line = 37:7]
  %m.load.3 = load i32* %m.addr.4, align 4, !dbg !124 ; [#uses=2 type=i32] [debug line = 37:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load.3) nounwind
  %tmp.54 = add i32 %m.load.1, %tmp.38, !dbg !124 ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.55 = add i32 %tmp.54, %tmp.51, !dbg !124   ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.56 = add i32 %tmp.55, %m.load.3, !dbg !124 ; [#uses=1 type=i32] [debug line = 37:7]
  %tmp.57 = zext i32 %i.1 to i64, !dbg !124       ; [#uses=1 type=i64] [debug line = 37:7]
  %m.addr.5 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp.57, !dbg !124 ; [#uses=1 type=i32*] [debug line = 37:7]
  store i32 %tmp.56, i32* %m.addr.5, align 4, !dbg !124 ; [debug line = 37:7]
  %i.3 = add i32 %i.1, 1, !dbg !125               ; [#uses=1 type=i32] [debug line = 36:20]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !126), !dbg !125 ; [debug line = 36:20] [debug variable = i]
  br label %.preheader, !dbg !125                 ; [debug line = 36:20]

; <label>:4                                       ; preds = %.preheader
  %ctx.addr = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 0, !dbg !127 ; [#uses=2 type=i32*] [debug line = 39:4]
  %a = load i32* %ctx.addr, align 4, !dbg !127    ; [#uses=4 type=i32] [debug line = 39:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %a) nounwind
  call void @llvm.dbg.value(metadata !{i32 %a}, i64 0, metadata !128), !dbg !127 ; [debug line = 39:4] [debug variable = a]
  %ctx.addr.5 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 1, !dbg !129 ; [#uses=2 type=i32*] [debug line = 40:4]
  %b = load i32* %ctx.addr.5, align 4, !dbg !129  ; [#uses=4 type=i32] [debug line = 40:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %b) nounwind
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !130), !dbg !129 ; [debug line = 40:4] [debug variable = b]
  %ctx.addr.6 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 2, !dbg !131 ; [#uses=2 type=i32*] [debug line = 41:4]
  %c = load i32* %ctx.addr.6, align 4, !dbg !131  ; [#uses=4 type=i32] [debug line = 41:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %c) nounwind
  call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !132), !dbg !131 ; [debug line = 41:4] [debug variable = c]
  %ctx.addr.7 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 3, !dbg !133 ; [#uses=2 type=i32*] [debug line = 42:4]
  %d = load i32* %ctx.addr.7, align 4, !dbg !133  ; [#uses=4 type=i32] [debug line = 42:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %d) nounwind
  call void @llvm.dbg.value(metadata !{i32 %d}, i64 0, metadata !134), !dbg !133 ; [debug line = 42:4] [debug variable = d]
  %ctx.addr.8 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 4, !dbg !135 ; [#uses=2 type=i32*] [debug line = 43:4]
  %e = load i32* %ctx.addr.8, align 4, !dbg !135  ; [#uses=4 type=i32] [debug line = 43:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %e) nounwind
  call void @llvm.dbg.value(metadata !{i32 %e}, i64 0, metadata !136), !dbg !135 ; [debug line = 43:4] [debug variable = e]
  %ctx.addr.9 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 5, !dbg !137 ; [#uses=2 type=i32*] [debug line = 44:4]
  %f = load i32* %ctx.addr.9, align 4, !dbg !137  ; [#uses=4 type=i32] [debug line = 44:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %f) nounwind
  call void @llvm.dbg.value(metadata !{i32 %f}, i64 0, metadata !138), !dbg !137 ; [debug line = 44:4] [debug variable = f]
  %ctx.addr.10 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 6, !dbg !139 ; [#uses=2 type=i32*] [debug line = 45:4]
  %g = load i32* %ctx.addr.10, align 4, !dbg !139 ; [#uses=4 type=i32] [debug line = 45:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %g) nounwind
  call void @llvm.dbg.value(metadata !{i32 %g}, i64 0, metadata !140), !dbg !139 ; [debug line = 45:4] [debug variable = g]
  %ctx.addr.11 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 7, !dbg !141 ; [#uses=2 type=i32*] [debug line = 46:4]
  %h = load i32* %ctx.addr.11, align 4, !dbg !141 ; [#uses=4 type=i32] [debug line = 46:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %h) nounwind
  call void @llvm.dbg.value(metadata !{i32 %h}, i64 0, metadata !142), !dbg !141 ; [debug line = 46:4] [debug variable = h]
  br label %5, !dbg !143                          ; [debug line = 48:9]

; <label>:5                                       ; preds = %6, %4
  %h1 = phi i32 [ %h, %4 ], [ %h.2, %6 ]          ; [#uses=2 type=i32]
  %h.2 = phi i32 [ %g, %4 ], [ %g.2, %6 ]         ; [#uses=3 type=i32]
  %g.2 = phi i32 [ %f, %4 ], [ %f.2, %6 ]         ; [#uses=3 type=i32]
  %f.2 = phi i32 [ %e, %4 ], [ %e.2, %6 ]         ; [#uses=10 type=i32]
  %d1 = phi i32 [ %d, %4 ], [ %d.2, %6 ]          ; [#uses=2 type=i32]
  %d.2 = phi i32 [ %c, %4 ], [ %c.2, %6 ]         ; [#uses=4 type=i32]
  %c.2 = phi i32 [ %b, %4 ], [ %b.2, %6 ]         ; [#uses=4 type=i32]
  %b.2 = phi i32 [ %a, %4 ], [ %a.2, %6 ]         ; [#uses=9 type=i32]
  %i.2 = phi i32 [ 0, %4 ], [ %i.4, %6 ]          ; [#uses=3 type=i32]
  %tmp.59 = icmp eq i32 %i.2, 64, !dbg !143       ; [#uses=1 type=i1] [debug line = 48:9]
  br i1 %tmp.59, label %7, label %6, !dbg !143    ; [debug line = 48:9]

; <label>:6                                       ; preds = %5
  %tmp.68 = lshr i32 %f.2, 6, !dbg !145           ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.69 = shl i32 %f.2, 26, !dbg !145           ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.70 = or i32 %tmp.68, %tmp.69, !dbg !145    ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.71 = lshr i32 %f.2, 11, !dbg !145          ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.72 = shl i32 %f.2, 21, !dbg !145           ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.73 = or i32 %tmp.71, %tmp.72, !dbg !145    ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.74 = lshr i32 %f.2, 25, !dbg !145          ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.75 = shl i32 %f.2, 7, !dbg !145            ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.76 = or i32 %tmp.74, %tmp.75, !dbg !145    ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.77 = xor i32 %tmp.76, %tmp.70, !dbg !145   ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.78 = xor i32 %tmp.77, %tmp.73, !dbg !145   ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.79 = and i32 %f.2, %g.2, !dbg !145         ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.80 = xor i32 %f.2, -1, !dbg !145           ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.81 = and i32 %tmp.80, %h.2, !dbg !145      ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.82 = xor i32 %tmp.79, %tmp.81, !dbg !145   ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.83 = zext i32 %i.2 to i64, !dbg !145       ; [#uses=2 type=i64] [debug line = 49:7]
  %k.addr = getelementptr inbounds [64 x i32]* @k, i64 0, i64 %tmp.83, !dbg !145 ; [#uses=1 type=i32*] [debug line = 49:7]
  %k.load = load i32* %k.addr, align 4, !dbg !145 ; [#uses=2 type=i32] [debug line = 49:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %k.load) nounwind
  %m.addr.6 = getelementptr inbounds [64 x i32]* %m, i64 0, i64 %tmp.83, !dbg !145 ; [#uses=1 type=i32*] [debug line = 49:7]
  %m.load.4 = load i32* %m.addr.6, align 4, !dbg !145 ; [#uses=2 type=i32] [debug line = 49:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %m.load.4) nounwind
  %tmp.84 = add i32 %tmp.82, %h1, !dbg !145       ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.85 = add i32 %tmp.84, %tmp.78, !dbg !145   ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.86 = add i32 %tmp.85, %k.load, !dbg !145   ; [#uses=1 type=i32] [debug line = 49:7]
  %t1 = add i32 %tmp.86, %m.load.4, !dbg !145     ; [#uses=2 type=i32] [debug line = 49:7]
  call void @llvm.dbg.value(metadata !{i32 %t1}, i64 0, metadata !147), !dbg !145 ; [debug line = 49:7] [debug variable = t1]
  %tmp.87 = lshr i32 %b.2, 2, !dbg !148           ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.88 = shl i32 %b.2, 30, !dbg !148           ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.89 = or i32 %tmp.87, %tmp.88, !dbg !148    ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.90 = lshr i32 %b.2, 13, !dbg !148          ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.91 = shl i32 %b.2, 19, !dbg !148           ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.92 = or i32 %tmp.90, %tmp.91, !dbg !148    ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.93 = lshr i32 %b.2, 22, !dbg !148          ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.94 = shl i32 %b.2, 10, !dbg !148           ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.95 = or i32 %tmp.93, %tmp.94, !dbg !148    ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.96 = xor i32 %tmp.95, %tmp.89, !dbg !148   ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.97 = xor i32 %tmp.96, %tmp.92, !dbg !148   ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.98 = xor i32 %c.2, %d.2, !dbg !148         ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.99 = and i32 %b.2, %tmp.98, !dbg !148      ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.100 = and i32 %c.2, %d.2, !dbg !148        ; [#uses=1 type=i32] [debug line = 50:7]
  %tmp.101 = xor i32 %tmp.99, %tmp.100, !dbg !148 ; [#uses=1 type=i32] [debug line = 50:7]
  call void @llvm.dbg.value(metadata !{i32 %t2}, i64 0, metadata !149), !dbg !148 ; [debug line = 50:7] [debug variable = t2]
  call void @llvm.dbg.value(metadata !{i32 %h.2}, i64 0, metadata !142), !dbg !150 ; [debug line = 51:7] [debug variable = h]
  call void @llvm.dbg.value(metadata !{i32 %g.2}, i64 0, metadata !140), !dbg !151 ; [debug line = 52:7] [debug variable = g]
  call void @llvm.dbg.value(metadata !{i32 %f.2}, i64 0, metadata !138), !dbg !152 ; [debug line = 53:7] [debug variable = f]
  %e.2 = add i32 %t1, %d1, !dbg !153              ; [#uses=1 type=i32] [debug line = 54:7]
  call void @llvm.dbg.value(metadata !{i32 %e.2}, i64 0, metadata !136), !dbg !153 ; [debug line = 54:7] [debug variable = e]
  call void @llvm.dbg.value(metadata !{i32 %d.2}, i64 0, metadata !134), !dbg !154 ; [debug line = 55:7] [debug variable = d]
  call void @llvm.dbg.value(metadata !{i32 %c.2}, i64 0, metadata !132), !dbg !155 ; [debug line = 56:7] [debug variable = c]
  call void @llvm.dbg.value(metadata !{i32 %b.2}, i64 0, metadata !130), !dbg !156 ; [debug line = 57:7] [debug variable = b]
  %t2 = add i32 %tmp.97, %tmp.101, !dbg !148      ; [#uses=1 type=i32] [debug line = 50:7]
  %a.2 = add i32 %t2, %t1, !dbg !157              ; [#uses=1 type=i32] [debug line = 58:7]
  call void @llvm.dbg.value(metadata !{i32 %a.2}, i64 0, metadata !128), !dbg !157 ; [debug line = 58:7] [debug variable = a]
  %i.4 = add i32 %i.2, 1, !dbg !158               ; [#uses=1 type=i32] [debug line = 48:24]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !126), !dbg !158 ; [debug line = 48:24] [debug variable = i]
  br label %5, !dbg !158                          ; [debug line = 48:24]

; <label>:7                                       ; preds = %5
  %a.0.lcssa = phi i32 [ %b.2, %5 ]               ; [#uses=1 type=i32]
  %b.0.lcssa = phi i32 [ %c.2, %5 ]               ; [#uses=1 type=i32]
  %c.0.lcssa = phi i32 [ %d.2, %5 ]               ; [#uses=1 type=i32]
  %d.0.lcssa = phi i32 [ %d1, %5 ]                ; [#uses=1 type=i32]
  %e.0.lcssa = phi i32 [ %f.2, %5 ]               ; [#uses=1 type=i32]
  %f.0.lcssa = phi i32 [ %g.2, %5 ]               ; [#uses=1 type=i32]
  %g.0.lcssa = phi i32 [ %h.2, %5 ]               ; [#uses=1 type=i32]
  %h.0.lcssa = phi i32 [ %h1, %5 ]                ; [#uses=1 type=i32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %a) nounwind
  %tmp.60 = add i32 %a.0.lcssa, %a, !dbg !159     ; [#uses=1 type=i32] [debug line = 61:4]
  store i32 %tmp.60, i32* %ctx.addr, align 4, !dbg !159 ; [debug line = 61:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %b) nounwind
  %tmp.61 = add i32 %b.0.lcssa, %b, !dbg !160     ; [#uses=1 type=i32] [debug line = 62:4]
  store i32 %tmp.61, i32* %ctx.addr.5, align 4, !dbg !160 ; [debug line = 62:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %c) nounwind
  %tmp.62 = add i32 %c.0.lcssa, %c, !dbg !161     ; [#uses=1 type=i32] [debug line = 63:4]
  store i32 %tmp.62, i32* %ctx.addr.6, align 4, !dbg !161 ; [debug line = 63:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %d) nounwind
  %tmp.63 = add i32 %d.0.lcssa, %d, !dbg !162     ; [#uses=1 type=i32] [debug line = 64:4]
  store i32 %tmp.63, i32* %ctx.addr.7, align 4, !dbg !162 ; [debug line = 64:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %e) nounwind
  %tmp.64 = add i32 %e.0.lcssa, %e, !dbg !163     ; [#uses=1 type=i32] [debug line = 65:4]
  store i32 %tmp.64, i32* %ctx.addr.8, align 4, !dbg !163 ; [debug line = 65:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %f) nounwind
  %tmp.65 = add i32 %f.0.lcssa, %f, !dbg !164     ; [#uses=1 type=i32] [debug line = 66:4]
  store i32 %tmp.65, i32* %ctx.addr.9, align 4, !dbg !164 ; [debug line = 66:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %g) nounwind
  %tmp.66 = add i32 %g.0.lcssa, %g, !dbg !165     ; [#uses=1 type=i32] [debug line = 67:4]
  store i32 %tmp.66, i32* %ctx.addr.10, align 4, !dbg !165 ; [debug line = 67:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %h) nounwind
  %tmp.67 = add i32 %h.0.lcssa, %h, !dbg !166     ; [#uses=1 type=i32] [debug line = 68:4]
  store i32 %tmp.67, i32* %ctx.addr.11, align 4, !dbg !166 ; [debug line = 68:4]
  ret void, !dbg !167                             ; [debug line = 69:1]
}

; [#uses=1]
define internal fastcc void @sha256_init(%struct.SHA256_CTX.0* %ctx) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{%struct.SHA256_CTX.0* %ctx}, i64 0, metadata !168), !dbg !169 ; [debug line = 71:30] [debug variable = ctx]
  %ctx.addr = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 1, !dbg !170 ; [#uses=1 type=i32*] [debug line = 73:4]
  store i32 0, i32* %ctx.addr, align 4, !dbg !170 ; [debug line = 73:4]
  %ctx.addr.12 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 2, i64 0, !dbg !172 ; [#uses=1 type=i32*] [debug line = 74:4]
  store i32 0, i32* %ctx.addr.12, align 4, !dbg !172 ; [debug line = 74:4]
  %ctx.addr.13 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 2, i64 1, !dbg !173 ; [#uses=1 type=i32*] [debug line = 75:4]
  store i32 0, i32* %ctx.addr.13, align 4, !dbg !173 ; [debug line = 75:4]
  %ctx.addr.14 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 0, !dbg !174 ; [#uses=1 type=i32*] [debug line = 76:4]
  store i32 1779033703, i32* %ctx.addr.14, align 4, !dbg !174 ; [debug line = 76:4]
  %ctx.addr.15 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 1, !dbg !175 ; [#uses=1 type=i32*] [debug line = 77:4]
  store i32 -1150833019, i32* %ctx.addr.15, align 4, !dbg !175 ; [debug line = 77:4]
  %ctx.addr.16 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 2, !dbg !176 ; [#uses=1 type=i32*] [debug line = 78:4]
  store i32 1013904242, i32* %ctx.addr.16, align 4, !dbg !176 ; [debug line = 78:4]
  %ctx.addr.17 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 3, !dbg !177 ; [#uses=1 type=i32*] [debug line = 79:4]
  store i32 -1521486534, i32* %ctx.addr.17, align 4, !dbg !177 ; [debug line = 79:4]
  %ctx.addr.18 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 4, !dbg !178 ; [#uses=1 type=i32*] [debug line = 80:4]
  store i32 1359893119, i32* %ctx.addr.18, align 4, !dbg !178 ; [debug line = 80:4]
  %ctx.addr.19 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 5, !dbg !179 ; [#uses=1 type=i32*] [debug line = 81:4]
  store i32 -1694144372, i32* %ctx.addr.19, align 4, !dbg !179 ; [debug line = 81:4]
  %ctx.addr.20 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 6, !dbg !180 ; [#uses=1 type=i32*] [debug line = 82:4]
  store i32 528734635, i32* %ctx.addr.20, align 4, !dbg !180 ; [debug line = 82:4]
  %ctx.addr.21 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 7, !dbg !181 ; [#uses=1 type=i32*] [debug line = 83:4]
  store i32 1541459225, i32* %ctx.addr.21, align 4, !dbg !181 ; [debug line = 83:4]
  ret void, !dbg !182                             ; [debug line = 84:1]
}

; [#uses=1]
define internal fastcc void @sha256_final(%struct.SHA256_CTX.0* %ctx, i8* %hash) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{%struct.SHA256_CTX.0* %ctx}, i64 0, metadata !183), !dbg !184 ; [debug line = 101:31] [debug variable = ctx]
  call void @llvm.dbg.value(metadata !{i8* %hash}, i64 0, metadata !185), !dbg !186 ; [debug line = 101:66] [debug variable = hash]
  %ctx.addr = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 1, !dbg !187 ; [#uses=2 type=i32*] [debug line = 105:2]
  %i = load i32* %ctx.addr, align 4, !dbg !187    ; [#uses=7 type=i32] [debug line = 105:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %i) nounwind
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !189), !dbg !187 ; [debug line = 105:2] [debug variable = i]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %i) nounwind
  %tmp = icmp ult i32 %i, 56, !dbg !190           ; [#uses=1 type=i1] [debug line = 108:2]
  br i1 %tmp, label %1, label %4, !dbg !190       ; [debug line = 108:2]

; <label>:1                                       ; preds = %0
  %tmp.105 = zext i32 %i to i64, !dbg !191        ; [#uses=1 type=i64] [debug line = 109:3]
  %ctx.addr.22 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 %tmp.105, !dbg !191 ; [#uses=1 type=i8*] [debug line = 109:3]
  store i8 -128, i8* %ctx.addr.22, align 1, !dbg !191 ; [debug line = 109:3]
  br label %2, !dbg !193                          ; [debug line = 110:3]

; <label>:2                                       ; preds = %3, %1
  %i.0.in = phi i32 [ %i, %1 ], [ %i.6, %3 ]      ; [#uses=1 type=i32]
  %i.6 = add i32 %i.0.in, 1, !dbg !191            ; [#uses=3 type=i32] [debug line = 109:3]
  call void @llvm.dbg.value(metadata !{i32 %i.6}, i64 0, metadata !189), !dbg !191 ; [debug line = 109:3] [debug variable = i]
  %tmp.107 = icmp ult i32 %i.6, 56, !dbg !193     ; [#uses=1 type=i1] [debug line = 110:3]
  br i1 %tmp.107, label %3, label %.loopexit.loopexit6, !dbg !193 ; [debug line = 110:3]

; <label>:3                                       ; preds = %2
  %tmp.109 = zext i32 %i.6 to i64, !dbg !194      ; [#uses=1 type=i64] [debug line = 111:4]
  %ctx.addr.24 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 %tmp.109, !dbg !194 ; [#uses=1 type=i8*] [debug line = 111:4]
  store i8 0, i8* %ctx.addr.24, align 1, !dbg !194 ; [debug line = 111:4]
  br label %2, !dbg !194                          ; [debug line = 111:4]

; <label>:4                                       ; preds = %0
  %tmp.106 = zext i32 %i to i64, !dbg !195        ; [#uses=1 type=i64] [debug line = 114:3]
  %ctx.addr.23 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 %tmp.106, !dbg !195 ; [#uses=1 type=i8*] [debug line = 114:3]
  store i8 -128, i8* %ctx.addr.23, align 1, !dbg !195 ; [debug line = 114:3]
  br label %5, !dbg !197                          ; [debug line = 115:3]

; <label>:5                                       ; preds = %6, %4
  %i.1.in = phi i32 [ %i, %4 ], [ %i.1, %6 ]      ; [#uses=1 type=i32]
  %i.1 = add i32 %i.1.in, 1, !dbg !195            ; [#uses=3 type=i32] [debug line = 114:3]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !189), !dbg !195 ; [debug line = 114:3] [debug variable = i]
  %tmp.108 = icmp ult i32 %i.1, 64, !dbg !197     ; [#uses=1 type=i1] [debug line = 115:3]
  br i1 %tmp.108, label %6, label %7, !dbg !197   ; [debug line = 115:3]

; <label>:6                                       ; preds = %5
  %tmp.110 = zext i32 %i.1 to i64, !dbg !198      ; [#uses=1 type=i64] [debug line = 116:4]
  %ctx.addr.25 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 %tmp.110, !dbg !198 ; [#uses=1 type=i8*] [debug line = 116:4]
  store i8 0, i8* %ctx.addr.25, align 1, !dbg !198 ; [debug line = 116:4]
  br label %5, !dbg !198                          ; [debug line = 116:4]

; <label>:7                                       ; preds = %5
  %ctx.addr.26 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 0, !dbg !199 ; [#uses=1 type=i8*] [debug line = 117:3]
  call fastcc void @sha256_transform(%struct.SHA256_CTX.0* %ctx, i8* %ctx.addr.26), !dbg !199 ; [debug line = 117:3]
  br label %8, !dbg !200                          ; [debug line = 118:8]

; <label>:8                                       ; preds = %9, %7
  %i.2 = phi i32 [ 0, %7 ], [ %i.7, %9 ]          ; [#uses=3 type=i32]
  %tmp.111 = icmp eq i32 %i.2, 56, !dbg !200      ; [#uses=1 type=i1] [debug line = 118:8]
  br i1 %tmp.111, label %.loopexit.loopexit, label %9, !dbg !200 ; [debug line = 118:8]

; <label>:9                                       ; preds = %8
  %tmp.112 = zext i32 %i.2 to i64, !dbg !202      ; [#uses=1 type=i64] [debug line = 119:4]
  %ctx.addr.27 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 %tmp.112, !dbg !202 ; [#uses=1 type=i8*] [debug line = 119:4]
  store i8 0, i8* %ctx.addr.27, align 1, !dbg !202 ; [debug line = 119:4]
  %i.7 = add i32 %i.2, 1, !dbg !204               ; [#uses=1 type=i32] [debug line = 118:23]
  call void @llvm.dbg.value(metadata !{i32 %i.7}, i64 0, metadata !189), !dbg !204 ; [debug line = 118:23] [debug variable = i]
  br label %8, !dbg !204                          ; [debug line = 118:23]

.loopexit.loopexit:                               ; preds = %8
  br label %.loopexit

.loopexit.loopexit6:                              ; preds = %2
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit6, %.loopexit.loopexit
  %ctx.addr.28 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 2, i64 0, !dbg !205 ; [#uses=2 type=i32*] [debug line = 125:4]
  %ctx.load = load i32* %ctx.addr.28, align 4, !dbg !205 ; [#uses=4 type=i32] [debug line = 125:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load) nounwind
  %ctx.load.4 = load i32* %ctx.addr, align 4, !dbg !205 ; [#uses=3 type=i32] [debug line = 125:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.4) nounwind
  %tmp.114 = shl i32 %ctx.load.4, 3, !dbg !205    ; [#uses=2 type=i32] [debug line = 125:4]
  %tmp.115 = xor i32 %tmp.114, -1, !dbg !205      ; [#uses=1 type=i32] [debug line = 125:4]
  %tmp.116 = icmp ugt i32 %ctx.load, %tmp.115, !dbg !205 ; [#uses=1 type=i1] [debug line = 125:4]
  br i1 %tmp.116, label %10, label %.loopexit._crit_edge, !dbg !205 ; [debug line = 125:4]

; <label>:10                                      ; preds = %.loopexit
  %ctx.addr.29 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 2, i64 1, !dbg !206 ; [#uses=2 type=i32*] [debug line = 125:58]
  %ctx.load.5 = load i32* %ctx.addr.29, align 4, !dbg !206 ; [#uses=2 type=i32] [debug line = 125:58]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.5) nounwind
  %tmp.117 = add i32 %ctx.load.5, 1, !dbg !206    ; [#uses=1 type=i32] [debug line = 125:58]
  store i32 %tmp.117, i32* %ctx.addr.29, align 4, !dbg !206 ; [debug line = 125:58]
  br label %.loopexit._crit_edge, !dbg !206       ; [debug line = 125:58]

.loopexit._crit_edge:                             ; preds = %10, %.loopexit
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.4) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load) nounwind
  %tmp.118 = add i32 %tmp.114, %ctx.load, !dbg !207 ; [#uses=9 type=i32] [debug line = 125:76]
  store i32 %tmp.118, i32* %ctx.addr.28, align 4, !dbg !207 ; [debug line = 125:76]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.118) nounwind
  %tmp.119 = trunc i32 %tmp.118 to i8, !dbg !208  ; [#uses=1 type=i8] [debug line = 126:4]
  %ctx.addr.30 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 63, !dbg !208 ; [#uses=1 type=i8*] [debug line = 126:4]
  store i8 %tmp.119, i8* %ctx.addr.30, align 1, !dbg !208 ; [debug line = 126:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.118) nounwind
  %tmp.120 = lshr i32 %tmp.118, 8, !dbg !209      ; [#uses=1 type=i32] [debug line = 127:4]
  %tmp.121 = trunc i32 %tmp.120 to i8, !dbg !209  ; [#uses=1 type=i8] [debug line = 127:4]
  %ctx.addr.31 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 62, !dbg !209 ; [#uses=1 type=i8*] [debug line = 127:4]
  store i8 %tmp.121, i8* %ctx.addr.31, align 1, !dbg !209 ; [debug line = 127:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.118) nounwind
  %tmp.122 = lshr i32 %tmp.118, 16, !dbg !210     ; [#uses=1 type=i32] [debug line = 128:4]
  %tmp.123 = trunc i32 %tmp.122 to i8, !dbg !210  ; [#uses=1 type=i8] [debug line = 128:4]
  %ctx.addr.32 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 61, !dbg !210 ; [#uses=1 type=i8*] [debug line = 128:4]
  store i8 %tmp.123, i8* %ctx.addr.32, align 1, !dbg !210 ; [debug line = 128:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.118) nounwind
  %tmp.124 = lshr i32 %tmp.118, 24, !dbg !211     ; [#uses=1 type=i32] [debug line = 129:4]
  %tmp.125 = trunc i32 %tmp.124 to i8, !dbg !211  ; [#uses=1 type=i8] [debug line = 129:4]
  %ctx.addr.33 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 60, !dbg !211 ; [#uses=1 type=i8*] [debug line = 129:4]
  store i8 %tmp.125, i8* %ctx.addr.33, align 1, !dbg !211 ; [debug line = 129:4]
  %ctx.addr.34 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 2, i64 1, !dbg !212 ; [#uses=1 type=i32*] [debug line = 130:4]
  %ctx.load.6 = load i32* %ctx.addr.34, align 4, !dbg !212 ; [#uses=8 type=i32] [debug line = 130:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.6) nounwind
  %tmp.126 = trunc i32 %ctx.load.6 to i8, !dbg !212 ; [#uses=1 type=i8] [debug line = 130:4]
  %ctx.addr.35 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 59, !dbg !212 ; [#uses=1 type=i8*] [debug line = 130:4]
  store i8 %tmp.126, i8* %ctx.addr.35, align 1, !dbg !212 ; [debug line = 130:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.6) nounwind
  %tmp.127 = lshr i32 %ctx.load.6, 8, !dbg !213   ; [#uses=1 type=i32] [debug line = 131:4]
  %tmp.128 = trunc i32 %tmp.127 to i8, !dbg !213  ; [#uses=1 type=i8] [debug line = 131:4]
  %ctx.addr.36 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 58, !dbg !213 ; [#uses=1 type=i8*] [debug line = 131:4]
  store i8 %tmp.128, i8* %ctx.addr.36, align 1, !dbg !213 ; [debug line = 131:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.6) nounwind
  %tmp.129 = lshr i32 %ctx.load.6, 16, !dbg !214  ; [#uses=1 type=i32] [debug line = 132:4]
  %tmp.130 = trunc i32 %tmp.129 to i8, !dbg !214  ; [#uses=1 type=i8] [debug line = 132:4]
  %ctx.addr.37 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 57, !dbg !214 ; [#uses=1 type=i8*] [debug line = 132:4]
  store i8 %tmp.130, i8* %ctx.addr.37, align 1, !dbg !214 ; [debug line = 132:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.6) nounwind
  %tmp.131 = lshr i32 %ctx.load.6, 24, !dbg !215  ; [#uses=1 type=i32] [debug line = 133:4]
  %tmp.132 = trunc i32 %tmp.131 to i8, !dbg !215  ; [#uses=1 type=i8] [debug line = 133:4]
  %ctx.addr.38 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 56, !dbg !215 ; [#uses=1 type=i8*] [debug line = 133:4]
  store i8 %tmp.132, i8* %ctx.addr.38, align 1, !dbg !215 ; [debug line = 133:4]
  %ctx.addr.39 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 0, i64 0, !dbg !216 ; [#uses=1 type=i8*] [debug line = 134:4]
  call fastcc void @sha256_transform(%struct.SHA256_CTX.0* %ctx, i8* %ctx.addr.39), !dbg !216 ; [debug line = 134:4]
  %ctx.addr.40 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 0, !dbg !217 ; [#uses=1 type=i32*] [debug line = 139:7]
  %ctx.addr.41 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 1, !dbg !220 ; [#uses=1 type=i32*] [debug line = 140:7]
  %ctx.addr.42 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 2, !dbg !221 ; [#uses=1 type=i32*] [debug line = 141:7]
  %ctx.addr.43 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 3, !dbg !222 ; [#uses=1 type=i32*] [debug line = 142:7]
  %ctx.addr.44 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 4, !dbg !223 ; [#uses=1 type=i32*] [debug line = 143:7]
  %ctx.addr.45 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 5, !dbg !224 ; [#uses=1 type=i32*] [debug line = 144:7]
  %ctx.addr.46 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 6, !dbg !225 ; [#uses=1 type=i32*] [debug line = 145:7]
  %ctx.addr.47 = getelementptr inbounds %struct.SHA256_CTX.0* %ctx, i64 0, i32 3, i64 7, !dbg !226 ; [#uses=1 type=i32*] [debug line = 146:7]
  br label %11, !dbg !227                         ; [debug line = 138:9]

; <label>:11                                      ; preds = %12, %.loopexit._crit_edge
  %i.3 = phi i32 [ 0, %.loopexit._crit_edge ], [ %i.8, %12 ] ; [#uses=11 type=i32]
  %tmp.133 = icmp eq i32 %i.3, 4, !dbg !227       ; [#uses=1 type=i1] [debug line = 138:9]
  br i1 %tmp.133, label %13, label %12, !dbg !227 ; [debug line = 138:9]

; <label>:12                                      ; preds = %11
  %ctx.load.7 = load i32* %ctx.addr.40, align 4, !dbg !217 ; [#uses=2 type=i32] [debug line = 139:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.7) nounwind
  %tmp.134 = shl i32 %i.3, 3, !dbg !217           ; [#uses=1 type=i32] [debug line = 139:7]
  %tmp.135 = sub i32 24, %tmp.134, !dbg !217      ; [#uses=8 type=i32] [debug line = 139:7]
  %tmp.136 = lshr i32 %ctx.load.7, %tmp.135, !dbg !217 ; [#uses=1 type=i32] [debug line = 139:7]
  %tmp.137 = trunc i32 %tmp.136 to i8, !dbg !217  ; [#uses=1 type=i8] [debug line = 139:7]
  %tmp.138 = zext i32 %i.3 to i64, !dbg !217      ; [#uses=1 type=i64] [debug line = 139:7]
  %hash.addr = getelementptr inbounds i8* %hash, i64 %tmp.138, !dbg !217 ; [#uses=1 type=i8*] [debug line = 139:7]
  store i8 %tmp.137, i8* %hash.addr, align 1, !dbg !217 ; [debug line = 139:7]
  %ctx.load.8 = load i32* %ctx.addr.41, align 4, !dbg !220 ; [#uses=2 type=i32] [debug line = 140:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.8) nounwind
  %tmp.139 = lshr i32 %ctx.load.8, %tmp.135, !dbg !220 ; [#uses=1 type=i32] [debug line = 140:7]
  %tmp.140 = trunc i32 %tmp.139 to i8, !dbg !220  ; [#uses=1 type=i8] [debug line = 140:7]
  %tmp.141 = add i32 %i.3, 4, !dbg !220           ; [#uses=1 type=i32] [debug line = 140:7]
  %tmp.142 = zext i32 %tmp.141 to i64, !dbg !220  ; [#uses=1 type=i64] [debug line = 140:7]
  %hash.addr.1 = getelementptr inbounds i8* %hash, i64 %tmp.142, !dbg !220 ; [#uses=1 type=i8*] [debug line = 140:7]
  store i8 %tmp.140, i8* %hash.addr.1, align 1, !dbg !220 ; [debug line = 140:7]
  %ctx.load.9 = load i32* %ctx.addr.42, align 4, !dbg !221 ; [#uses=2 type=i32] [debug line = 141:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.9) nounwind
  %tmp.143 = lshr i32 %ctx.load.9, %tmp.135, !dbg !221 ; [#uses=1 type=i32] [debug line = 141:7]
  %tmp.144 = trunc i32 %tmp.143 to i8, !dbg !221  ; [#uses=1 type=i8] [debug line = 141:7]
  %tmp.145 = add i32 %i.3, 8, !dbg !221           ; [#uses=1 type=i32] [debug line = 141:7]
  %tmp.146 = zext i32 %tmp.145 to i64, !dbg !221  ; [#uses=1 type=i64] [debug line = 141:7]
  %hash.addr.2 = getelementptr inbounds i8* %hash, i64 %tmp.146, !dbg !221 ; [#uses=1 type=i8*] [debug line = 141:7]
  store i8 %tmp.144, i8* %hash.addr.2, align 1, !dbg !221 ; [debug line = 141:7]
  %ctx.load.10 = load i32* %ctx.addr.43, align 4, !dbg !222 ; [#uses=2 type=i32] [debug line = 142:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.10) nounwind
  %tmp.147 = lshr i32 %ctx.load.10, %tmp.135, !dbg !222 ; [#uses=1 type=i32] [debug line = 142:7]
  %tmp.148 = trunc i32 %tmp.147 to i8, !dbg !222  ; [#uses=1 type=i8] [debug line = 142:7]
  %tmp.149 = add i32 %i.3, 12, !dbg !222          ; [#uses=1 type=i32] [debug line = 142:7]
  %tmp.150 = zext i32 %tmp.149 to i64, !dbg !222  ; [#uses=1 type=i64] [debug line = 142:7]
  %hash.addr.3 = getelementptr inbounds i8* %hash, i64 %tmp.150, !dbg !222 ; [#uses=1 type=i8*] [debug line = 142:7]
  store i8 %tmp.148, i8* %hash.addr.3, align 1, !dbg !222 ; [debug line = 142:7]
  %ctx.load.11 = load i32* %ctx.addr.44, align 4, !dbg !223 ; [#uses=2 type=i32] [debug line = 143:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.11) nounwind
  %tmp.151 = lshr i32 %ctx.load.11, %tmp.135, !dbg !223 ; [#uses=1 type=i32] [debug line = 143:7]
  %tmp.152 = trunc i32 %tmp.151 to i8, !dbg !223  ; [#uses=1 type=i8] [debug line = 143:7]
  %tmp.153 = add i32 %i.3, 16, !dbg !223          ; [#uses=1 type=i32] [debug line = 143:7]
  %tmp.154 = zext i32 %tmp.153 to i64, !dbg !223  ; [#uses=1 type=i64] [debug line = 143:7]
  %hash.addr.4 = getelementptr inbounds i8* %hash, i64 %tmp.154, !dbg !223 ; [#uses=1 type=i8*] [debug line = 143:7]
  store i8 %tmp.152, i8* %hash.addr.4, align 1, !dbg !223 ; [debug line = 143:7]
  %ctx.load.12 = load i32* %ctx.addr.45, align 4, !dbg !224 ; [#uses=2 type=i32] [debug line = 144:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.12) nounwind
  %tmp.155 = lshr i32 %ctx.load.12, %tmp.135, !dbg !224 ; [#uses=1 type=i32] [debug line = 144:7]
  %tmp.156 = trunc i32 %tmp.155 to i8, !dbg !224  ; [#uses=1 type=i8] [debug line = 144:7]
  %tmp.157 = add i32 %i.3, 20, !dbg !224          ; [#uses=1 type=i32] [debug line = 144:7]
  %tmp.158 = zext i32 %tmp.157 to i64, !dbg !224  ; [#uses=1 type=i64] [debug line = 144:7]
  %hash.addr.5 = getelementptr inbounds i8* %hash, i64 %tmp.158, !dbg !224 ; [#uses=1 type=i8*] [debug line = 144:7]
  store i8 %tmp.156, i8* %hash.addr.5, align 1, !dbg !224 ; [debug line = 144:7]
  %ctx.load.13 = load i32* %ctx.addr.46, align 4, !dbg !225 ; [#uses=2 type=i32] [debug line = 145:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.13) nounwind
  %tmp.159 = lshr i32 %ctx.load.13, %tmp.135, !dbg !225 ; [#uses=1 type=i32] [debug line = 145:7]
  %tmp.160 = trunc i32 %tmp.159 to i8, !dbg !225  ; [#uses=1 type=i8] [debug line = 145:7]
  %tmp.161 = add i32 %i.3, 24, !dbg !225          ; [#uses=1 type=i32] [debug line = 145:7]
  %tmp.162 = zext i32 %tmp.161 to i64, !dbg !225  ; [#uses=1 type=i64] [debug line = 145:7]
  %hash.addr.6 = getelementptr inbounds i8* %hash, i64 %tmp.162, !dbg !225 ; [#uses=1 type=i8*] [debug line = 145:7]
  store i8 %tmp.160, i8* %hash.addr.6, align 1, !dbg !225 ; [debug line = 145:7]
  %ctx.load.14 = load i32* %ctx.addr.47, align 4, !dbg !226 ; [#uses=2 type=i32] [debug line = 146:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ctx.load.14) nounwind
  %tmp.163 = lshr i32 %ctx.load.14, %tmp.135, !dbg !226 ; [#uses=1 type=i32] [debug line = 146:7]
  %tmp.164 = trunc i32 %tmp.163 to i8, !dbg !226  ; [#uses=1 type=i8] [debug line = 146:7]
  %tmp.165 = add i32 %i.3, 28, !dbg !226          ; [#uses=1 type=i32] [debug line = 146:7]
  %tmp.166 = zext i32 %tmp.165 to i64, !dbg !226  ; [#uses=1 type=i64] [debug line = 146:7]
  %hash.addr.7 = getelementptr inbounds i8* %hash, i64 %tmp.166, !dbg !226 ; [#uses=1 type=i8*] [debug line = 146:7]
  store i8 %tmp.164, i8* %hash.addr.7, align 1, !dbg !226 ; [debug line = 146:7]
  %i.8 = add i32 %i.3, 1, !dbg !228               ; [#uses=1 type=i32] [debug line = 138:21]
  call void @llvm.dbg.value(metadata !{i32 %i.8}, i64 0, metadata !189), !dbg !228 ; [debug line = 138:21] [debug variable = i]
  br label %11, !dbg !228                         ; [debug line = 138:21]

; <label>:13                                      ; preds = %11
  ret void, !dbg !229                             ; [debug line = 148:1]
}

; [#uses=0]
define void @sha256(i8* %data, i32 %base_offset, i32 %bytes, i8* %digest) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @sha256.str) nounwind
  %seg_buf = alloca [64 x i8], align 16           ; [#uses=4 type=[64 x i8]*]
  %sha256ctx = alloca %struct.SHA256_CTX.0, align 4 ; [#uses=4 type=%struct.SHA256_CTX.0*]
  call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !230), !dbg !231 ; [debug line = 8:28] [debug variable = data]
  call void @llvm.dbg.value(metadata !{i32 %base_offset}, i64 0, metadata !232), !dbg !233 ; [debug line = 9:18] [debug variable = base_offset]
  call void @llvm.dbg.value(metadata !{i32 %bytes}, i64 0, metadata !234), !dbg !235 ; [debug line = 10:18] [debug variable = bytes]
  call void @llvm.dbg.value(metadata !{i8* %digest}, i64 0, metadata !236), !dbg !237 ; [debug line = 11:19] [debug variable = digest]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %data, i32 256) nounwind, !dbg !238 ; [debug line = 11:81]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %digest, i32 32) nounwind, !dbg !240 ; [debug line = 11:114]
  call void (...)* @_ssdm_op_SpecInterface(i8* %data, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !241 ; [debug line = 15:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %digest, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !242 ; [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %base_offset, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !243 ; [debug line = 17:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %bytes, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !244 ; [debug line = 18:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !245 ; [debug line = 19:1]
  call void @llvm.dbg.declare(metadata !{[64 x i8]* %seg_buf}, metadata !246), !dbg !247 ; [debug line = 22:16] [debug variable = seg_buf]
  call void @llvm.dbg.value(metadata !{i32 %bytes}, i64 0, metadata !248), !dbg !249 ; [debug line = 25:24] [debug variable = n]
  call void @llvm.dbg.declare(metadata !{%struct.SHA256_CTX.0* %sha256ctx}, metadata !250), !dbg !258 ; [debug line = 28:13] [debug variable = sha256ctx]
  call fastcc void @sha256_init(%struct.SHA256_CTX.0* %sha256ctx), !dbg !259 ; [debug line = 29:2]
  %tmp = zext i32 %base_offset to i64, !dbg !260  ; [#uses=2 type=i64] [debug line = 45:5]
  %seg_buf.addr = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 0, !dbg !264 ; [#uses=3 type=i8*] [debug line = 46:4]
  br label %.backedge, !dbg !265                  ; [debug line = 32:2]

.backedge:                                        ; preds = %.backedge.backedge, %0
  %seg_offset = phi i32 [ 0, %0 ], [ %seg_offset.0.be, %.backedge.backedge ] ; [#uses=4 type=i32]
  %n = phi i32 [ %bytes, %0 ], [ %n.0.be, %.backedge.backedge ] ; [#uses=5 type=i32]
  %tmp.168 = icmp eq i32 %n, 0, !dbg !265         ; [#uses=1 type=i1] [debug line = 32:2]
  br i1 %tmp.168, label %6, label %1, !dbg !265   ; [debug line = 32:2]

; <label>:1                                       ; preds = %.backedge
  %tmp.169 = icmp ugt i32 %n, 63, !dbg !266       ; [#uses=1 type=i1] [debug line = 34:3]
  br i1 %tmp.169, label %.preheader6.preheader, label %.preheader.preheader, !dbg !266 ; [debug line = 34:3]

.preheader6.preheader:                            ; preds = %1
  %tmp.170 = zext i32 %seg_offset to i64, !dbg !267 ; [#uses=1 type=i64] [debug line = 37:5]
  br label %.preheader6, !dbg !270                ; [debug line = 36:9]

.preheader.preheader:                             ; preds = %1
  %tmp.171 = zext i32 %seg_offset to i64, !dbg !260 ; [#uses=1 type=i64] [debug line = 45:5]
  br label %.preheader, !dbg !271                 ; [debug line = 44:9]

.preheader6:                                      ; preds = %2, %.preheader6.preheader
  %i9 = phi i32 [ %i.10, %2 ], [ 0, %.preheader6.preheader ] ; [#uses=3 type=i32]
  %exitcond5 = icmp eq i32 %i9, 64, !dbg !270     ; [#uses=1 type=i1] [debug line = 36:9]
  br i1 %exitcond5, label %3, label %2, !dbg !270 ; [debug line = 36:9]

; <label>:2                                       ; preds = %.preheader6
  %tmp.176 = sext i32 %i9 to i64, !dbg !267       ; [#uses=2 type=i64] [debug line = 37:5]
  %.sum2 = add i64 %tmp.170, %tmp, !dbg !267      ; [#uses=1 type=i64] [debug line = 37:5]
  %.sum3 = add i64 %.sum2, %tmp.176, !dbg !267    ; [#uses=1 type=i64] [debug line = 37:5]
  %data.addr = getelementptr inbounds i8* %data, i64 %.sum3, !dbg !267 ; [#uses=1 type=i8*] [debug line = 37:5]
  %data.load = load i8* %data.addr, align 1, !dbg !267 ; [#uses=2 type=i8] [debug line = 37:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %data.load) nounwind
  %seg_buf.addr.2 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 %tmp.176, !dbg !267 ; [#uses=1 type=i8*] [debug line = 37:5]
  store i8 %data.load, i8* %seg_buf.addr.2, align 1, !dbg !267 ; [debug line = 37:5]
  %i.10 = add nsw i32 %i9, 1, !dbg !272           ; [#uses=1 type=i32] [debug line = 36:20]
  call void @llvm.dbg.value(metadata !{i32 %i.10}, i64 0, metadata !273), !dbg !272 ; [debug line = 36:20] [debug variable = i]
  br label %.preheader6, !dbg !272                ; [debug line = 36:20]

; <label>:3                                       ; preds = %.preheader6
  %n.1 = add i32 %n, -64, !dbg !274               ; [#uses=1 type=i32] [debug line = 38:4]
  call void @llvm.dbg.value(metadata !{i32 %n.1}, i64 0, metadata !248), !dbg !274 ; [debug line = 38:4] [debug variable = n]
  %seg_offset.1 = add i32 %seg_offset, 64, !dbg !275 ; [#uses=1 type=i32] [debug line = 39:4]
  call void @llvm.dbg.value(metadata !{i32 %seg_offset.1}, i64 0, metadata !276), !dbg !275 ; [debug line = 39:4] [debug variable = seg_offset]
  call fastcc void @sha256_update(%struct.SHA256_CTX.0* %sha256ctx, i8* %seg_buf.addr, i32 64), !dbg !277 ; [debug line = 40:4]
  br label %.backedge.backedge, !dbg !278         ; [debug line = 41:3]

.preheader:                                       ; preds = %4, %.preheader.preheader
  %i.1 = phi i32 [ %i.11, %4 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond4 = icmp eq i32 %i.1, %n, !dbg !271    ; [#uses=1 type=i1] [debug line = 44:9]
  br i1 %exitcond4, label %5, label %4, !dbg !271 ; [debug line = 44:9]

; <label>:4                                       ; preds = %.preheader
  %tmp.178 = sext i32 %i.1 to i64, !dbg !260      ; [#uses=2 type=i64] [debug line = 45:5]
  %.sum = add i64 %tmp.171, %tmp, !dbg !260       ; [#uses=1 type=i64] [debug line = 45:5]
  %.sum1 = add i64 %.sum, %tmp.178, !dbg !260     ; [#uses=1 type=i64] [debug line = 45:5]
  %data.addr.4 = getelementptr inbounds i8* %data, i64 %.sum1, !dbg !260 ; [#uses=1 type=i8*] [debug line = 45:5]
  %data.load.4 = load i8* %data.addr.4, align 1, !dbg !260 ; [#uses=2 type=i8] [debug line = 45:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %data.load.4) nounwind
  %seg_buf.addr.3 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 %tmp.178, !dbg !260 ; [#uses=1 type=i8*] [debug line = 45:5]
  store i8 %data.load.4, i8* %seg_buf.addr.3, align 1, !dbg !260 ; [debug line = 45:5]
  %i.11 = add nsw i32 %i.1, 1, !dbg !279          ; [#uses=1 type=i32] [debug line = 44:19]
  call void @llvm.dbg.value(metadata !{i32 %i.11}, i64 0, metadata !273), !dbg !279 ; [debug line = 44:19] [debug variable = i]
  br label %.preheader, !dbg !279                 ; [debug line = 44:19]

; <label>:5                                       ; preds = %.preheader
  call fastcc void @sha256_update(%struct.SHA256_CTX.0* %sha256ctx, i8* %seg_buf.addr, i32 %n), !dbg !264 ; [debug line = 46:4]
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %5, %3
  %seg_offset.0.be = phi i32 [ %seg_offset.1, %3 ], [ %seg_offset, %5 ] ; [#uses=1 type=i32]
  %n.0.be = phi i32 [ %n.1, %3 ], [ 0, %5 ]       ; [#uses=1 type=i32]
  br label %.backedge

; <label>:6                                       ; preds = %.backedge
  call fastcc void @sha256_final(%struct.SHA256_CTX.0* %sha256ctx, i8* %seg_buf.addr), !dbg !280 ; [debug line = 52:2]
  br label %7, !dbg !281                          ; [debug line = 54:7]

; <label>:7                                       ; preds = %8, %6
  %i.2 = phi i32 [ 0, %6 ], [ %i, %8 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i.2, 32, !dbg !281     ; [#uses=1 type=i1] [debug line = 54:7]
  br i1 %exitcond, label %9, label %8, !dbg !281  ; [debug line = 54:7]

; <label>:8                                       ; preds = %7
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !283 ; [#uses=1 type=i32] [debug line = 54:24]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !285 ; [debug line = 55:1]
  %tmp.172 = sext i32 %i.2 to i64, !dbg !286      ; [#uses=2 type=i64] [debug line = 56:2]
  %seg_buf.addr.1 = getelementptr inbounds [64 x i8]* %seg_buf, i64 0, i64 %tmp.172, !dbg !286 ; [#uses=1 type=i8*] [debug line = 56:2]
  %seg_buf.load = load i8* %seg_buf.addr.1, align 1, !dbg !286 ; [#uses=2 type=i8] [debug line = 56:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %seg_buf.load) nounwind
  %digest.addr = getelementptr inbounds i8* %digest, i64 %tmp.172, !dbg !286 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %seg_buf.load, i8* %digest.addr, align 1, !dbg !286 ; [debug line = 56:2]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !287 ; [#uses=0 type=i32] [debug line = 57:2]
  %i = add nsw i32 %i.2, 1, !dbg !288             ; [#uses=1 type=i32] [debug line = 54:18]
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !273), !dbg !288 ; [debug line = 54:18] [debug variable = i]
  br label %7, !dbg !288                          ; [debug line = 54:18]

; <label>:9                                       ; preds = %7
  ret void, !dbg !289                             ; [debug line = 58:1]
}

; [#uses=45]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=3]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=5]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=67]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0, !24}
!opencl.kernels = !{!60, !67, !73, !79, !85}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/brett/Thesis/Vivado_WS/sha256/solution1/.autopilot/db/sha256.pragma.2.c", metadata !"/home/brett/Thesis/Vivado_WS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !14} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sha256", metadata !"sha256", metadata !"", metadata !6, i32 8, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i32, i32, i8*)* @sha256, null, null, metadata !12, i32 11} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"sha256/src/sha256.c", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !11, metadata !11, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{metadata !16, metadata !19, metadata !20, metadata !21}
!16 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !17, i32 315, metadata !18, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!17 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!18 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !17, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!19 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !17, i32 316, metadata !18, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!20 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !17, i32 317, metadata !18, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!21 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !22, i32 26, metadata !23, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!22 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!23 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!24 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/brett/Thesis/Vivado_WS/sha256/solution1/.autopilot/db/sha256_impl.pragma.2.c", metadata !"/home/brett/Thesis/Vivado_WS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !25, metadata !56} ; [ DW_TAG_compile_unit ]
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !27, metadata !49, metadata !52, metadata !55}
!27 = metadata !{i32 786478, i32 0, metadata !28, metadata !"sha256_transform", metadata !"sha256_transform", metadata !"", metadata !28, i32 30, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.SHA256_CTX.0*, i8*)* @sha256_transform, null, null, metadata !12, i32 31} ; [ DW_TAG_subprogram ]
!28 = metadata !{i32 786473, metadata !"sha256/src/sha256_impl.c", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!29 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!30 = metadata !{null, metadata !31, metadata !9}
!31 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ]
!32 = metadata !{i32 786454, null, metadata !"SHA256_CTX", metadata !28, i32 11, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ]
!33 = metadata !{i32 786451, null, metadata !"", metadata !34, i32 6, i64 864, i64 32, i32 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!34 = metadata !{i32 786473, metadata !"sha256/src/sha256_impl.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!35 = metadata !{metadata !36, metadata !40, metadata !41, metadata !45}
!36 = metadata !{i32 786445, metadata !33, metadata !"data", metadata !34, i32 7, i64 512, i64 8, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ]
!37 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 8, i32 0, i32 0, metadata !10, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ]
!38 = metadata !{metadata !39}
!39 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!40 = metadata !{i32 786445, metadata !33, metadata !"datalen", metadata !34, i32 8, i64 32, i64 32, i64 512, i32 0, metadata !11} ; [ DW_TAG_member ]
!41 = metadata !{i32 786445, metadata !33, metadata !"bitlen", metadata !34, i32 9, i64 64, i64 32, i64 544, i32 0, metadata !42} ; [ DW_TAG_member ]
!42 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 64, i64 32, i32 0, i32 0, metadata !11, metadata !43, i32 0, i32 0} ; [ DW_TAG_array_type ]
!43 = metadata !{metadata !44}
!44 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ]
!45 = metadata !{i32 786445, metadata !33, metadata !"state", metadata !34, i32 10, i64 256, i64 32, i64 608, i32 0, metadata !46} ; [ DW_TAG_member ]
!46 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 32, i32 0, i32 0, metadata !11, metadata !47, i32 0, i32 0} ; [ DW_TAG_array_type ]
!47 = metadata !{metadata !48}
!48 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!49 = metadata !{i32 786478, i32 0, metadata !28, metadata !"sha256_init", metadata !"sha256_init", metadata !"", metadata !28, i32 71, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.SHA256_CTX.0*)* @sha256_init, null, null, metadata !12, i32 72} ; [ DW_TAG_subprogram ]
!50 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!51 = metadata !{null, metadata !31}
!52 = metadata !{i32 786478, i32 0, metadata !28, metadata !"sha256_update", metadata !"sha256_update", metadata !"", metadata !28, i32 86, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.SHA256_CTX.0*, i8*, i32)* @sha256_update, null, null, metadata !12, i32 87} ; [ DW_TAG_subprogram ]
!53 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!54 = metadata !{null, metadata !31, metadata !9, metadata !11}
!55 = metadata !{i32 786478, i32 0, metadata !28, metadata !"sha256_final", metadata !"sha256_final", metadata !"", metadata !28, i32 101, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.SHA256_CTX.0*, i8*)* @sha256_final, null, null, metadata !12, i32 102} ; [ DW_TAG_subprogram ]
!56 = metadata !{metadata !57}
!57 = metadata !{metadata !58, metadata !16, metadata !19, metadata !20, metadata !21}
!58 = metadata !{i32 786484, i32 0, null, metadata !"k", metadata !"k", metadata !"", metadata !28, i32 18, metadata !59, i32 0, i32 1, [64 x i32]* @k} ; [ DW_TAG_variable ]
!59 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !11, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ]
!60 = metadata !{void (i8*, i32, i32, i8*)* @sha256, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66}
!61 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 1}
!62 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uint", metadata !"uint", metadata !"uchar*"}
!64 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!65 = metadata !{metadata !"kernel_arg_name", metadata !"data", metadata !"base_offset", metadata !"bytes", metadata !"digest"}
!66 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!67 = metadata !{void (%struct.SHA256_CTX.0*, i8*)* @sha256_transform, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !66}
!68 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!69 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"SHA256_CTX*", metadata !"uchar*"}
!71 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!72 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"data"}
!73 = metadata !{void (%struct.SHA256_CTX.0*)* @sha256_init, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !66}
!74 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!75 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"SHA256_CTX*"}
!77 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!78 = metadata !{metadata !"kernel_arg_name", metadata !"ctx"}
!79 = metadata !{void (%struct.SHA256_CTX.0*, i8*, i32)* @sha256_update, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !66}
!80 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!81 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"SHA256_CTX*", metadata !"uchar*", metadata !"uint"}
!83 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!84 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"data", metadata !"len"}
!85 = metadata !{void (%struct.SHA256_CTX.0*, i8*)* @sha256_final, metadata !68, metadata !69, metadata !70, metadata !71, metadata !86, metadata !66}
!86 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"hash"}
!87 = metadata !{i32 786689, metadata !52, metadata !"ctx", metadata !28, i32 16777302, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!88 = metadata !{i32 86, i32 32, metadata !52, null}
!89 = metadata !{i32 786689, metadata !52, metadata !"data", metadata !28, i32 33554518, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!90 = metadata !{i32 86, i32 67, metadata !52, null}
!91 = metadata !{i32 786689, metadata !52, metadata !"len", metadata !28, i32 50331734, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!92 = metadata !{i32 86, i32 105, metadata !52, null}
!93 = metadata !{i32 91, i32 7, metadata !94, null}
!94 = metadata !{i32 786443, metadata !95, i32 90, i32 28, metadata !28, i32 8} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 786443, metadata !96, i32 90, i32 4, metadata !28, i32 7} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 786443, metadata !52, i32 87, i32 1, metadata !28, i32 6} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 94, i32 10, metadata !98, null}
!98 = metadata !{i32 786443, metadata !94, i32 93, i32 31, metadata !28, i32 9} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 95, i32 10, metadata !98, null}
!100 = metadata !{i32 95, i32 51, metadata !98, null}
!101 = metadata !{i32 90, i32 9, metadata !95, null}
!102 = metadata !{i32 92, i32 7, metadata !94, null}
!103 = metadata !{i32 93, i32 7, metadata !94, null}
!104 = metadata !{i32 95, i32 69, metadata !98, null}
!105 = metadata !{i32 96, i32 10, metadata !98, null}
!106 = metadata !{i32 97, i32 7, metadata !98, null}
!107 = metadata !{i32 90, i32 23, metadata !95, null}
!108 = metadata !{i32 786688, metadata !96, metadata !"i", metadata !28, i32 88, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 99, i32 1, metadata !96, null}
!110 = metadata !{i32 786689, metadata !27, metadata !"ctx", metadata !28, i32 16777246, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!111 = metadata !{i32 30, i32 35, metadata !27, null}
!112 = metadata !{i32 786689, metadata !27, metadata !"data", metadata !28, i32 33554462, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!113 = metadata !{i32 30, i32 70, metadata !27, null}
!114 = metadata !{i32 786688, metadata !115, metadata !"m", metadata !28, i32 32, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!115 = metadata !{i32 786443, metadata !27, i32 31, i32 1, metadata !28, i32 0} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 32, i32 60, metadata !115, null}
!117 = metadata !{i32 34, i32 9, metadata !118, null}
!118 = metadata !{i32 786443, metadata !115, i32 34, i32 4, metadata !28, i32 1} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 36, i32 4, metadata !120, null}
!120 = metadata !{i32 786443, metadata !115, i32 36, i32 4, metadata !28, i32 2} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 35, i32 7, metadata !118, null}
!122 = metadata !{i32 34, i32 26, metadata !118, null}
!123 = metadata !{i32 786688, metadata !115, metadata !"j", metadata !28, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!124 = metadata !{i32 37, i32 7, metadata !120, null}
!125 = metadata !{i32 36, i32 20, metadata !120, null}
!126 = metadata !{i32 786688, metadata !115, metadata !"i", metadata !28, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!127 = metadata !{i32 39, i32 4, metadata !115, null}
!128 = metadata !{i32 786688, metadata !115, metadata !"a", metadata !28, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!129 = metadata !{i32 40, i32 4, metadata !115, null}
!130 = metadata !{i32 786688, metadata !115, metadata !"b", metadata !28, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!131 = metadata !{i32 41, i32 4, metadata !115, null}
!132 = metadata !{i32 786688, metadata !115, metadata !"c", metadata !28, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!133 = metadata !{i32 42, i32 4, metadata !115, null}
!134 = metadata !{i32 786688, metadata !115, metadata !"d", metadata !28, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!135 = metadata !{i32 43, i32 4, metadata !115, null}
!136 = metadata !{i32 786688, metadata !115, metadata !"e", metadata !28, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!137 = metadata !{i32 44, i32 4, metadata !115, null}
!138 = metadata !{i32 786688, metadata !115, metadata !"f", metadata !28, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!139 = metadata !{i32 45, i32 4, metadata !115, null}
!140 = metadata !{i32 786688, metadata !115, metadata !"g", metadata !28, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!141 = metadata !{i32 46, i32 4, metadata !115, null}
!142 = metadata !{i32 786688, metadata !115, metadata !"h", metadata !28, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!143 = metadata !{i32 48, i32 9, metadata !144, null}
!144 = metadata !{i32 786443, metadata !115, i32 48, i32 4, metadata !28, i32 3} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 49, i32 7, metadata !146, null}
!146 = metadata !{i32 786443, metadata !144, i32 48, i32 29, metadata !28, i32 4} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 786688, metadata !115, metadata !"t1", metadata !28, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!148 = metadata !{i32 50, i32 7, metadata !146, null}
!149 = metadata !{i32 786688, metadata !115, metadata !"t2", metadata !28, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!150 = metadata !{i32 51, i32 7, metadata !146, null}
!151 = metadata !{i32 52, i32 7, metadata !146, null}
!152 = metadata !{i32 53, i32 7, metadata !146, null}
!153 = metadata !{i32 54, i32 7, metadata !146, null}
!154 = metadata !{i32 55, i32 7, metadata !146, null}
!155 = metadata !{i32 56, i32 7, metadata !146, null}
!156 = metadata !{i32 57, i32 7, metadata !146, null}
!157 = metadata !{i32 58, i32 7, metadata !146, null}
!158 = metadata !{i32 48, i32 24, metadata !144, null}
!159 = metadata !{i32 61, i32 4, metadata !115, null}
!160 = metadata !{i32 62, i32 4, metadata !115, null}
!161 = metadata !{i32 63, i32 4, metadata !115, null}
!162 = metadata !{i32 64, i32 4, metadata !115, null}
!163 = metadata !{i32 65, i32 4, metadata !115, null}
!164 = metadata !{i32 66, i32 4, metadata !115, null}
!165 = metadata !{i32 67, i32 4, metadata !115, null}
!166 = metadata !{i32 68, i32 4, metadata !115, null}
!167 = metadata !{i32 69, i32 1, metadata !115, null}
!168 = metadata !{i32 786689, metadata !49, metadata !"ctx", metadata !28, i32 16777287, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!169 = metadata !{i32 71, i32 30, metadata !49, null}
!170 = metadata !{i32 73, i32 4, metadata !171, null}
!171 = metadata !{i32 786443, metadata !49, i32 72, i32 1, metadata !28, i32 5} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 74, i32 4, metadata !171, null}
!173 = metadata !{i32 75, i32 4, metadata !171, null}
!174 = metadata !{i32 76, i32 4, metadata !171, null}
!175 = metadata !{i32 77, i32 4, metadata !171, null}
!176 = metadata !{i32 78, i32 4, metadata !171, null}
!177 = metadata !{i32 79, i32 4, metadata !171, null}
!178 = metadata !{i32 80, i32 4, metadata !171, null}
!179 = metadata !{i32 81, i32 4, metadata !171, null}
!180 = metadata !{i32 82, i32 4, metadata !171, null}
!181 = metadata !{i32 83, i32 4, metadata !171, null}
!182 = metadata !{i32 84, i32 1, metadata !171, null}
!183 = metadata !{i32 786689, metadata !55, metadata !"ctx", metadata !28, i32 16777317, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!184 = metadata !{i32 101, i32 31, metadata !55, null}
!185 = metadata !{i32 786689, metadata !55, metadata !"hash", metadata !28, i32 33554533, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!186 = metadata !{i32 101, i32 66, metadata !55, null}
!187 = metadata !{i32 105, i32 2, metadata !188, null}
!188 = metadata !{i32 786443, metadata !55, i32 102, i32 1, metadata !28, i32 10} ; [ DW_TAG_lexical_block ]
!189 = metadata !{i32 786688, metadata !188, metadata !"i", metadata !28, i32 103, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!190 = metadata !{i32 108, i32 2, metadata !188, null}
!191 = metadata !{i32 109, i32 3, metadata !192, null}
!192 = metadata !{i32 786443, metadata !188, i32 108, i32 25, metadata !28, i32 11} ; [ DW_TAG_lexical_block ]
!193 = metadata !{i32 110, i32 3, metadata !192, null}
!194 = metadata !{i32 111, i32 4, metadata !192, null}
!195 = metadata !{i32 114, i32 3, metadata !196, null}
!196 = metadata !{i32 786443, metadata !188, i32 113, i32 7, metadata !28, i32 12} ; [ DW_TAG_lexical_block ]
!197 = metadata !{i32 115, i32 3, metadata !196, null}
!198 = metadata !{i32 116, i32 4, metadata !196, null}
!199 = metadata !{i32 117, i32 3, metadata !196, null}
!200 = metadata !{i32 118, i32 8, metadata !201, null}
!201 = metadata !{i32 786443, metadata !196, i32 118, i32 3, metadata !28, i32 13} ; [ DW_TAG_lexical_block ]
!202 = metadata !{i32 119, i32 4, metadata !203, null}
!203 = metadata !{i32 786443, metadata !201, i32 118, i32 29, metadata !28, i32 14} ; [ DW_TAG_lexical_block ]
!204 = metadata !{i32 118, i32 23, metadata !201, null}
!205 = metadata !{i32 125, i32 4, metadata !188, null}
!206 = metadata !{i32 125, i32 58, metadata !188, null}
!207 = metadata !{i32 125, i32 76, metadata !188, null}
!208 = metadata !{i32 126, i32 4, metadata !188, null}
!209 = metadata !{i32 127, i32 4, metadata !188, null}
!210 = metadata !{i32 128, i32 4, metadata !188, null}
!211 = metadata !{i32 129, i32 4, metadata !188, null}
!212 = metadata !{i32 130, i32 4, metadata !188, null}
!213 = metadata !{i32 131, i32 4, metadata !188, null}
!214 = metadata !{i32 132, i32 4, metadata !188, null}
!215 = metadata !{i32 133, i32 4, metadata !188, null}
!216 = metadata !{i32 134, i32 4, metadata !188, null}
!217 = metadata !{i32 139, i32 7, metadata !218, null}
!218 = metadata !{i32 786443, metadata !219, i32 138, i32 26, metadata !28, i32 16} ; [ DW_TAG_lexical_block ]
!219 = metadata !{i32 786443, metadata !188, i32 138, i32 4, metadata !28, i32 15} ; [ DW_TAG_lexical_block ]
!220 = metadata !{i32 140, i32 7, metadata !218, null}
!221 = metadata !{i32 141, i32 7, metadata !218, null}
!222 = metadata !{i32 142, i32 7, metadata !218, null}
!223 = metadata !{i32 143, i32 7, metadata !218, null}
!224 = metadata !{i32 144, i32 7, metadata !218, null}
!225 = metadata !{i32 145, i32 7, metadata !218, null}
!226 = metadata !{i32 146, i32 7, metadata !218, null}
!227 = metadata !{i32 138, i32 9, metadata !219, null}
!228 = metadata !{i32 138, i32 21, metadata !219, null}
!229 = metadata !{i32 148, i32 1, metadata !188, null}
!230 = metadata !{i32 786689, metadata !5, metadata !"data", metadata !6, i32 16777224, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!231 = metadata !{i32 8, i32 28, metadata !5, null}
!232 = metadata !{i32 786689, metadata !5, metadata !"base_offset", metadata !6, i32 33554441, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!233 = metadata !{i32 9, i32 18, metadata !5, null}
!234 = metadata !{i32 786689, metadata !5, metadata !"bytes", metadata !6, i32 50331658, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!235 = metadata !{i32 10, i32 18, metadata !5, null}
!236 = metadata !{i32 786689, metadata !5, metadata !"digest", metadata !6, i32 67108875, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!237 = metadata !{i32 11, i32 19, metadata !5, null}
!238 = metadata !{i32 11, i32 81, metadata !239, null}
!239 = metadata !{i32 786443, metadata !5, i32 11, i32 80, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!240 = metadata !{i32 11, i32 114, metadata !239, null}
!241 = metadata !{i32 15, i32 1, metadata !239, null}
!242 = metadata !{i32 16, i32 1, metadata !239, null}
!243 = metadata !{i32 17, i32 1, metadata !239, null}
!244 = metadata !{i32 18, i32 1, metadata !239, null}
!245 = metadata !{i32 19, i32 1, metadata !239, null}
!246 = metadata !{i32 786688, metadata !239, metadata !"seg_buf", metadata !6, i32 22, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!247 = metadata !{i32 22, i32 16, metadata !239, null}
!248 = metadata !{i32 786688, metadata !239, metadata !"n", metadata !6, i32 25, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!249 = metadata !{i32 25, i32 24, metadata !239, null}
!250 = metadata !{i32 786688, metadata !239, metadata !"sha256ctx", metadata !6, i32 28, metadata !251, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!251 = metadata !{i32 786454, null, metadata !"SHA256_CTX", metadata !6, i32 11, i64 0, i64 0, i64 0, i32 0, metadata !252} ; [ DW_TAG_typedef ]
!252 = metadata !{i32 786451, null, metadata !"", metadata !34, i32 6, i64 864, i64 32, i32 0, i32 0, null, metadata !253, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!253 = metadata !{metadata !254, metadata !255, metadata !256, metadata !257}
!254 = metadata !{i32 786445, metadata !252, metadata !"data", metadata !34, i32 7, i64 512, i64 8, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ]
!255 = metadata !{i32 786445, metadata !252, metadata !"datalen", metadata !34, i32 8, i64 32, i64 32, i64 512, i32 0, metadata !11} ; [ DW_TAG_member ]
!256 = metadata !{i32 786445, metadata !252, metadata !"bitlen", metadata !34, i32 9, i64 64, i64 32, i64 544, i32 0, metadata !42} ; [ DW_TAG_member ]
!257 = metadata !{i32 786445, metadata !252, metadata !"state", metadata !34, i32 10, i64 256, i64 32, i64 608, i32 0, metadata !46} ; [ DW_TAG_member ]
!258 = metadata !{i32 28, i32 13, metadata !239, null}
!259 = metadata !{i32 29, i32 2, metadata !239, null}
!260 = metadata !{i32 45, i32 5, metadata !261, null}
!261 = metadata !{i32 786443, metadata !262, i32 44, i32 4, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!262 = metadata !{i32 786443, metadata !263, i32 43, i32 3, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!263 = metadata !{i32 786443, metadata !239, i32 33, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!264 = metadata !{i32 46, i32 4, metadata !262, null}
!265 = metadata !{i32 32, i32 2, metadata !239, null}
!266 = metadata !{i32 34, i32 3, metadata !263, null}
!267 = metadata !{i32 37, i32 5, metadata !268, null}
!268 = metadata !{i32 786443, metadata !269, i32 36, i32 4, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!269 = metadata !{i32 786443, metadata !263, i32 35, i32 3, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!270 = metadata !{i32 36, i32 9, metadata !268, null}
!271 = metadata !{i32 44, i32 9, metadata !261, null}
!272 = metadata !{i32 36, i32 20, metadata !268, null}
!273 = metadata !{i32 786688, metadata !239, metadata !"i", metadata !6, i32 24, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!274 = metadata !{i32 38, i32 4, metadata !269, null}
!275 = metadata !{i32 39, i32 4, metadata !269, null}
!276 = metadata !{i32 786688, metadata !239, metadata !"seg_offset", metadata !6, i32 23, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!277 = metadata !{i32 40, i32 4, metadata !269, null}
!278 = metadata !{i32 41, i32 3, metadata !269, null}
!279 = metadata !{i32 44, i32 19, metadata !261, null}
!280 = metadata !{i32 52, i32 2, metadata !239, null}
!281 = metadata !{i32 54, i32 7, metadata !282, null}
!282 = metadata !{i32 786443, metadata !239, i32 54, i32 2, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!283 = metadata !{i32 54, i32 24, metadata !284, null}
!284 = metadata !{i32 786443, metadata !282, i32 54, i32 23, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!285 = metadata !{i32 55, i32 1, metadata !284, null}
!286 = metadata !{i32 56, i32 2, metadata !284, null}
!287 = metadata !{i32 57, i32 2, metadata !284, null}
!288 = metadata !{i32 54, i32 18, metadata !282, null}
!289 = metadata !{i32 58, i32 1, metadata !239, null}
