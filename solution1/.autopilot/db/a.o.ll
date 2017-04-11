; ModuleID = '/home/brett/Thesis/Vivado_WS/sha256/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SHA256_CTX = type { [64 x i8], i32, [2 x i32], [8 x i32] }

@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@_IO_2_1_stdin_ = external global %struct.SHA256_CTX ; [#uses=0 type=%struct.SHA256_CTX*]
@_IO_2_1_stdout_ = external global %struct.SHA256_CTX ; [#uses=0 type=%struct.SHA256_CTX*]
@_IO_2_1_stderr_ = external global %struct.SHA256_CTX ; [#uses=0 type=%struct.SHA256_CTX*]
@sys_nerr = external global i32                   ; [#uses=0 type=i32*]
@k = global [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16 ; [#uses=1 type=[64 x i32]*]

; [#uses=0]
define void @sha256(i8* %data, i32 %base_offset, i32 %bytes, i8* %digest) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=5 type=i8**]
  %2 = alloca i32, align 4                        ; [#uses=4 type=i32*]
  %3 = alloca i32, align 4                        ; [#uses=3 type=i32*]
  %4 = alloca i8*, align 8                        ; [#uses=4 type=i8**]
  %seg_buf = alloca [64 x i8], align 16           ; [#uses=6 type=[64 x i8]*]
  %seg_offset = alloca i32, align 4               ; [#uses=5 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=19 type=i32*]
  %n = alloca i32, align 4                        ; [#uses=8 type=i32*]
  %sha256ctx = alloca %struct.SHA256_CTX, align 4 ; [#uses=4 type=%struct.SHA256_CTX*]
  store i8* %data, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !87), !dbg !88 ; [debug line = 8:28] [debug variable = data]
  store i32 %base_offset, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !89), !dbg !90 ; [debug line = 9:18] [debug variable = base_offset]
  store i32 %bytes, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !91), !dbg !92 ; [debug line = 10:18] [debug variable = bytes]
  store i8* %digest, i8** %4, align 8
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !93), !dbg !94 ; [debug line = 11:19] [debug variable = digest]
  %5 = load i8** %1, align 8, !dbg !95            ; [#uses=1 type=i8*] [debug line = 11:81]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %5, i32 256) nounwind, !dbg !95 ; [debug line = 11:81]
  %6 = load i8** %4, align 8, !dbg !97            ; [#uses=1 type=i8*] [debug line = 11:114]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %6, i32 32) nounwind, !dbg !97 ; [debug line = 11:114]
  %7 = load i8** %1, align 8, !dbg !98            ; [#uses=1 type=i8*] [debug line = 15:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %7, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !98 ; [debug line = 15:1]
  %8 = load i8** %4, align 8, !dbg !99            ; [#uses=1 type=i8*] [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %8, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !99 ; [debug line = 16:1]
  %9 = load i32* %2, align 4, !dbg !100           ; [#uses=1 type=i32] [debug line = 17:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %9, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !100 ; [debug line = 17:1]
  %10 = load i32* %3, align 4, !dbg !101          ; [#uses=1 type=i32] [debug line = 18:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %10, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !101 ; [debug line = 18:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !102 ; [debug line = 19:1]
  call void @llvm.dbg.declare(metadata !{[64 x i8]* %seg_buf}, metadata !103), !dbg !104 ; [debug line = 22:16] [debug variable = seg_buf]
  call void @llvm.dbg.declare(metadata !{i32* %seg_offset}, metadata !105), !dbg !106 ; [debug line = 23:15] [debug variable = seg_offset]
  store i32 0, i32* %seg_offset, align 4, !dbg !107 ; [debug line = 23:29]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !108), !dbg !109 ; [debug line = 24:6] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !110        ; [debug line = 24:9]
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !111), !dbg !112 ; [debug line = 25:15] [debug variable = n]
  %11 = load i32* %3, align 4, !dbg !113          ; [#uses=1 type=i32] [debug line = 25:24]
  store i32 %11, i32* %n, align 4, !dbg !113      ; [debug line = 25:24]
  call void @llvm.dbg.declare(metadata !{%struct.SHA256_CTX* %sha256ctx}, metadata !114), !dbg !122 ; [debug line = 28:13] [debug variable = sha256ctx]
  call void @sha256_init(%struct.SHA256_CTX* %sha256ctx), !dbg !123 ; [debug line = 29:2]
  br label %12, !dbg !124                         ; [debug line = 32:2]

; <label>:12                                      ; preds = %72, %0
  %13 = load i32* %n, align 4, !dbg !124          ; [#uses=1 type=i32] [debug line = 32:2]
  %14 = icmp ne i32 %13, 0, !dbg !124             ; [#uses=1 type=i1] [debug line = 32:2]
  br i1 %14, label %15, label %73, !dbg !124      ; [debug line = 32:2]

; <label>:15                                      ; preds = %12
  %16 = load i32* %n, align 4, !dbg !125          ; [#uses=1 type=i32] [debug line = 34:3]
  %17 = icmp uge i32 %16, 64, !dbg !125           ; [#uses=1 type=i1] [debug line = 34:3]
  br i1 %17, label %18, label %46, !dbg !125      ; [debug line = 34:3]

; <label>:18                                      ; preds = %15
  store i32 0, i32* %i, align 4, !dbg !127        ; [debug line = 36:9]
  br label %19, !dbg !127                         ; [debug line = 36:9]

; <label>:19                                      ; preds = %37, %18
  %20 = load i32* %i, align 4, !dbg !127          ; [#uses=1 type=i32] [debug line = 36:9]
  %21 = icmp slt i32 %20, 64, !dbg !127           ; [#uses=1 type=i1] [debug line = 36:9]
  br i1 %21, label %22, label %40, !dbg !127      ; [debug line = 36:9]

; <label>:22                                      ; preds = %19
  %23 = load i8** %1, align 8, !dbg !130          ; [#uses=1 type=i8*] [debug line = 37:5]
  %24 = load i32* %2, align 4, !dbg !130          ; [#uses=1 type=i32] [debug line = 37:5]
  %25 = zext i32 %24 to i64, !dbg !130            ; [#uses=1 type=i64] [debug line = 37:5]
  %26 = getelementptr inbounds i8* %23, i64 %25, !dbg !130 ; [#uses=1 type=i8*] [debug line = 37:5]
  %27 = load i32* %seg_offset, align 4, !dbg !130 ; [#uses=1 type=i32] [debug line = 37:5]
  %28 = zext i32 %27 to i64, !dbg !130            ; [#uses=1 type=i64] [debug line = 37:5]
  %29 = getelementptr inbounds i8* %26, i64 %28, !dbg !130 ; [#uses=1 type=i8*] [debug line = 37:5]
  %30 = load i32* %i, align 4, !dbg !130          ; [#uses=1 type=i32] [debug line = 37:5]
  %31 = sext i32 %30 to i64, !dbg !130            ; [#uses=1 type=i64] [debug line = 37:5]
  %32 = getelementptr inbounds i8* %29, i64 %31, !dbg !130 ; [#uses=1 type=i8*] [debug line = 37:5]
  %33 = load i8* %32, align 1, !dbg !130          ; [#uses=1 type=i8] [debug line = 37:5]
  %34 = load i32* %i, align 4, !dbg !130          ; [#uses=1 type=i32] [debug line = 37:5]
  %35 = sext i32 %34 to i64, !dbg !130            ; [#uses=1 type=i64] [debug line = 37:5]
  %36 = getelementptr inbounds [64 x i8]* %seg_buf, i32 0, i64 %35, !dbg !130 ; [#uses=1 type=i8*] [debug line = 37:5]
  store i8 %33, i8* %36, align 1, !dbg !130       ; [debug line = 37:5]
  br label %37, !dbg !130                         ; [debug line = 37:5]

; <label>:37                                      ; preds = %22
  %38 = load i32* %i, align 4, !dbg !131          ; [#uses=1 type=i32] [debug line = 36:20]
  %39 = add nsw i32 %38, 1, !dbg !131             ; [#uses=1 type=i32] [debug line = 36:20]
  store i32 %39, i32* %i, align 4, !dbg !131      ; [debug line = 36:20]
  br label %19, !dbg !131                         ; [debug line = 36:20]

; <label>:40                                      ; preds = %19
  %41 = load i32* %n, align 4, !dbg !132          ; [#uses=1 type=i32] [debug line = 38:4]
  %42 = sub i32 %41, 64, !dbg !132                ; [#uses=1 type=i32] [debug line = 38:4]
  store i32 %42, i32* %n, align 4, !dbg !132      ; [debug line = 38:4]
  %43 = load i32* %seg_offset, align 4, !dbg !133 ; [#uses=1 type=i32] [debug line = 39:4]
  %44 = add i32 %43, 64, !dbg !133                ; [#uses=1 type=i32] [debug line = 39:4]
  store i32 %44, i32* %seg_offset, align 4, !dbg !133 ; [debug line = 39:4]
  %45 = getelementptr inbounds [64 x i8]* %seg_buf, i32 0, i32 0, !dbg !134 ; [#uses=1 type=i8*] [debug line = 40:4]
  call void @sha256_update(%struct.SHA256_CTX* %sha256ctx, i8* %45, i32 64), !dbg !134 ; [debug line = 40:4]
  br label %72, !dbg !135                         ; [debug line = 41:3]

; <label>:46                                      ; preds = %15
  store i32 0, i32* %i, align 4, !dbg !136        ; [debug line = 44:9]
  br label %47, !dbg !136                         ; [debug line = 44:9]

; <label>:47                                      ; preds = %66, %46
  %48 = load i32* %i, align 4, !dbg !136          ; [#uses=1 type=i32] [debug line = 44:9]
  %49 = load i32* %n, align 4, !dbg !136          ; [#uses=1 type=i32] [debug line = 44:9]
  %50 = icmp ult i32 %48, %49, !dbg !136          ; [#uses=1 type=i1] [debug line = 44:9]
  br i1 %50, label %51, label %69, !dbg !136      ; [debug line = 44:9]

; <label>:51                                      ; preds = %47
  %52 = load i8** %1, align 8, !dbg !139          ; [#uses=1 type=i8*] [debug line = 45:5]
  %53 = load i32* %2, align 4, !dbg !139          ; [#uses=1 type=i32] [debug line = 45:5]
  %54 = zext i32 %53 to i64, !dbg !139            ; [#uses=1 type=i64] [debug line = 45:5]
  %55 = getelementptr inbounds i8* %52, i64 %54, !dbg !139 ; [#uses=1 type=i8*] [debug line = 45:5]
  %56 = load i32* %seg_offset, align 4, !dbg !139 ; [#uses=1 type=i32] [debug line = 45:5]
  %57 = zext i32 %56 to i64, !dbg !139            ; [#uses=1 type=i64] [debug line = 45:5]
  %58 = getelementptr inbounds i8* %55, i64 %57, !dbg !139 ; [#uses=1 type=i8*] [debug line = 45:5]
  %59 = load i32* %i, align 4, !dbg !139          ; [#uses=1 type=i32] [debug line = 45:5]
  %60 = sext i32 %59 to i64, !dbg !139            ; [#uses=1 type=i64] [debug line = 45:5]
  %61 = getelementptr inbounds i8* %58, i64 %60, !dbg !139 ; [#uses=1 type=i8*] [debug line = 45:5]
  %62 = load i8* %61, align 1, !dbg !139          ; [#uses=1 type=i8] [debug line = 45:5]
  %63 = load i32* %i, align 4, !dbg !139          ; [#uses=1 type=i32] [debug line = 45:5]
  %64 = sext i32 %63 to i64, !dbg !139            ; [#uses=1 type=i64] [debug line = 45:5]
  %65 = getelementptr inbounds [64 x i8]* %seg_buf, i32 0, i64 %64, !dbg !139 ; [#uses=1 type=i8*] [debug line = 45:5]
  store i8 %62, i8* %65, align 1, !dbg !139       ; [debug line = 45:5]
  br label %66, !dbg !139                         ; [debug line = 45:5]

; <label>:66                                      ; preds = %51
  %67 = load i32* %i, align 4, !dbg !140          ; [#uses=1 type=i32] [debug line = 44:19]
  %68 = add nsw i32 %67, 1, !dbg !140             ; [#uses=1 type=i32] [debug line = 44:19]
  store i32 %68, i32* %i, align 4, !dbg !140      ; [debug line = 44:19]
  br label %47, !dbg !140                         ; [debug line = 44:19]

; <label>:69                                      ; preds = %47
  %70 = getelementptr inbounds [64 x i8]* %seg_buf, i32 0, i32 0, !dbg !141 ; [#uses=1 type=i8*] [debug line = 46:4]
  %71 = load i32* %n, align 4, !dbg !141          ; [#uses=1 type=i32] [debug line = 46:4]
  call void @sha256_update(%struct.SHA256_CTX* %sha256ctx, i8* %70, i32 %71), !dbg !141 ; [debug line = 46:4]
  store i32 0, i32* %n, align 4, !dbg !142        ; [debug line = 47:4]
  br label %72

; <label>:72                                      ; preds = %69, %40
  br label %12, !dbg !143                         ; [debug line = 49:2]

; <label>:73                                      ; preds = %12
  %74 = getelementptr inbounds [64 x i8]* %seg_buf, i32 0, i32 0, !dbg !144 ; [#uses=1 type=i8*] [debug line = 52:2]
  call void @sha256_final(%struct.SHA256_CTX* %sha256ctx, i8* %74), !dbg !144 ; [debug line = 52:2]
  store i32 0, i32* %i, align 4, !dbg !145        ; [debug line = 54:7]
  br label %75, !dbg !145                         ; [debug line = 54:7]

; <label>:75                                      ; preds = %87, %73
  %76 = load i32* %i, align 4, !dbg !145          ; [#uses=1 type=i32] [debug line = 54:7]
  %77 = icmp slt i32 %76, 32, !dbg !145           ; [#uses=1 type=i1] [debug line = 54:7]
  br i1 %77, label %78, label %90, !dbg !145      ; [debug line = 54:7]

; <label>:78                                      ; preds = %75
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !147 ; [debug line = 54:24]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !149 ; [debug line = 55:1]
  %79 = load i32* %i, align 4, !dbg !150          ; [#uses=1 type=i32] [debug line = 56:2]
  %80 = sext i32 %79 to i64, !dbg !150            ; [#uses=1 type=i64] [debug line = 56:2]
  %81 = getelementptr inbounds [64 x i8]* %seg_buf, i32 0, i64 %80, !dbg !150 ; [#uses=1 type=i8*] [debug line = 56:2]
  %82 = load i8* %81, align 1, !dbg !150          ; [#uses=1 type=i8] [debug line = 56:2]
  %83 = load i32* %i, align 4, !dbg !150          ; [#uses=1 type=i32] [debug line = 56:2]
  %84 = sext i32 %83 to i64, !dbg !150            ; [#uses=1 type=i64] [debug line = 56:2]
  %85 = load i8** %4, align 8, !dbg !150          ; [#uses=1 type=i8*] [debug line = 56:2]
  %86 = getelementptr inbounds i8* %85, i64 %84, !dbg !150 ; [#uses=1 type=i8*] [debug line = 56:2]
  store i8 %82, i8* %86, align 1, !dbg !150       ; [debug line = 56:2]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !151 ; [debug line = 57:2]
  br label %87, !dbg !151                         ; [debug line = 57:2]

; <label>:87                                      ; preds = %78
  %88 = load i32* %i, align 4, !dbg !152          ; [#uses=1 type=i32] [debug line = 54:18]
  %89 = add nsw i32 %88, 1, !dbg !152             ; [#uses=1 type=i32] [debug line = 54:18]
  store i32 %89, i32* %i, align 4, !dbg !152      ; [debug line = 54:18]
  br label %75, !dbg !152                         ; [debug line = 54:18]

; <label>:90                                      ; preds = %75
  ret void, !dbg !153                             ; [debug line = 58:1]
}

; [#uses=32]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=5]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=1]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=3]
define void @sha256_transform(%struct.SHA256_CTX* %ctx, i8* %data) nounwind uwtable {
  %1 = alloca %struct.SHA256_CTX*, align 8        ; [#uses=17 type=%struct.SHA256_CTX**]
  %2 = alloca i8*, align 8                        ; [#uses=5 type=i8**]
  %a = alloca i32, align 4                        ; [#uses=12 type=i32*]
  %b = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %c = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %d = alloca i32, align 4                        ; [#uses=4 type=i32*]
  %e = alloca i32, align 4                        ; [#uses=12 type=i32*]
  %f = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %g = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %h = alloca i32, align 4                        ; [#uses=4 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=27 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=7 type=i32*]
  %t1 = alloca i32, align 4                       ; [#uses=3 type=i32*]
  %t2 = alloca i32, align 4                       ; [#uses=2 type=i32*]
  %m = alloca [64 x i32], align 16                ; [#uses=15 type=[64 x i32]*]
  store %struct.SHA256_CTX* %ctx, %struct.SHA256_CTX** %1, align 8
  call void @llvm.dbg.declare(metadata !{%struct.SHA256_CTX** %1}, metadata !154), !dbg !155 ; [debug line = 30:35] [debug variable = ctx]
  store i8* %data, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !156), !dbg !157 ; [debug line = 30:70] [debug variable = data]
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !158), !dbg !160 ; [debug line = 32:34] [debug variable = a]
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !161), !dbg !162 ; [debug line = 32:36] [debug variable = b]
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !163), !dbg !164 ; [debug line = 32:38] [debug variable = c]
  call void @llvm.dbg.declare(metadata !{i32* %d}, metadata !165), !dbg !166 ; [debug line = 32:40] [debug variable = d]
  call void @llvm.dbg.declare(metadata !{i32* %e}, metadata !167), !dbg !168 ; [debug line = 32:42] [debug variable = e]
  call void @llvm.dbg.declare(metadata !{i32* %f}, metadata !169), !dbg !170 ; [debug line = 32:44] [debug variable = f]
  call void @llvm.dbg.declare(metadata !{i32* %g}, metadata !171), !dbg !172 ; [debug line = 32:46] [debug variable = g]
  call void @llvm.dbg.declare(metadata !{i32* %h}, metadata !173), !dbg !174 ; [debug line = 32:48] [debug variable = h]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !175), !dbg !176 ; [debug line = 32:50] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !177), !dbg !178 ; [debug line = 32:52] [debug variable = j]
  call void @llvm.dbg.declare(metadata !{i32* %t1}, metadata !179), !dbg !180 ; [debug line = 32:54] [debug variable = t1]
  call void @llvm.dbg.declare(metadata !{i32* %t2}, metadata !181), !dbg !182 ; [debug line = 32:57] [debug variable = t2]
  call void @llvm.dbg.declare(metadata !{[64 x i32]* %m}, metadata !183), !dbg !184 ; [debug line = 32:60] [debug variable = m]
  store i32 0, i32* %i, align 4, !dbg !185        ; [debug line = 34:9]
  store i32 0, i32* %j, align 4, !dbg !185        ; [debug line = 34:9]
  br label %3, !dbg !185                          ; [debug line = 34:9]

; <label>:3                                       ; preds = %43, %0
  %4 = load i32* %i, align 4, !dbg !185           ; [#uses=1 type=i32] [debug line = 34:9]
  %5 = icmp ult i32 %4, 16, !dbg !185             ; [#uses=1 type=i1] [debug line = 34:9]
  br i1 %5, label %6, label %48, !dbg !185        ; [debug line = 34:9]

; <label>:6                                       ; preds = %3
  %7 = load i32* %j, align 4, !dbg !187           ; [#uses=1 type=i32] [debug line = 35:7]
  %8 = zext i32 %7 to i64, !dbg !187              ; [#uses=1 type=i64] [debug line = 35:7]
  %9 = load i8** %2, align 8, !dbg !187           ; [#uses=1 type=i8*] [debug line = 35:7]
  %10 = getelementptr inbounds i8* %9, i64 %8, !dbg !187 ; [#uses=1 type=i8*] [debug line = 35:7]
  %11 = load i8* %10, align 1, !dbg !187          ; [#uses=1 type=i8] [debug line = 35:7]
  %12 = zext i8 %11 to i32, !dbg !187             ; [#uses=1 type=i32] [debug line = 35:7]
  %13 = shl i32 %12, 24, !dbg !187                ; [#uses=1 type=i32] [debug line = 35:7]
  %14 = load i32* %j, align 4, !dbg !187          ; [#uses=1 type=i32] [debug line = 35:7]
  %15 = add i32 %14, 1, !dbg !187                 ; [#uses=1 type=i32] [debug line = 35:7]
  %16 = zext i32 %15 to i64, !dbg !187            ; [#uses=1 type=i64] [debug line = 35:7]
  %17 = load i8** %2, align 8, !dbg !187          ; [#uses=1 type=i8*] [debug line = 35:7]
  %18 = getelementptr inbounds i8* %17, i64 %16, !dbg !187 ; [#uses=1 type=i8*] [debug line = 35:7]
  %19 = load i8* %18, align 1, !dbg !187          ; [#uses=1 type=i8] [debug line = 35:7]
  %20 = zext i8 %19 to i32, !dbg !187             ; [#uses=1 type=i32] [debug line = 35:7]
  %21 = shl i32 %20, 16, !dbg !187                ; [#uses=1 type=i32] [debug line = 35:7]
  %22 = or i32 %13, %21, !dbg !187                ; [#uses=1 type=i32] [debug line = 35:7]
  %23 = load i32* %j, align 4, !dbg !187          ; [#uses=1 type=i32] [debug line = 35:7]
  %24 = add i32 %23, 2, !dbg !187                 ; [#uses=1 type=i32] [debug line = 35:7]
  %25 = zext i32 %24 to i64, !dbg !187            ; [#uses=1 type=i64] [debug line = 35:7]
  %26 = load i8** %2, align 8, !dbg !187          ; [#uses=1 type=i8*] [debug line = 35:7]
  %27 = getelementptr inbounds i8* %26, i64 %25, !dbg !187 ; [#uses=1 type=i8*] [debug line = 35:7]
  %28 = load i8* %27, align 1, !dbg !187          ; [#uses=1 type=i8] [debug line = 35:7]
  %29 = zext i8 %28 to i32, !dbg !187             ; [#uses=1 type=i32] [debug line = 35:7]
  %30 = shl i32 %29, 8, !dbg !187                 ; [#uses=1 type=i32] [debug line = 35:7]
  %31 = or i32 %22, %30, !dbg !187                ; [#uses=1 type=i32] [debug line = 35:7]
  %32 = load i32* %j, align 4, !dbg !187          ; [#uses=1 type=i32] [debug line = 35:7]
  %33 = add i32 %32, 3, !dbg !187                 ; [#uses=1 type=i32] [debug line = 35:7]
  %34 = zext i32 %33 to i64, !dbg !187            ; [#uses=1 type=i64] [debug line = 35:7]
  %35 = load i8** %2, align 8, !dbg !187          ; [#uses=1 type=i8*] [debug line = 35:7]
  %36 = getelementptr inbounds i8* %35, i64 %34, !dbg !187 ; [#uses=1 type=i8*] [debug line = 35:7]
  %37 = load i8* %36, align 1, !dbg !187          ; [#uses=1 type=i8] [debug line = 35:7]
  %38 = zext i8 %37 to i32, !dbg !187             ; [#uses=1 type=i32] [debug line = 35:7]
  %39 = or i32 %31, %38, !dbg !187                ; [#uses=1 type=i32] [debug line = 35:7]
  %40 = load i32* %i, align 4, !dbg !187          ; [#uses=1 type=i32] [debug line = 35:7]
  %41 = zext i32 %40 to i64, !dbg !187            ; [#uses=1 type=i64] [debug line = 35:7]
  %42 = getelementptr inbounds [64 x i32]* %m, i32 0, i64 %41, !dbg !187 ; [#uses=1 type=i32*] [debug line = 35:7]
  store i32 %39, i32* %42, align 4, !dbg !187     ; [debug line = 35:7]
  br label %43, !dbg !187                         ; [debug line = 35:7]

; <label>:43                                      ; preds = %6
  %44 = load i32* %i, align 4, !dbg !188          ; [#uses=1 type=i32] [debug line = 34:26]
  %45 = add i32 %44, 1, !dbg !188                 ; [#uses=1 type=i32] [debug line = 34:26]
  store i32 %45, i32* %i, align 4, !dbg !188      ; [debug line = 34:26]
  %46 = load i32* %j, align 4, !dbg !188          ; [#uses=1 type=i32] [debug line = 34:26]
  %47 = add i32 %46, 4, !dbg !188                 ; [#uses=1 type=i32] [debug line = 34:26]
  store i32 %47, i32* %j, align 4, !dbg !188      ; [debug line = 34:26]
  br label %3, !dbg !188                          ; [debug line = 34:26]

; <label>:48                                      ; preds = %3
  br label %49, !dbg !189                         ; [debug line = 36:4]

; <label>:49                                      ; preds = %137, %48
  %50 = load i32* %i, align 4, !dbg !189          ; [#uses=1 type=i32] [debug line = 36:4]
  %51 = icmp ult i32 %50, 64, !dbg !189           ; [#uses=1 type=i1] [debug line = 36:4]
  br i1 %51, label %52, label %140, !dbg !189     ; [debug line = 36:4]

; <label>:52                                      ; preds = %49
  %53 = load i32* %i, align 4, !dbg !191          ; [#uses=1 type=i32] [debug line = 37:7]
  %54 = sub i32 %53, 2, !dbg !191                 ; [#uses=1 type=i32] [debug line = 37:7]
  %55 = zext i32 %54 to i64, !dbg !191            ; [#uses=1 type=i64] [debug line = 37:7]
  %56 = getelementptr inbounds [64 x i32]* %m, i32 0, i64 %55, !dbg !191 ; [#uses=1 type=i32*] [debug line = 37:7]
  %57 = load i32* %56, align 4, !dbg !191         ; [#uses=1 type=i32] [debug line = 37:7]
  %58 = lshr i32 %57, 17, !dbg !191               ; [#uses=1 type=i32] [debug line = 37:7]
  %59 = load i32* %i, align 4, !dbg !191          ; [#uses=1 type=i32] [debug line = 37:7]
  %60 = sub i32 %59, 2, !dbg !191                 ; [#uses=1 type=i32] [debug line = 37:7]
  %61 = zext i32 %60 to i64, !dbg !191            ; [#uses=1 type=i64] [debug line = 37:7]
  %62 = getelementptr inbounds [64 x i32]* %m, i32 0, i64 %61, !dbg !191 ; [#uses=1 type=i32*] [debug line = 37:7]
  %63 = load i32* %62, align 4, !dbg !191         ; [#uses=1 type=i32] [debug line = 37:7]
  %64 = shl i32 %63, 15, !dbg !191                ; [#uses=1 type=i32] [debug line = 37:7]
  %65 = or i32 %58, %64, !dbg !191                ; [#uses=1 type=i32] [debug line = 37:7]
  %66 = load i32* %i, align 4, !dbg !191          ; [#uses=1 type=i32] [debug line = 37:7]
  %67 = sub i32 %66, 2, !dbg !191                 ; [#uses=1 type=i32] [debug line = 37:7]
  %68 = zext i32 %67 to i64, !dbg !191            ; [#uses=1 type=i64] [debug line = 37:7]
  %69 = getelementptr inbounds [64 x i32]* %m, i32 0, i64 %68, !dbg !191 ; [#uses=1 type=i32*] [debug line = 37:7]
  %70 = load i32* %69, align 4, !dbg !191         ; [#uses=1 type=i32] [debug line = 37:7]
  %71 = lshr i32 %70, 19, !dbg !191               ; [#uses=1 type=i32] [debug line = 37:7]
  %72 = load i32* %i, align 4, !dbg !191          ; [#uses=1 type=i32] [debug line = 37:7]
  %73 = sub i32 %72, 2, !dbg !191                 ; [#uses=1 type=i32] [debug line = 37:7]
  %74 = zext i32 %73 to i64, !dbg !191            ; [#uses=1 type=i64] [debug line = 37:7]
  %75 = getelementptr inbounds [64 x i32]* %m, i32 0, i64 %74, !dbg !191 ; [#uses=1 type=i32*] [debug line = 37:7]
  %76 = load i32* %75, align 4, !dbg !191         ; [#uses=1 type=i32] [debug line = 37:7]
  %77 = shl i32 %76, 13, !dbg !191                ; [#uses=1 type=i32] [debug line = 37:7]
  %78 = or i32 %71, %77, !dbg !191                ; [#uses=1 type=i32] [debug line = 37:7]
  %79 = xor i32 %65, %78, !dbg !191               ; [#uses=1 type=i32] [debug line = 37:7]
  %80 = load i32* %i, align 4, !dbg !191          ; [#uses=1 type=i32] [debug line = 37:7]
  %81 = sub i32 %80, 2, !dbg !191                 ; [#uses=1 type=i32] [debug line = 37:7]
  %82 = zext i32 %81 to i64, !dbg !191            ; [#uses=1 type=i64] [debug line = 37:7]
  %83 = getelementptr inbounds [64 x i32]* %m, i32 0, i64 %82, !dbg !191 ; [#uses=1 type=i32*] [debug line = 37:7]
  %84 = load i32* %83, align 4, !dbg !191         ; [#uses=1 type=i32] [debug line = 37:7]
  %85 = lshr i32 %84, 10, !dbg !191               ; [#uses=1 type=i32] [debug line = 37:7]
  %86 = xor i32 %79, %85, !dbg !191               ; [#uses=1 type=i32] [debug line = 37:7]
  %87 = load i32* %i, align 4, !dbg !191          ; [#uses=1 type=i32] [debug line = 37:7]
  %88 = sub i32 %87, 7, !dbg !191                 ; [#uses=1 type=i32] [debug line = 37:7]
  %89 = zext i32 %88 to i64, !dbg !191            ; [#uses=1 type=i64] [debug line = 37:7]
  %90 = getelementptr inbounds [64 x i32]* %m, i32 0, i64 %89, !dbg !191 ; [#uses=1 type=i32*] [debug line = 37:7]
  %91 = load i32* %90, align 4, !dbg !191         ; [#uses=1 type=i32] [debug line = 37:7]
  %92 = add i32 %86, %91, !dbg !191               ; [#uses=1 type=i32] [debug line = 37:7]
  %93 = load i32* %i, align 4, !dbg !191          ; [#uses=1 type=i32] [debug line = 37:7]
  %94 = sub i32 %93, 15, !dbg !191                ; [#uses=1 type=i32] [debug line = 37:7]
  %95 = zext i32 %94 to i64, !dbg !191            ; [#uses=1 type=i64] [debug line = 37:7]
  %96 = getelementptr inbounds [64 x i32]* %m, i32 0, i64 %95, !dbg !191 ; [#uses=1 type=i32*] [debug line = 37:7]
  %97 = load i32* %96, align 4, !dbg !191         ; [#uses=1 type=i32] [debug line = 37:7]
  %98 = lshr i32 %97, 7, !dbg !191                ; [#uses=1 type=i32] [debug line = 37:7]
  %99 = load i32* %i, align 4, !dbg !191          ; [#uses=1 type=i32] [debug line = 37:7]
  %100 = sub i32 %99, 15, !dbg !191               ; [#uses=1 type=i32] [debug line = 37:7]
  %101 = zext i32 %100 to i64, !dbg !191          ; [#uses=1 type=i64] [debug line = 37:7]
  %102 = getelementptr inbounds [64 x i32]* %m, i32 0, i64 %101, !dbg !191 ; [#uses=1 type=i32*] [debug line = 37:7]
  %103 = load i32* %102, align 4, !dbg !191       ; [#uses=1 type=i32] [debug line = 37:7]
  %104 = shl i32 %103, 25, !dbg !191              ; [#uses=1 type=i32] [debug line = 37:7]
  %105 = or i32 %98, %104, !dbg !191              ; [#uses=1 type=i32] [debug line = 37:7]
  %106 = load i32* %i, align 4, !dbg !191         ; [#uses=1 type=i32] [debug line = 37:7]
  %107 = sub i32 %106, 15, !dbg !191              ; [#uses=1 type=i32] [debug line = 37:7]
  %108 = zext i32 %107 to i64, !dbg !191          ; [#uses=1 type=i64] [debug line = 37:7]
  %109 = getelementptr inbounds [64 x i32]* %m, i32 0, i64 %108, !dbg !191 ; [#uses=1 type=i32*] [debug line = 37:7]
  %110 = load i32* %109, align 4, !dbg !191       ; [#uses=1 type=i32] [debug line = 37:7]
  %111 = lshr i32 %110, 18, !dbg !191             ; [#uses=1 type=i32] [debug line = 37:7]
  %112 = load i32* %i, align 4, !dbg !191         ; [#uses=1 type=i32] [debug line = 37:7]
  %113 = sub i32 %112, 15, !dbg !191              ; [#uses=1 type=i32] [debug line = 37:7]
  %114 = zext i32 %113 to i64, !dbg !191          ; [#uses=1 type=i64] [debug line = 37:7]
  %115 = getelementptr inbounds [64 x i32]* %m, i32 0, i64 %114, !dbg !191 ; [#uses=1 type=i32*] [debug line = 37:7]
  %116 = load i32* %115, align 4, !dbg !191       ; [#uses=1 type=i32] [debug line = 37:7]
  %117 = shl i32 %116, 14, !dbg !191              ; [#uses=1 type=i32] [debug line = 37:7]
  %118 = or i32 %111, %117, !dbg !191             ; [#uses=1 type=i32] [debug line = 37:7]
  %119 = xor i32 %105, %118, !dbg !191            ; [#uses=1 type=i32] [debug line = 37:7]
  %120 = load i32* %i, align 4, !dbg !191         ; [#uses=1 type=i32] [debug line = 37:7]
  %121 = sub i32 %120, 15, !dbg !191              ; [#uses=1 type=i32] [debug line = 37:7]
  %122 = zext i32 %121 to i64, !dbg !191          ; [#uses=1 type=i64] [debug line = 37:7]
  %123 = getelementptr inbounds [64 x i32]* %m, i32 0, i64 %122, !dbg !191 ; [#uses=1 type=i32*] [debug line = 37:7]
  %124 = load i32* %123, align 4, !dbg !191       ; [#uses=1 type=i32] [debug line = 37:7]
  %125 = lshr i32 %124, 3, !dbg !191              ; [#uses=1 type=i32] [debug line = 37:7]
  %126 = xor i32 %119, %125, !dbg !191            ; [#uses=1 type=i32] [debug line = 37:7]
  %127 = add i32 %92, %126, !dbg !191             ; [#uses=1 type=i32] [debug line = 37:7]
  %128 = load i32* %i, align 4, !dbg !191         ; [#uses=1 type=i32] [debug line = 37:7]
  %129 = sub i32 %128, 16, !dbg !191              ; [#uses=1 type=i32] [debug line = 37:7]
  %130 = zext i32 %129 to i64, !dbg !191          ; [#uses=1 type=i64] [debug line = 37:7]
  %131 = getelementptr inbounds [64 x i32]* %m, i32 0, i64 %130, !dbg !191 ; [#uses=1 type=i32*] [debug line = 37:7]
  %132 = load i32* %131, align 4, !dbg !191       ; [#uses=1 type=i32] [debug line = 37:7]
  %133 = add i32 %127, %132, !dbg !191            ; [#uses=1 type=i32] [debug line = 37:7]
  %134 = load i32* %i, align 4, !dbg !191         ; [#uses=1 type=i32] [debug line = 37:7]
  %135 = zext i32 %134 to i64, !dbg !191          ; [#uses=1 type=i64] [debug line = 37:7]
  %136 = getelementptr inbounds [64 x i32]* %m, i32 0, i64 %135, !dbg !191 ; [#uses=1 type=i32*] [debug line = 37:7]
  store i32 %133, i32* %136, align 4, !dbg !191   ; [debug line = 37:7]
  br label %137, !dbg !191                        ; [debug line = 37:7]

; <label>:137                                     ; preds = %52
  %138 = load i32* %i, align 4, !dbg !192         ; [#uses=1 type=i32] [debug line = 36:20]
  %139 = add i32 %138, 1, !dbg !192               ; [#uses=1 type=i32] [debug line = 36:20]
  store i32 %139, i32* %i, align 4, !dbg !192     ; [debug line = 36:20]
  br label %49, !dbg !192                         ; [debug line = 36:20]

; <label>:140                                     ; preds = %49
  %141 = load %struct.SHA256_CTX** %1, align 8, !dbg !193 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 39:4]
  %142 = getelementptr inbounds %struct.SHA256_CTX* %141, i32 0, i32 3, !dbg !193 ; [#uses=1 type=[8 x i32]*] [debug line = 39:4]
  %143 = getelementptr inbounds [8 x i32]* %142, i32 0, i64 0, !dbg !193 ; [#uses=1 type=i32*] [debug line = 39:4]
  %144 = load i32* %143, align 4, !dbg !193       ; [#uses=1 type=i32] [debug line = 39:4]
  store i32 %144, i32* %a, align 4, !dbg !193     ; [debug line = 39:4]
  %145 = load %struct.SHA256_CTX** %1, align 8, !dbg !194 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 40:4]
  %146 = getelementptr inbounds %struct.SHA256_CTX* %145, i32 0, i32 3, !dbg !194 ; [#uses=1 type=[8 x i32]*] [debug line = 40:4]
  %147 = getelementptr inbounds [8 x i32]* %146, i32 0, i64 1, !dbg !194 ; [#uses=1 type=i32*] [debug line = 40:4]
  %148 = load i32* %147, align 4, !dbg !194       ; [#uses=1 type=i32] [debug line = 40:4]
  store i32 %148, i32* %b, align 4, !dbg !194     ; [debug line = 40:4]
  %149 = load %struct.SHA256_CTX** %1, align 8, !dbg !195 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 41:4]
  %150 = getelementptr inbounds %struct.SHA256_CTX* %149, i32 0, i32 3, !dbg !195 ; [#uses=1 type=[8 x i32]*] [debug line = 41:4]
  %151 = getelementptr inbounds [8 x i32]* %150, i32 0, i64 2, !dbg !195 ; [#uses=1 type=i32*] [debug line = 41:4]
  %152 = load i32* %151, align 4, !dbg !195       ; [#uses=1 type=i32] [debug line = 41:4]
  store i32 %152, i32* %c, align 4, !dbg !195     ; [debug line = 41:4]
  %153 = load %struct.SHA256_CTX** %1, align 8, !dbg !196 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 42:4]
  %154 = getelementptr inbounds %struct.SHA256_CTX* %153, i32 0, i32 3, !dbg !196 ; [#uses=1 type=[8 x i32]*] [debug line = 42:4]
  %155 = getelementptr inbounds [8 x i32]* %154, i32 0, i64 3, !dbg !196 ; [#uses=1 type=i32*] [debug line = 42:4]
  %156 = load i32* %155, align 4, !dbg !196       ; [#uses=1 type=i32] [debug line = 42:4]
  store i32 %156, i32* %d, align 4, !dbg !196     ; [debug line = 42:4]
  %157 = load %struct.SHA256_CTX** %1, align 8, !dbg !197 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 43:4]
  %158 = getelementptr inbounds %struct.SHA256_CTX* %157, i32 0, i32 3, !dbg !197 ; [#uses=1 type=[8 x i32]*] [debug line = 43:4]
  %159 = getelementptr inbounds [8 x i32]* %158, i32 0, i64 4, !dbg !197 ; [#uses=1 type=i32*] [debug line = 43:4]
  %160 = load i32* %159, align 4, !dbg !197       ; [#uses=1 type=i32] [debug line = 43:4]
  store i32 %160, i32* %e, align 4, !dbg !197     ; [debug line = 43:4]
  %161 = load %struct.SHA256_CTX** %1, align 8, !dbg !198 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 44:4]
  %162 = getelementptr inbounds %struct.SHA256_CTX* %161, i32 0, i32 3, !dbg !198 ; [#uses=1 type=[8 x i32]*] [debug line = 44:4]
  %163 = getelementptr inbounds [8 x i32]* %162, i32 0, i64 5, !dbg !198 ; [#uses=1 type=i32*] [debug line = 44:4]
  %164 = load i32* %163, align 4, !dbg !198       ; [#uses=1 type=i32] [debug line = 44:4]
  store i32 %164, i32* %f, align 4, !dbg !198     ; [debug line = 44:4]
  %165 = load %struct.SHA256_CTX** %1, align 8, !dbg !199 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 45:4]
  %166 = getelementptr inbounds %struct.SHA256_CTX* %165, i32 0, i32 3, !dbg !199 ; [#uses=1 type=[8 x i32]*] [debug line = 45:4]
  %167 = getelementptr inbounds [8 x i32]* %166, i32 0, i64 6, !dbg !199 ; [#uses=1 type=i32*] [debug line = 45:4]
  %168 = load i32* %167, align 4, !dbg !199       ; [#uses=1 type=i32] [debug line = 45:4]
  store i32 %168, i32* %g, align 4, !dbg !199     ; [debug line = 45:4]
  %169 = load %struct.SHA256_CTX** %1, align 8, !dbg !200 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 46:4]
  %170 = getelementptr inbounds %struct.SHA256_CTX* %169, i32 0, i32 3, !dbg !200 ; [#uses=1 type=[8 x i32]*] [debug line = 46:4]
  %171 = getelementptr inbounds [8 x i32]* %170, i32 0, i64 7, !dbg !200 ; [#uses=1 type=i32*] [debug line = 46:4]
  %172 = load i32* %171, align 4, !dbg !200       ; [#uses=1 type=i32] [debug line = 46:4]
  store i32 %172, i32* %h, align 4, !dbg !200     ; [debug line = 46:4]
  store i32 0, i32* %i, align 4, !dbg !201        ; [debug line = 48:9]
  br label %173, !dbg !201                        ; [debug line = 48:9]

; <label>:173                                     ; preds = %256, %140
  %174 = load i32* %i, align 4, !dbg !201         ; [#uses=1 type=i32] [debug line = 48:9]
  %175 = icmp ult i32 %174, 64, !dbg !201         ; [#uses=1 type=i1] [debug line = 48:9]
  br i1 %175, label %176, label %259, !dbg !201   ; [debug line = 48:9]

; <label>:176                                     ; preds = %173
  %177 = load i32* %h, align 4, !dbg !203         ; [#uses=1 type=i32] [debug line = 49:7]
  %178 = load i32* %e, align 4, !dbg !203         ; [#uses=1 type=i32] [debug line = 49:7]
  %179 = lshr i32 %178, 6, !dbg !203              ; [#uses=1 type=i32] [debug line = 49:7]
  %180 = load i32* %e, align 4, !dbg !203         ; [#uses=1 type=i32] [debug line = 49:7]
  %181 = shl i32 %180, 26, !dbg !203              ; [#uses=1 type=i32] [debug line = 49:7]
  %182 = or i32 %179, %181, !dbg !203             ; [#uses=1 type=i32] [debug line = 49:7]
  %183 = load i32* %e, align 4, !dbg !203         ; [#uses=1 type=i32] [debug line = 49:7]
  %184 = lshr i32 %183, 11, !dbg !203             ; [#uses=1 type=i32] [debug line = 49:7]
  %185 = load i32* %e, align 4, !dbg !203         ; [#uses=1 type=i32] [debug line = 49:7]
  %186 = shl i32 %185, 21, !dbg !203              ; [#uses=1 type=i32] [debug line = 49:7]
  %187 = or i32 %184, %186, !dbg !203             ; [#uses=1 type=i32] [debug line = 49:7]
  %188 = xor i32 %182, %187, !dbg !203            ; [#uses=1 type=i32] [debug line = 49:7]
  %189 = load i32* %e, align 4, !dbg !203         ; [#uses=1 type=i32] [debug line = 49:7]
  %190 = lshr i32 %189, 25, !dbg !203             ; [#uses=1 type=i32] [debug line = 49:7]
  %191 = load i32* %e, align 4, !dbg !203         ; [#uses=1 type=i32] [debug line = 49:7]
  %192 = shl i32 %191, 7, !dbg !203               ; [#uses=1 type=i32] [debug line = 49:7]
  %193 = or i32 %190, %192, !dbg !203             ; [#uses=1 type=i32] [debug line = 49:7]
  %194 = xor i32 %188, %193, !dbg !203            ; [#uses=1 type=i32] [debug line = 49:7]
  %195 = add i32 %177, %194, !dbg !203            ; [#uses=1 type=i32] [debug line = 49:7]
  %196 = load i32* %e, align 4, !dbg !203         ; [#uses=1 type=i32] [debug line = 49:7]
  %197 = load i32* %f, align 4, !dbg !203         ; [#uses=1 type=i32] [debug line = 49:7]
  %198 = and i32 %196, %197, !dbg !203            ; [#uses=1 type=i32] [debug line = 49:7]
  %199 = load i32* %e, align 4, !dbg !203         ; [#uses=1 type=i32] [debug line = 49:7]
  %200 = xor i32 %199, -1, !dbg !203              ; [#uses=1 type=i32] [debug line = 49:7]
  %201 = load i32* %g, align 4, !dbg !203         ; [#uses=1 type=i32] [debug line = 49:7]
  %202 = and i32 %200, %201, !dbg !203            ; [#uses=1 type=i32] [debug line = 49:7]
  %203 = xor i32 %198, %202, !dbg !203            ; [#uses=1 type=i32] [debug line = 49:7]
  %204 = add i32 %195, %203, !dbg !203            ; [#uses=1 type=i32] [debug line = 49:7]
  %205 = load i32* %i, align 4, !dbg !203         ; [#uses=1 type=i32] [debug line = 49:7]
  %206 = zext i32 %205 to i64, !dbg !203          ; [#uses=1 type=i64] [debug line = 49:7]
  %207 = getelementptr inbounds [64 x i32]* @k, i32 0, i64 %206, !dbg !203 ; [#uses=1 type=i32*] [debug line = 49:7]
  %208 = load i32* %207, align 4, !dbg !203       ; [#uses=1 type=i32] [debug line = 49:7]
  %209 = add i32 %204, %208, !dbg !203            ; [#uses=1 type=i32] [debug line = 49:7]
  %210 = load i32* %i, align 4, !dbg !203         ; [#uses=1 type=i32] [debug line = 49:7]
  %211 = zext i32 %210 to i64, !dbg !203          ; [#uses=1 type=i64] [debug line = 49:7]
  %212 = getelementptr inbounds [64 x i32]* %m, i32 0, i64 %211, !dbg !203 ; [#uses=1 type=i32*] [debug line = 49:7]
  %213 = load i32* %212, align 4, !dbg !203       ; [#uses=1 type=i32] [debug line = 49:7]
  %214 = add i32 %209, %213, !dbg !203            ; [#uses=1 type=i32] [debug line = 49:7]
  store i32 %214, i32* %t1, align 4, !dbg !203    ; [debug line = 49:7]
  %215 = load i32* %a, align 4, !dbg !205         ; [#uses=1 type=i32] [debug line = 50:7]
  %216 = lshr i32 %215, 2, !dbg !205              ; [#uses=1 type=i32] [debug line = 50:7]
  %217 = load i32* %a, align 4, !dbg !205         ; [#uses=1 type=i32] [debug line = 50:7]
  %218 = shl i32 %217, 30, !dbg !205              ; [#uses=1 type=i32] [debug line = 50:7]
  %219 = or i32 %216, %218, !dbg !205             ; [#uses=1 type=i32] [debug line = 50:7]
  %220 = load i32* %a, align 4, !dbg !205         ; [#uses=1 type=i32] [debug line = 50:7]
  %221 = lshr i32 %220, 13, !dbg !205             ; [#uses=1 type=i32] [debug line = 50:7]
  %222 = load i32* %a, align 4, !dbg !205         ; [#uses=1 type=i32] [debug line = 50:7]
  %223 = shl i32 %222, 19, !dbg !205              ; [#uses=1 type=i32] [debug line = 50:7]
  %224 = or i32 %221, %223, !dbg !205             ; [#uses=1 type=i32] [debug line = 50:7]
  %225 = xor i32 %219, %224, !dbg !205            ; [#uses=1 type=i32] [debug line = 50:7]
  %226 = load i32* %a, align 4, !dbg !205         ; [#uses=1 type=i32] [debug line = 50:7]
  %227 = lshr i32 %226, 22, !dbg !205             ; [#uses=1 type=i32] [debug line = 50:7]
  %228 = load i32* %a, align 4, !dbg !205         ; [#uses=1 type=i32] [debug line = 50:7]
  %229 = shl i32 %228, 10, !dbg !205              ; [#uses=1 type=i32] [debug line = 50:7]
  %230 = or i32 %227, %229, !dbg !205             ; [#uses=1 type=i32] [debug line = 50:7]
  %231 = xor i32 %225, %230, !dbg !205            ; [#uses=1 type=i32] [debug line = 50:7]
  %232 = load i32* %a, align 4, !dbg !205         ; [#uses=1 type=i32] [debug line = 50:7]
  %233 = load i32* %b, align 4, !dbg !205         ; [#uses=1 type=i32] [debug line = 50:7]
  %234 = and i32 %232, %233, !dbg !205            ; [#uses=1 type=i32] [debug line = 50:7]
  %235 = load i32* %a, align 4, !dbg !205         ; [#uses=1 type=i32] [debug line = 50:7]
  %236 = load i32* %c, align 4, !dbg !205         ; [#uses=1 type=i32] [debug line = 50:7]
  %237 = and i32 %235, %236, !dbg !205            ; [#uses=1 type=i32] [debug line = 50:7]
  %238 = xor i32 %234, %237, !dbg !205            ; [#uses=1 type=i32] [debug line = 50:7]
  %239 = load i32* %b, align 4, !dbg !205         ; [#uses=1 type=i32] [debug line = 50:7]
  %240 = load i32* %c, align 4, !dbg !205         ; [#uses=1 type=i32] [debug line = 50:7]
  %241 = and i32 %239, %240, !dbg !205            ; [#uses=1 type=i32] [debug line = 50:7]
  %242 = xor i32 %238, %241, !dbg !205            ; [#uses=1 type=i32] [debug line = 50:7]
  %243 = add i32 %231, %242, !dbg !205            ; [#uses=1 type=i32] [debug line = 50:7]
  store i32 %243, i32* %t2, align 4, !dbg !205    ; [debug line = 50:7]
  %244 = load i32* %g, align 4, !dbg !206         ; [#uses=1 type=i32] [debug line = 51:7]
  store i32 %244, i32* %h, align 4, !dbg !206     ; [debug line = 51:7]
  %245 = load i32* %f, align 4, !dbg !207         ; [#uses=1 type=i32] [debug line = 52:7]
  store i32 %245, i32* %g, align 4, !dbg !207     ; [debug line = 52:7]
  %246 = load i32* %e, align 4, !dbg !208         ; [#uses=1 type=i32] [debug line = 53:7]
  store i32 %246, i32* %f, align 4, !dbg !208     ; [debug line = 53:7]
  %247 = load i32* %d, align 4, !dbg !209         ; [#uses=1 type=i32] [debug line = 54:7]
  %248 = load i32* %t1, align 4, !dbg !209        ; [#uses=1 type=i32] [debug line = 54:7]
  %249 = add i32 %247, %248, !dbg !209            ; [#uses=1 type=i32] [debug line = 54:7]
  store i32 %249, i32* %e, align 4, !dbg !209     ; [debug line = 54:7]
  %250 = load i32* %c, align 4, !dbg !210         ; [#uses=1 type=i32] [debug line = 55:7]
  store i32 %250, i32* %d, align 4, !dbg !210     ; [debug line = 55:7]
  %251 = load i32* %b, align 4, !dbg !211         ; [#uses=1 type=i32] [debug line = 56:7]
  store i32 %251, i32* %c, align 4, !dbg !211     ; [debug line = 56:7]
  %252 = load i32* %a, align 4, !dbg !212         ; [#uses=1 type=i32] [debug line = 57:7]
  store i32 %252, i32* %b, align 4, !dbg !212     ; [debug line = 57:7]
  %253 = load i32* %t1, align 4, !dbg !213        ; [#uses=1 type=i32] [debug line = 58:7]
  %254 = load i32* %t2, align 4, !dbg !213        ; [#uses=1 type=i32] [debug line = 58:7]
  %255 = add i32 %253, %254, !dbg !213            ; [#uses=1 type=i32] [debug line = 58:7]
  store i32 %255, i32* %a, align 4, !dbg !213     ; [debug line = 58:7]
  br label %256, !dbg !214                        ; [debug line = 59:4]

; <label>:256                                     ; preds = %176
  %257 = load i32* %i, align 4, !dbg !215         ; [#uses=1 type=i32] [debug line = 48:24]
  %258 = add i32 %257, 1, !dbg !215               ; [#uses=1 type=i32] [debug line = 48:24]
  store i32 %258, i32* %i, align 4, !dbg !215     ; [debug line = 48:24]
  br label %173, !dbg !215                        ; [debug line = 48:24]

; <label>:259                                     ; preds = %173
  %260 = load i32* %a, align 4, !dbg !216         ; [#uses=1 type=i32] [debug line = 61:4]
  %261 = load %struct.SHA256_CTX** %1, align 8, !dbg !216 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 61:4]
  %262 = getelementptr inbounds %struct.SHA256_CTX* %261, i32 0, i32 3, !dbg !216 ; [#uses=1 type=[8 x i32]*] [debug line = 61:4]
  %263 = getelementptr inbounds [8 x i32]* %262, i32 0, i64 0, !dbg !216 ; [#uses=2 type=i32*] [debug line = 61:4]
  %264 = load i32* %263, align 4, !dbg !216       ; [#uses=1 type=i32] [debug line = 61:4]
  %265 = add i32 %264, %260, !dbg !216            ; [#uses=1 type=i32] [debug line = 61:4]
  store i32 %265, i32* %263, align 4, !dbg !216   ; [debug line = 61:4]
  %266 = load i32* %b, align 4, !dbg !217         ; [#uses=1 type=i32] [debug line = 62:4]
  %267 = load %struct.SHA256_CTX** %1, align 8, !dbg !217 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 62:4]
  %268 = getelementptr inbounds %struct.SHA256_CTX* %267, i32 0, i32 3, !dbg !217 ; [#uses=1 type=[8 x i32]*] [debug line = 62:4]
  %269 = getelementptr inbounds [8 x i32]* %268, i32 0, i64 1, !dbg !217 ; [#uses=2 type=i32*] [debug line = 62:4]
  %270 = load i32* %269, align 4, !dbg !217       ; [#uses=1 type=i32] [debug line = 62:4]
  %271 = add i32 %270, %266, !dbg !217            ; [#uses=1 type=i32] [debug line = 62:4]
  store i32 %271, i32* %269, align 4, !dbg !217   ; [debug line = 62:4]
  %272 = load i32* %c, align 4, !dbg !218         ; [#uses=1 type=i32] [debug line = 63:4]
  %273 = load %struct.SHA256_CTX** %1, align 8, !dbg !218 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 63:4]
  %274 = getelementptr inbounds %struct.SHA256_CTX* %273, i32 0, i32 3, !dbg !218 ; [#uses=1 type=[8 x i32]*] [debug line = 63:4]
  %275 = getelementptr inbounds [8 x i32]* %274, i32 0, i64 2, !dbg !218 ; [#uses=2 type=i32*] [debug line = 63:4]
  %276 = load i32* %275, align 4, !dbg !218       ; [#uses=1 type=i32] [debug line = 63:4]
  %277 = add i32 %276, %272, !dbg !218            ; [#uses=1 type=i32] [debug line = 63:4]
  store i32 %277, i32* %275, align 4, !dbg !218   ; [debug line = 63:4]
  %278 = load i32* %d, align 4, !dbg !219         ; [#uses=1 type=i32] [debug line = 64:4]
  %279 = load %struct.SHA256_CTX** %1, align 8, !dbg !219 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 64:4]
  %280 = getelementptr inbounds %struct.SHA256_CTX* %279, i32 0, i32 3, !dbg !219 ; [#uses=1 type=[8 x i32]*] [debug line = 64:4]
  %281 = getelementptr inbounds [8 x i32]* %280, i32 0, i64 3, !dbg !219 ; [#uses=2 type=i32*] [debug line = 64:4]
  %282 = load i32* %281, align 4, !dbg !219       ; [#uses=1 type=i32] [debug line = 64:4]
  %283 = add i32 %282, %278, !dbg !219            ; [#uses=1 type=i32] [debug line = 64:4]
  store i32 %283, i32* %281, align 4, !dbg !219   ; [debug line = 64:4]
  %284 = load i32* %e, align 4, !dbg !220         ; [#uses=1 type=i32] [debug line = 65:4]
  %285 = load %struct.SHA256_CTX** %1, align 8, !dbg !220 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 65:4]
  %286 = getelementptr inbounds %struct.SHA256_CTX* %285, i32 0, i32 3, !dbg !220 ; [#uses=1 type=[8 x i32]*] [debug line = 65:4]
  %287 = getelementptr inbounds [8 x i32]* %286, i32 0, i64 4, !dbg !220 ; [#uses=2 type=i32*] [debug line = 65:4]
  %288 = load i32* %287, align 4, !dbg !220       ; [#uses=1 type=i32] [debug line = 65:4]
  %289 = add i32 %288, %284, !dbg !220            ; [#uses=1 type=i32] [debug line = 65:4]
  store i32 %289, i32* %287, align 4, !dbg !220   ; [debug line = 65:4]
  %290 = load i32* %f, align 4, !dbg !221         ; [#uses=1 type=i32] [debug line = 66:4]
  %291 = load %struct.SHA256_CTX** %1, align 8, !dbg !221 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 66:4]
  %292 = getelementptr inbounds %struct.SHA256_CTX* %291, i32 0, i32 3, !dbg !221 ; [#uses=1 type=[8 x i32]*] [debug line = 66:4]
  %293 = getelementptr inbounds [8 x i32]* %292, i32 0, i64 5, !dbg !221 ; [#uses=2 type=i32*] [debug line = 66:4]
  %294 = load i32* %293, align 4, !dbg !221       ; [#uses=1 type=i32] [debug line = 66:4]
  %295 = add i32 %294, %290, !dbg !221            ; [#uses=1 type=i32] [debug line = 66:4]
  store i32 %295, i32* %293, align 4, !dbg !221   ; [debug line = 66:4]
  %296 = load i32* %g, align 4, !dbg !222         ; [#uses=1 type=i32] [debug line = 67:4]
  %297 = load %struct.SHA256_CTX** %1, align 8, !dbg !222 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 67:4]
  %298 = getelementptr inbounds %struct.SHA256_CTX* %297, i32 0, i32 3, !dbg !222 ; [#uses=1 type=[8 x i32]*] [debug line = 67:4]
  %299 = getelementptr inbounds [8 x i32]* %298, i32 0, i64 6, !dbg !222 ; [#uses=2 type=i32*] [debug line = 67:4]
  %300 = load i32* %299, align 4, !dbg !222       ; [#uses=1 type=i32] [debug line = 67:4]
  %301 = add i32 %300, %296, !dbg !222            ; [#uses=1 type=i32] [debug line = 67:4]
  store i32 %301, i32* %299, align 4, !dbg !222   ; [debug line = 67:4]
  %302 = load i32* %h, align 4, !dbg !223         ; [#uses=1 type=i32] [debug line = 68:4]
  %303 = load %struct.SHA256_CTX** %1, align 8, !dbg !223 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 68:4]
  %304 = getelementptr inbounds %struct.SHA256_CTX* %303, i32 0, i32 3, !dbg !223 ; [#uses=1 type=[8 x i32]*] [debug line = 68:4]
  %305 = getelementptr inbounds [8 x i32]* %304, i32 0, i64 7, !dbg !223 ; [#uses=2 type=i32*] [debug line = 68:4]
  %306 = load i32* %305, align 4, !dbg !223       ; [#uses=1 type=i32] [debug line = 68:4]
  %307 = add i32 %306, %302, !dbg !223            ; [#uses=1 type=i32] [debug line = 68:4]
  store i32 %307, i32* %305, align 4, !dbg !223   ; [debug line = 68:4]
  ret void, !dbg !224                             ; [debug line = 69:1]
}

; [#uses=1]
define void @sha256_init(%struct.SHA256_CTX* %ctx) nounwind uwtable {
  %1 = alloca %struct.SHA256_CTX*, align 8        ; [#uses=12 type=%struct.SHA256_CTX**]
  store %struct.SHA256_CTX* %ctx, %struct.SHA256_CTX** %1, align 8
  call void @llvm.dbg.declare(metadata !{%struct.SHA256_CTX** %1}, metadata !225), !dbg !226 ; [debug line = 71:30] [debug variable = ctx]
  %2 = load %struct.SHA256_CTX** %1, align 8, !dbg !227 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 73:4]
  %3 = getelementptr inbounds %struct.SHA256_CTX* %2, i32 0, i32 1, !dbg !227 ; [#uses=1 type=i32*] [debug line = 73:4]
  store i32 0, i32* %3, align 4, !dbg !227        ; [debug line = 73:4]
  %4 = load %struct.SHA256_CTX** %1, align 8, !dbg !229 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 74:4]
  %5 = getelementptr inbounds %struct.SHA256_CTX* %4, i32 0, i32 2, !dbg !229 ; [#uses=1 type=[2 x i32]*] [debug line = 74:4]
  %6 = getelementptr inbounds [2 x i32]* %5, i32 0, i64 0, !dbg !229 ; [#uses=1 type=i32*] [debug line = 74:4]
  store i32 0, i32* %6, align 4, !dbg !229        ; [debug line = 74:4]
  %7 = load %struct.SHA256_CTX** %1, align 8, !dbg !230 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 75:4]
  %8 = getelementptr inbounds %struct.SHA256_CTX* %7, i32 0, i32 2, !dbg !230 ; [#uses=1 type=[2 x i32]*] [debug line = 75:4]
  %9 = getelementptr inbounds [2 x i32]* %8, i32 0, i64 1, !dbg !230 ; [#uses=1 type=i32*] [debug line = 75:4]
  store i32 0, i32* %9, align 4, !dbg !230        ; [debug line = 75:4]
  %10 = load %struct.SHA256_CTX** %1, align 8, !dbg !231 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 76:4]
  %11 = getelementptr inbounds %struct.SHA256_CTX* %10, i32 0, i32 3, !dbg !231 ; [#uses=1 type=[8 x i32]*] [debug line = 76:4]
  %12 = getelementptr inbounds [8 x i32]* %11, i32 0, i64 0, !dbg !231 ; [#uses=1 type=i32*] [debug line = 76:4]
  store i32 1779033703, i32* %12, align 4, !dbg !231 ; [debug line = 76:4]
  %13 = load %struct.SHA256_CTX** %1, align 8, !dbg !232 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 77:4]
  %14 = getelementptr inbounds %struct.SHA256_CTX* %13, i32 0, i32 3, !dbg !232 ; [#uses=1 type=[8 x i32]*] [debug line = 77:4]
  %15 = getelementptr inbounds [8 x i32]* %14, i32 0, i64 1, !dbg !232 ; [#uses=1 type=i32*] [debug line = 77:4]
  store i32 -1150833019, i32* %15, align 4, !dbg !232 ; [debug line = 77:4]
  %16 = load %struct.SHA256_CTX** %1, align 8, !dbg !233 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 78:4]
  %17 = getelementptr inbounds %struct.SHA256_CTX* %16, i32 0, i32 3, !dbg !233 ; [#uses=1 type=[8 x i32]*] [debug line = 78:4]
  %18 = getelementptr inbounds [8 x i32]* %17, i32 0, i64 2, !dbg !233 ; [#uses=1 type=i32*] [debug line = 78:4]
  store i32 1013904242, i32* %18, align 4, !dbg !233 ; [debug line = 78:4]
  %19 = load %struct.SHA256_CTX** %1, align 8, !dbg !234 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 79:4]
  %20 = getelementptr inbounds %struct.SHA256_CTX* %19, i32 0, i32 3, !dbg !234 ; [#uses=1 type=[8 x i32]*] [debug line = 79:4]
  %21 = getelementptr inbounds [8 x i32]* %20, i32 0, i64 3, !dbg !234 ; [#uses=1 type=i32*] [debug line = 79:4]
  store i32 -1521486534, i32* %21, align 4, !dbg !234 ; [debug line = 79:4]
  %22 = load %struct.SHA256_CTX** %1, align 8, !dbg !235 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 80:4]
  %23 = getelementptr inbounds %struct.SHA256_CTX* %22, i32 0, i32 3, !dbg !235 ; [#uses=1 type=[8 x i32]*] [debug line = 80:4]
  %24 = getelementptr inbounds [8 x i32]* %23, i32 0, i64 4, !dbg !235 ; [#uses=1 type=i32*] [debug line = 80:4]
  store i32 1359893119, i32* %24, align 4, !dbg !235 ; [debug line = 80:4]
  %25 = load %struct.SHA256_CTX** %1, align 8, !dbg !236 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 81:4]
  %26 = getelementptr inbounds %struct.SHA256_CTX* %25, i32 0, i32 3, !dbg !236 ; [#uses=1 type=[8 x i32]*] [debug line = 81:4]
  %27 = getelementptr inbounds [8 x i32]* %26, i32 0, i64 5, !dbg !236 ; [#uses=1 type=i32*] [debug line = 81:4]
  store i32 -1694144372, i32* %27, align 4, !dbg !236 ; [debug line = 81:4]
  %28 = load %struct.SHA256_CTX** %1, align 8, !dbg !237 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 82:4]
  %29 = getelementptr inbounds %struct.SHA256_CTX* %28, i32 0, i32 3, !dbg !237 ; [#uses=1 type=[8 x i32]*] [debug line = 82:4]
  %30 = getelementptr inbounds [8 x i32]* %29, i32 0, i64 6, !dbg !237 ; [#uses=1 type=i32*] [debug line = 82:4]
  store i32 528734635, i32* %30, align 4, !dbg !237 ; [debug line = 82:4]
  %31 = load %struct.SHA256_CTX** %1, align 8, !dbg !238 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 83:4]
  %32 = getelementptr inbounds %struct.SHA256_CTX* %31, i32 0, i32 3, !dbg !238 ; [#uses=1 type=[8 x i32]*] [debug line = 83:4]
  %33 = getelementptr inbounds [8 x i32]* %32, i32 0, i64 7, !dbg !238 ; [#uses=1 type=i32*] [debug line = 83:4]
  store i32 1541459225, i32* %33, align 4, !dbg !238 ; [debug line = 83:4]
  ret void, !dbg !239                             ; [debug line = 84:1]
}

; [#uses=2]
define void @sha256_update(%struct.SHA256_CTX* %ctx, i8* %data, i32 %len) nounwind uwtable {
  %1 = alloca %struct.SHA256_CTX*, align 8        ; [#uses=11 type=%struct.SHA256_CTX**]
  %2 = alloca i8*, align 8                        ; [#uses=2 type=i8**]
  %3 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=5 type=i32*]
  store %struct.SHA256_CTX* %ctx, %struct.SHA256_CTX** %1, align 8
  call void @llvm.dbg.declare(metadata !{%struct.SHA256_CTX** %1}, metadata !240), !dbg !241 ; [debug line = 86:32] [debug variable = ctx]
  store i8* %data, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !242), !dbg !243 ; [debug line = 86:67] [debug variable = data]
  store i32 %len, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !244), !dbg !245 ; [debug line = 86:105] [debug variable = len]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !246), !dbg !248 ; [debug line = 88:34] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !249        ; [debug line = 90:9]
  br label %4, !dbg !249                          ; [debug line = 90:9]

; <label>:4                                       ; preds = %54, %0
  %5 = load i32* %i, align 4, !dbg !249           ; [#uses=1 type=i32] [debug line = 90:9]
  %6 = load i32* %3, align 4, !dbg !249           ; [#uses=1 type=i32] [debug line = 90:9]
  %7 = icmp ult i32 %5, %6, !dbg !249             ; [#uses=1 type=i1] [debug line = 90:9]
  br i1 %7, label %8, label %57, !dbg !249        ; [debug line = 90:9]

; <label>:8                                       ; preds = %4
  %9 = load i32* %i, align 4, !dbg !251           ; [#uses=1 type=i32] [debug line = 91:7]
  %10 = zext i32 %9 to i64, !dbg !251             ; [#uses=1 type=i64] [debug line = 91:7]
  %11 = load i8** %2, align 8, !dbg !251          ; [#uses=1 type=i8*] [debug line = 91:7]
  %12 = getelementptr inbounds i8* %11, i64 %10, !dbg !251 ; [#uses=1 type=i8*] [debug line = 91:7]
  %13 = load i8* %12, align 1, !dbg !251          ; [#uses=1 type=i8] [debug line = 91:7]
  %14 = load %struct.SHA256_CTX** %1, align 8, !dbg !251 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 91:7]
  %15 = getelementptr inbounds %struct.SHA256_CTX* %14, i32 0, i32 1, !dbg !251 ; [#uses=1 type=i32*] [debug line = 91:7]
  %16 = load i32* %15, align 4, !dbg !251         ; [#uses=1 type=i32] [debug line = 91:7]
  %17 = zext i32 %16 to i64, !dbg !251            ; [#uses=1 type=i64] [debug line = 91:7]
  %18 = load %struct.SHA256_CTX** %1, align 8, !dbg !251 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 91:7]
  %19 = getelementptr inbounds %struct.SHA256_CTX* %18, i32 0, i32 0, !dbg !251 ; [#uses=1 type=[64 x i8]*] [debug line = 91:7]
  %20 = getelementptr inbounds [64 x i8]* %19, i32 0, i64 %17, !dbg !251 ; [#uses=1 type=i8*] [debug line = 91:7]
  store i8 %13, i8* %20, align 1, !dbg !251       ; [debug line = 91:7]
  %21 = load %struct.SHA256_CTX** %1, align 8, !dbg !253 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 92:7]
  %22 = getelementptr inbounds %struct.SHA256_CTX* %21, i32 0, i32 1, !dbg !253 ; [#uses=2 type=i32*] [debug line = 92:7]
  %23 = load i32* %22, align 4, !dbg !253         ; [#uses=1 type=i32] [debug line = 92:7]
  %24 = add i32 %23, 1, !dbg !253                 ; [#uses=1 type=i32] [debug line = 92:7]
  store i32 %24, i32* %22, align 4, !dbg !253     ; [debug line = 92:7]
  %25 = load %struct.SHA256_CTX** %1, align 8, !dbg !254 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 93:7]
  %26 = getelementptr inbounds %struct.SHA256_CTX* %25, i32 0, i32 1, !dbg !254 ; [#uses=1 type=i32*] [debug line = 93:7]
  %27 = load i32* %26, align 4, !dbg !254         ; [#uses=1 type=i32] [debug line = 93:7]
  %28 = icmp eq i32 %27, 64, !dbg !254            ; [#uses=1 type=i1] [debug line = 93:7]
  br i1 %28, label %29, label %53, !dbg !254      ; [debug line = 93:7]

; <label>:29                                      ; preds = %8
  %30 = load %struct.SHA256_CTX** %1, align 8, !dbg !255 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 94:10]
  %31 = load %struct.SHA256_CTX** %1, align 8, !dbg !255 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 94:10]
  %32 = getelementptr inbounds %struct.SHA256_CTX* %31, i32 0, i32 0, !dbg !255 ; [#uses=1 type=[64 x i8]*] [debug line = 94:10]
  %33 = getelementptr inbounds [64 x i8]* %32, i32 0, i32 0, !dbg !255 ; [#uses=1 type=i8*] [debug line = 94:10]
  call void @sha256_transform(%struct.SHA256_CTX* %30, i8* %33), !dbg !255 ; [debug line = 94:10]
  %34 = load %struct.SHA256_CTX** %1, align 8, !dbg !257 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 95:10]
  %35 = getelementptr inbounds %struct.SHA256_CTX* %34, i32 0, i32 2, !dbg !257 ; [#uses=1 type=[2 x i32]*] [debug line = 95:10]
  %36 = getelementptr inbounds [2 x i32]* %35, i32 0, i64 0, !dbg !257 ; [#uses=1 type=i32*] [debug line = 95:10]
  %37 = load i32* %36, align 4, !dbg !257         ; [#uses=1 type=i32] [debug line = 95:10]
  %38 = icmp ugt i32 %37, -513, !dbg !257         ; [#uses=1 type=i1] [debug line = 95:10]
  br i1 %38, label %39, label %45, !dbg !257      ; [debug line = 95:10]

; <label>:39                                      ; preds = %29
  %40 = load %struct.SHA256_CTX** %1, align 8, !dbg !258 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 95:51]
  %41 = getelementptr inbounds %struct.SHA256_CTX* %40, i32 0, i32 2, !dbg !258 ; [#uses=1 type=[2 x i32]*] [debug line = 95:51]
  %42 = getelementptr inbounds [2 x i32]* %41, i32 0, i64 1, !dbg !258 ; [#uses=2 type=i32*] [debug line = 95:51]
  %43 = load i32* %42, align 4, !dbg !258         ; [#uses=1 type=i32] [debug line = 95:51]
  %44 = add i32 %43, 1, !dbg !258                 ; [#uses=1 type=i32] [debug line = 95:51]
  store i32 %44, i32* %42, align 4, !dbg !258     ; [debug line = 95:51]
  br label %45, !dbg !258                         ; [debug line = 95:51]

; <label>:45                                      ; preds = %39, %29
  %46 = load %struct.SHA256_CTX** %1, align 8, !dbg !259 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 95:69]
  %47 = getelementptr inbounds %struct.SHA256_CTX* %46, i32 0, i32 2, !dbg !259 ; [#uses=1 type=[2 x i32]*] [debug line = 95:69]
  %48 = getelementptr inbounds [2 x i32]* %47, i32 0, i64 0, !dbg !259 ; [#uses=2 type=i32*] [debug line = 95:69]
  %49 = load i32* %48, align 4, !dbg !259         ; [#uses=1 type=i32] [debug line = 95:69]
  %50 = add i32 %49, 512, !dbg !259               ; [#uses=1 type=i32] [debug line = 95:69]
  store i32 %50, i32* %48, align 4, !dbg !259     ; [debug line = 95:69]
  %51 = load %struct.SHA256_CTX** %1, align 8, !dbg !260 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 96:10]
  %52 = getelementptr inbounds %struct.SHA256_CTX* %51, i32 0, i32 1, !dbg !260 ; [#uses=1 type=i32*] [debug line = 96:10]
  store i32 0, i32* %52, align 4, !dbg !260       ; [debug line = 96:10]
  br label %53, !dbg !261                         ; [debug line = 97:7]

; <label>:53                                      ; preds = %45, %8
  br label %54, !dbg !262                         ; [debug line = 98:4]

; <label>:54                                      ; preds = %53
  %55 = load i32* %i, align 4, !dbg !263          ; [#uses=1 type=i32] [debug line = 90:23]
  %56 = add i32 %55, 1, !dbg !263                 ; [#uses=1 type=i32] [debug line = 90:23]
  store i32 %56, i32* %i, align 4, !dbg !263      ; [debug line = 90:23]
  br label %4, !dbg !263                          ; [debug line = 90:23]

; <label>:57                                      ; preds = %4
  ret void, !dbg !264                             ; [debug line = 99:1]
}

; [#uses=1]
define void @sha256_final(%struct.SHA256_CTX* %ctx, i8* %hash) nounwind uwtable {
  %1 = alloca %struct.SHA256_CTX*, align 8        ; [#uses=41 type=%struct.SHA256_CTX**]
  %2 = alloca i8*, align 8                        ; [#uses=9 type=i8**]
  %i = alloca i32, align 4                        ; [#uses=36 type=i32*]
  store %struct.SHA256_CTX* %ctx, %struct.SHA256_CTX** %1, align 8
  call void @llvm.dbg.declare(metadata !{%struct.SHA256_CTX** %1}, metadata !265), !dbg !266 ; [debug line = 101:31] [debug variable = ctx]
  store i8* %hash, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !267), !dbg !268 ; [debug line = 101:66] [debug variable = hash]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !269), !dbg !271 ; [debug line = 103:32] [debug variable = i]
  %3 = load %struct.SHA256_CTX** %1, align 8, !dbg !272 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 105:2]
  %4 = getelementptr inbounds %struct.SHA256_CTX* %3, i32 0, i32 1, !dbg !272 ; [#uses=1 type=i32*] [debug line = 105:2]
  %5 = load i32* %4, align 4, !dbg !272           ; [#uses=1 type=i32] [debug line = 105:2]
  store i32 %5, i32* %i, align 4, !dbg !272       ; [debug line = 105:2]
  %6 = load %struct.SHA256_CTX** %1, align 8, !dbg !273 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 108:2]
  %7 = getelementptr inbounds %struct.SHA256_CTX* %6, i32 0, i32 1, !dbg !273 ; [#uses=1 type=i32*] [debug line = 108:2]
  %8 = load i32* %7, align 4, !dbg !273           ; [#uses=1 type=i32] [debug line = 108:2]
  %9 = icmp ult i32 %8, 56, !dbg !273             ; [#uses=1 type=i1] [debug line = 108:2]
  br i1 %9, label %10, label %28, !dbg !273       ; [debug line = 108:2]

; <label>:10                                      ; preds = %0
  %11 = load i32* %i, align 4, !dbg !274          ; [#uses=2 type=i32] [debug line = 109:3]
  %12 = add i32 %11, 1, !dbg !274                 ; [#uses=1 type=i32] [debug line = 109:3]
  store i32 %12, i32* %i, align 4, !dbg !274      ; [debug line = 109:3]
  %13 = zext i32 %11 to i64, !dbg !274            ; [#uses=1 type=i64] [debug line = 109:3]
  %14 = load %struct.SHA256_CTX** %1, align 8, !dbg !274 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 109:3]
  %15 = getelementptr inbounds %struct.SHA256_CTX* %14, i32 0, i32 0, !dbg !274 ; [#uses=1 type=[64 x i8]*] [debug line = 109:3]
  %16 = getelementptr inbounds [64 x i8]* %15, i32 0, i64 %13, !dbg !274 ; [#uses=1 type=i8*] [debug line = 109:3]
  store i8 -128, i8* %16, align 1, !dbg !274      ; [debug line = 109:3]
  br label %17, !dbg !276                         ; [debug line = 110:3]

; <label>:17                                      ; preds = %20, %10
  %18 = load i32* %i, align 4, !dbg !276          ; [#uses=1 type=i32] [debug line = 110:3]
  %19 = icmp ult i32 %18, 56, !dbg !276           ; [#uses=1 type=i1] [debug line = 110:3]
  br i1 %19, label %20, label %27, !dbg !276      ; [debug line = 110:3]

; <label>:20                                      ; preds = %17
  %21 = load i32* %i, align 4, !dbg !277          ; [#uses=2 type=i32] [debug line = 111:4]
  %22 = add i32 %21, 1, !dbg !277                 ; [#uses=1 type=i32] [debug line = 111:4]
  store i32 %22, i32* %i, align 4, !dbg !277      ; [debug line = 111:4]
  %23 = zext i32 %21 to i64, !dbg !277            ; [#uses=1 type=i64] [debug line = 111:4]
  %24 = load %struct.SHA256_CTX** %1, align 8, !dbg !277 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 111:4]
  %25 = getelementptr inbounds %struct.SHA256_CTX* %24, i32 0, i32 0, !dbg !277 ; [#uses=1 type=[64 x i8]*] [debug line = 111:4]
  %26 = getelementptr inbounds [64 x i8]* %25, i32 0, i64 %23, !dbg !277 ; [#uses=1 type=i8*] [debug line = 111:4]
  store i8 0, i8* %26, align 1, !dbg !277         ; [debug line = 111:4]
  br label %17, !dbg !277                         ; [debug line = 111:4]

; <label>:27                                      ; preds = %17
  br label %63, !dbg !278                         ; [debug line = 112:2]

; <label>:28                                      ; preds = %0
  %29 = load i32* %i, align 4, !dbg !279          ; [#uses=2 type=i32] [debug line = 114:3]
  %30 = add i32 %29, 1, !dbg !279                 ; [#uses=1 type=i32] [debug line = 114:3]
  store i32 %30, i32* %i, align 4, !dbg !279      ; [debug line = 114:3]
  %31 = zext i32 %29 to i64, !dbg !279            ; [#uses=1 type=i64] [debug line = 114:3]
  %32 = load %struct.SHA256_CTX** %1, align 8, !dbg !279 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 114:3]
  %33 = getelementptr inbounds %struct.SHA256_CTX* %32, i32 0, i32 0, !dbg !279 ; [#uses=1 type=[64 x i8]*] [debug line = 114:3]
  %34 = getelementptr inbounds [64 x i8]* %33, i32 0, i64 %31, !dbg !279 ; [#uses=1 type=i8*] [debug line = 114:3]
  store i8 -128, i8* %34, align 1, !dbg !279      ; [debug line = 114:3]
  br label %35, !dbg !281                         ; [debug line = 115:3]

; <label>:35                                      ; preds = %38, %28
  %36 = load i32* %i, align 4, !dbg !281          ; [#uses=1 type=i32] [debug line = 115:3]
  %37 = icmp ult i32 %36, 64, !dbg !281           ; [#uses=1 type=i1] [debug line = 115:3]
  br i1 %37, label %38, label %45, !dbg !281      ; [debug line = 115:3]

; <label>:38                                      ; preds = %35
  %39 = load i32* %i, align 4, !dbg !282          ; [#uses=2 type=i32] [debug line = 116:4]
  %40 = add i32 %39, 1, !dbg !282                 ; [#uses=1 type=i32] [debug line = 116:4]
  store i32 %40, i32* %i, align 4, !dbg !282      ; [debug line = 116:4]
  %41 = zext i32 %39 to i64, !dbg !282            ; [#uses=1 type=i64] [debug line = 116:4]
  %42 = load %struct.SHA256_CTX** %1, align 8, !dbg !282 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 116:4]
  %43 = getelementptr inbounds %struct.SHA256_CTX* %42, i32 0, i32 0, !dbg !282 ; [#uses=1 type=[64 x i8]*] [debug line = 116:4]
  %44 = getelementptr inbounds [64 x i8]* %43, i32 0, i64 %41, !dbg !282 ; [#uses=1 type=i8*] [debug line = 116:4]
  store i8 0, i8* %44, align 1, !dbg !282         ; [debug line = 116:4]
  br label %35, !dbg !282                         ; [debug line = 116:4]

; <label>:45                                      ; preds = %35
  %46 = load %struct.SHA256_CTX** %1, align 8, !dbg !283 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 117:3]
  %47 = load %struct.SHA256_CTX** %1, align 8, !dbg !283 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 117:3]
  %48 = getelementptr inbounds %struct.SHA256_CTX* %47, i32 0, i32 0, !dbg !283 ; [#uses=1 type=[64 x i8]*] [debug line = 117:3]
  %49 = getelementptr inbounds [64 x i8]* %48, i32 0, i32 0, !dbg !283 ; [#uses=1 type=i8*] [debug line = 117:3]
  call void @sha256_transform(%struct.SHA256_CTX* %46, i8* %49), !dbg !283 ; [debug line = 117:3]
  store i32 0, i32* %i, align 4, !dbg !284        ; [debug line = 118:8]
  br label %50, !dbg !284                         ; [debug line = 118:8]

; <label>:50                                      ; preds = %59, %45
  %51 = load i32* %i, align 4, !dbg !284          ; [#uses=1 type=i32] [debug line = 118:8]
  %52 = icmp ult i32 %51, 56, !dbg !284           ; [#uses=1 type=i1] [debug line = 118:8]
  br i1 %52, label %53, label %62, !dbg !284      ; [debug line = 118:8]

; <label>:53                                      ; preds = %50
  %54 = load i32* %i, align 4, !dbg !286          ; [#uses=1 type=i32] [debug line = 119:4]
  %55 = zext i32 %54 to i64, !dbg !286            ; [#uses=1 type=i64] [debug line = 119:4]
  %56 = load %struct.SHA256_CTX** %1, align 8, !dbg !286 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 119:4]
  %57 = getelementptr inbounds %struct.SHA256_CTX* %56, i32 0, i32 0, !dbg !286 ; [#uses=1 type=[64 x i8]*] [debug line = 119:4]
  %58 = getelementptr inbounds [64 x i8]* %57, i32 0, i64 %55, !dbg !286 ; [#uses=1 type=i8*] [debug line = 119:4]
  store i8 0, i8* %58, align 1, !dbg !286         ; [debug line = 119:4]
  br label %59, !dbg !288                         ; [debug line = 120:3]

; <label>:59                                      ; preds = %53
  %60 = load i32* %i, align 4, !dbg !289          ; [#uses=1 type=i32] [debug line = 118:23]
  %61 = add i32 %60, 1, !dbg !289                 ; [#uses=1 type=i32] [debug line = 118:23]
  store i32 %61, i32* %i, align 4, !dbg !289      ; [debug line = 118:23]
  br label %50, !dbg !289                         ; [debug line = 118:23]

; <label>:62                                      ; preds = %50
  br label %63

; <label>:63                                      ; preds = %62, %27
  %64 = load %struct.SHA256_CTX** %1, align 8, !dbg !290 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 125:4]
  %65 = getelementptr inbounds %struct.SHA256_CTX* %64, i32 0, i32 2, !dbg !290 ; [#uses=1 type=[2 x i32]*] [debug line = 125:4]
  %66 = getelementptr inbounds [2 x i32]* %65, i32 0, i64 0, !dbg !290 ; [#uses=1 type=i32*] [debug line = 125:4]
  %67 = load i32* %66, align 4, !dbg !290         ; [#uses=1 type=i32] [debug line = 125:4]
  %68 = load %struct.SHA256_CTX** %1, align 8, !dbg !290 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 125:4]
  %69 = getelementptr inbounds %struct.SHA256_CTX* %68, i32 0, i32 1, !dbg !290 ; [#uses=1 type=i32*] [debug line = 125:4]
  %70 = load i32* %69, align 4, !dbg !290         ; [#uses=1 type=i32] [debug line = 125:4]
  %71 = mul i32 %70, 8, !dbg !290                 ; [#uses=1 type=i32] [debug line = 125:4]
  %72 = sub i32 -1, %71, !dbg !290                ; [#uses=1 type=i32] [debug line = 125:4]
  %73 = icmp ugt i32 %67, %72, !dbg !290          ; [#uses=1 type=i1] [debug line = 125:4]
  br i1 %73, label %74, label %80, !dbg !290      ; [debug line = 125:4]

; <label>:74                                      ; preds = %63
  %75 = load %struct.SHA256_CTX** %1, align 8, !dbg !291 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 125:58]
  %76 = getelementptr inbounds %struct.SHA256_CTX* %75, i32 0, i32 2, !dbg !291 ; [#uses=1 type=[2 x i32]*] [debug line = 125:58]
  %77 = getelementptr inbounds [2 x i32]* %76, i32 0, i64 1, !dbg !291 ; [#uses=2 type=i32*] [debug line = 125:58]
  %78 = load i32* %77, align 4, !dbg !291         ; [#uses=1 type=i32] [debug line = 125:58]
  %79 = add i32 %78, 1, !dbg !291                 ; [#uses=1 type=i32] [debug line = 125:58]
  store i32 %79, i32* %77, align 4, !dbg !291     ; [debug line = 125:58]
  br label %80, !dbg !291                         ; [debug line = 125:58]

; <label>:80                                      ; preds = %74, %63
  %81 = load %struct.SHA256_CTX** %1, align 8, !dbg !292 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 125:76]
  %82 = getelementptr inbounds %struct.SHA256_CTX* %81, i32 0, i32 1, !dbg !292 ; [#uses=1 type=i32*] [debug line = 125:76]
  %83 = load i32* %82, align 4, !dbg !292         ; [#uses=1 type=i32] [debug line = 125:76]
  %84 = mul i32 %83, 8, !dbg !292                 ; [#uses=1 type=i32] [debug line = 125:76]
  %85 = load %struct.SHA256_CTX** %1, align 8, !dbg !292 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 125:76]
  %86 = getelementptr inbounds %struct.SHA256_CTX* %85, i32 0, i32 2, !dbg !292 ; [#uses=1 type=[2 x i32]*] [debug line = 125:76]
  %87 = getelementptr inbounds [2 x i32]* %86, i32 0, i64 0, !dbg !292 ; [#uses=2 type=i32*] [debug line = 125:76]
  %88 = load i32* %87, align 4, !dbg !292         ; [#uses=1 type=i32] [debug line = 125:76]
  %89 = add i32 %88, %84, !dbg !292               ; [#uses=1 type=i32] [debug line = 125:76]
  store i32 %89, i32* %87, align 4, !dbg !292     ; [debug line = 125:76]
  %90 = load %struct.SHA256_CTX** %1, align 8, !dbg !293 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 126:4]
  %91 = getelementptr inbounds %struct.SHA256_CTX* %90, i32 0, i32 2, !dbg !293 ; [#uses=1 type=[2 x i32]*] [debug line = 126:4]
  %92 = getelementptr inbounds [2 x i32]* %91, i32 0, i64 0, !dbg !293 ; [#uses=1 type=i32*] [debug line = 126:4]
  %93 = load i32* %92, align 4, !dbg !293         ; [#uses=1 type=i32] [debug line = 126:4]
  %94 = trunc i32 %93 to i8, !dbg !293            ; [#uses=1 type=i8] [debug line = 126:4]
  %95 = load %struct.SHA256_CTX** %1, align 8, !dbg !293 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 126:4]
  %96 = getelementptr inbounds %struct.SHA256_CTX* %95, i32 0, i32 0, !dbg !293 ; [#uses=1 type=[64 x i8]*] [debug line = 126:4]
  %97 = getelementptr inbounds [64 x i8]* %96, i32 0, i64 63, !dbg !293 ; [#uses=1 type=i8*] [debug line = 126:4]
  store i8 %94, i8* %97, align 1, !dbg !293       ; [debug line = 126:4]
  %98 = load %struct.SHA256_CTX** %1, align 8, !dbg !294 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 127:4]
  %99 = getelementptr inbounds %struct.SHA256_CTX* %98, i32 0, i32 2, !dbg !294 ; [#uses=1 type=[2 x i32]*] [debug line = 127:4]
  %100 = getelementptr inbounds [2 x i32]* %99, i32 0, i64 0, !dbg !294 ; [#uses=1 type=i32*] [debug line = 127:4]
  %101 = load i32* %100, align 4, !dbg !294       ; [#uses=1 type=i32] [debug line = 127:4]
  %102 = lshr i32 %101, 8, !dbg !294              ; [#uses=1 type=i32] [debug line = 127:4]
  %103 = trunc i32 %102 to i8, !dbg !294          ; [#uses=1 type=i8] [debug line = 127:4]
  %104 = load %struct.SHA256_CTX** %1, align 8, !dbg !294 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 127:4]
  %105 = getelementptr inbounds %struct.SHA256_CTX* %104, i32 0, i32 0, !dbg !294 ; [#uses=1 type=[64 x i8]*] [debug line = 127:4]
  %106 = getelementptr inbounds [64 x i8]* %105, i32 0, i64 62, !dbg !294 ; [#uses=1 type=i8*] [debug line = 127:4]
  store i8 %103, i8* %106, align 1, !dbg !294     ; [debug line = 127:4]
  %107 = load %struct.SHA256_CTX** %1, align 8, !dbg !295 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 128:4]
  %108 = getelementptr inbounds %struct.SHA256_CTX* %107, i32 0, i32 2, !dbg !295 ; [#uses=1 type=[2 x i32]*] [debug line = 128:4]
  %109 = getelementptr inbounds [2 x i32]* %108, i32 0, i64 0, !dbg !295 ; [#uses=1 type=i32*] [debug line = 128:4]
  %110 = load i32* %109, align 4, !dbg !295       ; [#uses=1 type=i32] [debug line = 128:4]
  %111 = lshr i32 %110, 16, !dbg !295             ; [#uses=1 type=i32] [debug line = 128:4]
  %112 = trunc i32 %111 to i8, !dbg !295          ; [#uses=1 type=i8] [debug line = 128:4]
  %113 = load %struct.SHA256_CTX** %1, align 8, !dbg !295 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 128:4]
  %114 = getelementptr inbounds %struct.SHA256_CTX* %113, i32 0, i32 0, !dbg !295 ; [#uses=1 type=[64 x i8]*] [debug line = 128:4]
  %115 = getelementptr inbounds [64 x i8]* %114, i32 0, i64 61, !dbg !295 ; [#uses=1 type=i8*] [debug line = 128:4]
  store i8 %112, i8* %115, align 1, !dbg !295     ; [debug line = 128:4]
  %116 = load %struct.SHA256_CTX** %1, align 8, !dbg !296 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 129:4]
  %117 = getelementptr inbounds %struct.SHA256_CTX* %116, i32 0, i32 2, !dbg !296 ; [#uses=1 type=[2 x i32]*] [debug line = 129:4]
  %118 = getelementptr inbounds [2 x i32]* %117, i32 0, i64 0, !dbg !296 ; [#uses=1 type=i32*] [debug line = 129:4]
  %119 = load i32* %118, align 4, !dbg !296       ; [#uses=1 type=i32] [debug line = 129:4]
  %120 = lshr i32 %119, 24, !dbg !296             ; [#uses=1 type=i32] [debug line = 129:4]
  %121 = trunc i32 %120 to i8, !dbg !296          ; [#uses=1 type=i8] [debug line = 129:4]
  %122 = load %struct.SHA256_CTX** %1, align 8, !dbg !296 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 129:4]
  %123 = getelementptr inbounds %struct.SHA256_CTX* %122, i32 0, i32 0, !dbg !296 ; [#uses=1 type=[64 x i8]*] [debug line = 129:4]
  %124 = getelementptr inbounds [64 x i8]* %123, i32 0, i64 60, !dbg !296 ; [#uses=1 type=i8*] [debug line = 129:4]
  store i8 %121, i8* %124, align 1, !dbg !296     ; [debug line = 129:4]
  %125 = load %struct.SHA256_CTX** %1, align 8, !dbg !297 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 130:4]
  %126 = getelementptr inbounds %struct.SHA256_CTX* %125, i32 0, i32 2, !dbg !297 ; [#uses=1 type=[2 x i32]*] [debug line = 130:4]
  %127 = getelementptr inbounds [2 x i32]* %126, i32 0, i64 1, !dbg !297 ; [#uses=1 type=i32*] [debug line = 130:4]
  %128 = load i32* %127, align 4, !dbg !297       ; [#uses=1 type=i32] [debug line = 130:4]
  %129 = trunc i32 %128 to i8, !dbg !297          ; [#uses=1 type=i8] [debug line = 130:4]
  %130 = load %struct.SHA256_CTX** %1, align 8, !dbg !297 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 130:4]
  %131 = getelementptr inbounds %struct.SHA256_CTX* %130, i32 0, i32 0, !dbg !297 ; [#uses=1 type=[64 x i8]*] [debug line = 130:4]
  %132 = getelementptr inbounds [64 x i8]* %131, i32 0, i64 59, !dbg !297 ; [#uses=1 type=i8*] [debug line = 130:4]
  store i8 %129, i8* %132, align 1, !dbg !297     ; [debug line = 130:4]
  %133 = load %struct.SHA256_CTX** %1, align 8, !dbg !298 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 131:4]
  %134 = getelementptr inbounds %struct.SHA256_CTX* %133, i32 0, i32 2, !dbg !298 ; [#uses=1 type=[2 x i32]*] [debug line = 131:4]
  %135 = getelementptr inbounds [2 x i32]* %134, i32 0, i64 1, !dbg !298 ; [#uses=1 type=i32*] [debug line = 131:4]
  %136 = load i32* %135, align 4, !dbg !298       ; [#uses=1 type=i32] [debug line = 131:4]
  %137 = lshr i32 %136, 8, !dbg !298              ; [#uses=1 type=i32] [debug line = 131:4]
  %138 = trunc i32 %137 to i8, !dbg !298          ; [#uses=1 type=i8] [debug line = 131:4]
  %139 = load %struct.SHA256_CTX** %1, align 8, !dbg !298 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 131:4]
  %140 = getelementptr inbounds %struct.SHA256_CTX* %139, i32 0, i32 0, !dbg !298 ; [#uses=1 type=[64 x i8]*] [debug line = 131:4]
  %141 = getelementptr inbounds [64 x i8]* %140, i32 0, i64 58, !dbg !298 ; [#uses=1 type=i8*] [debug line = 131:4]
  store i8 %138, i8* %141, align 1, !dbg !298     ; [debug line = 131:4]
  %142 = load %struct.SHA256_CTX** %1, align 8, !dbg !299 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 132:4]
  %143 = getelementptr inbounds %struct.SHA256_CTX* %142, i32 0, i32 2, !dbg !299 ; [#uses=1 type=[2 x i32]*] [debug line = 132:4]
  %144 = getelementptr inbounds [2 x i32]* %143, i32 0, i64 1, !dbg !299 ; [#uses=1 type=i32*] [debug line = 132:4]
  %145 = load i32* %144, align 4, !dbg !299       ; [#uses=1 type=i32] [debug line = 132:4]
  %146 = lshr i32 %145, 16, !dbg !299             ; [#uses=1 type=i32] [debug line = 132:4]
  %147 = trunc i32 %146 to i8, !dbg !299          ; [#uses=1 type=i8] [debug line = 132:4]
  %148 = load %struct.SHA256_CTX** %1, align 8, !dbg !299 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 132:4]
  %149 = getelementptr inbounds %struct.SHA256_CTX* %148, i32 0, i32 0, !dbg !299 ; [#uses=1 type=[64 x i8]*] [debug line = 132:4]
  %150 = getelementptr inbounds [64 x i8]* %149, i32 0, i64 57, !dbg !299 ; [#uses=1 type=i8*] [debug line = 132:4]
  store i8 %147, i8* %150, align 1, !dbg !299     ; [debug line = 132:4]
  %151 = load %struct.SHA256_CTX** %1, align 8, !dbg !300 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 133:4]
  %152 = getelementptr inbounds %struct.SHA256_CTX* %151, i32 0, i32 2, !dbg !300 ; [#uses=1 type=[2 x i32]*] [debug line = 133:4]
  %153 = getelementptr inbounds [2 x i32]* %152, i32 0, i64 1, !dbg !300 ; [#uses=1 type=i32*] [debug line = 133:4]
  %154 = load i32* %153, align 4, !dbg !300       ; [#uses=1 type=i32] [debug line = 133:4]
  %155 = lshr i32 %154, 24, !dbg !300             ; [#uses=1 type=i32] [debug line = 133:4]
  %156 = trunc i32 %155 to i8, !dbg !300          ; [#uses=1 type=i8] [debug line = 133:4]
  %157 = load %struct.SHA256_CTX** %1, align 8, !dbg !300 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 133:4]
  %158 = getelementptr inbounds %struct.SHA256_CTX* %157, i32 0, i32 0, !dbg !300 ; [#uses=1 type=[64 x i8]*] [debug line = 133:4]
  %159 = getelementptr inbounds [64 x i8]* %158, i32 0, i64 56, !dbg !300 ; [#uses=1 type=i8*] [debug line = 133:4]
  store i8 %156, i8* %159, align 1, !dbg !300     ; [debug line = 133:4]
  %160 = load %struct.SHA256_CTX** %1, align 8, !dbg !301 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 134:4]
  %161 = load %struct.SHA256_CTX** %1, align 8, !dbg !301 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 134:4]
  %162 = getelementptr inbounds %struct.SHA256_CTX* %161, i32 0, i32 0, !dbg !301 ; [#uses=1 type=[64 x i8]*] [debug line = 134:4]
  %163 = getelementptr inbounds [64 x i8]* %162, i32 0, i32 0, !dbg !301 ; [#uses=1 type=i8*] [debug line = 134:4]
  call void @sha256_transform(%struct.SHA256_CTX* %160, i8* %163), !dbg !301 ; [debug line = 134:4]
  store i32 0, i32* %i, align 4, !dbg !302        ; [debug line = 138:9]
  br label %164, !dbg !302                        ; [debug line = 138:9]

; <label>:164                                     ; preds = %287, %80
  %165 = load i32* %i, align 4, !dbg !302         ; [#uses=1 type=i32] [debug line = 138:9]
  %166 = icmp ult i32 %165, 4, !dbg !302          ; [#uses=1 type=i1] [debug line = 138:9]
  br i1 %166, label %167, label %290, !dbg !302   ; [debug line = 138:9]

; <label>:167                                     ; preds = %164
  %168 = load %struct.SHA256_CTX** %1, align 8, !dbg !304 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 139:7]
  %169 = getelementptr inbounds %struct.SHA256_CTX* %168, i32 0, i32 3, !dbg !304 ; [#uses=1 type=[8 x i32]*] [debug line = 139:7]
  %170 = getelementptr inbounds [8 x i32]* %169, i32 0, i64 0, !dbg !304 ; [#uses=1 type=i32*] [debug line = 139:7]
  %171 = load i32* %170, align 4, !dbg !304       ; [#uses=1 type=i32] [debug line = 139:7]
  %172 = load i32* %i, align 4, !dbg !304         ; [#uses=1 type=i32] [debug line = 139:7]
  %173 = mul i32 %172, 8, !dbg !304               ; [#uses=1 type=i32] [debug line = 139:7]
  %174 = sub i32 24, %173, !dbg !304              ; [#uses=1 type=i32] [debug line = 139:7]
  %175 = lshr i32 %171, %174, !dbg !304           ; [#uses=1 type=i32] [debug line = 139:7]
  %176 = and i32 %175, 255, !dbg !304             ; [#uses=1 type=i32] [debug line = 139:7]
  %177 = trunc i32 %176 to i8, !dbg !304          ; [#uses=1 type=i8] [debug line = 139:7]
  %178 = load i32* %i, align 4, !dbg !304         ; [#uses=1 type=i32] [debug line = 139:7]
  %179 = zext i32 %178 to i64, !dbg !304          ; [#uses=1 type=i64] [debug line = 139:7]
  %180 = load i8** %2, align 8, !dbg !304         ; [#uses=1 type=i8*] [debug line = 139:7]
  %181 = getelementptr inbounds i8* %180, i64 %179, !dbg !304 ; [#uses=1 type=i8*] [debug line = 139:7]
  store i8 %177, i8* %181, align 1, !dbg !304     ; [debug line = 139:7]
  %182 = load %struct.SHA256_CTX** %1, align 8, !dbg !306 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 140:7]
  %183 = getelementptr inbounds %struct.SHA256_CTX* %182, i32 0, i32 3, !dbg !306 ; [#uses=1 type=[8 x i32]*] [debug line = 140:7]
  %184 = getelementptr inbounds [8 x i32]* %183, i32 0, i64 1, !dbg !306 ; [#uses=1 type=i32*] [debug line = 140:7]
  %185 = load i32* %184, align 4, !dbg !306       ; [#uses=1 type=i32] [debug line = 140:7]
  %186 = load i32* %i, align 4, !dbg !306         ; [#uses=1 type=i32] [debug line = 140:7]
  %187 = mul i32 %186, 8, !dbg !306               ; [#uses=1 type=i32] [debug line = 140:7]
  %188 = sub i32 24, %187, !dbg !306              ; [#uses=1 type=i32] [debug line = 140:7]
  %189 = lshr i32 %185, %188, !dbg !306           ; [#uses=1 type=i32] [debug line = 140:7]
  %190 = and i32 %189, 255, !dbg !306             ; [#uses=1 type=i32] [debug line = 140:7]
  %191 = trunc i32 %190 to i8, !dbg !306          ; [#uses=1 type=i8] [debug line = 140:7]
  %192 = load i32* %i, align 4, !dbg !306         ; [#uses=1 type=i32] [debug line = 140:7]
  %193 = add i32 %192, 4, !dbg !306               ; [#uses=1 type=i32] [debug line = 140:7]
  %194 = zext i32 %193 to i64, !dbg !306          ; [#uses=1 type=i64] [debug line = 140:7]
  %195 = load i8** %2, align 8, !dbg !306         ; [#uses=1 type=i8*] [debug line = 140:7]
  %196 = getelementptr inbounds i8* %195, i64 %194, !dbg !306 ; [#uses=1 type=i8*] [debug line = 140:7]
  store i8 %191, i8* %196, align 1, !dbg !306     ; [debug line = 140:7]
  %197 = load %struct.SHA256_CTX** %1, align 8, !dbg !307 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 141:7]
  %198 = getelementptr inbounds %struct.SHA256_CTX* %197, i32 0, i32 3, !dbg !307 ; [#uses=1 type=[8 x i32]*] [debug line = 141:7]
  %199 = getelementptr inbounds [8 x i32]* %198, i32 0, i64 2, !dbg !307 ; [#uses=1 type=i32*] [debug line = 141:7]
  %200 = load i32* %199, align 4, !dbg !307       ; [#uses=1 type=i32] [debug line = 141:7]
  %201 = load i32* %i, align 4, !dbg !307         ; [#uses=1 type=i32] [debug line = 141:7]
  %202 = mul i32 %201, 8, !dbg !307               ; [#uses=1 type=i32] [debug line = 141:7]
  %203 = sub i32 24, %202, !dbg !307              ; [#uses=1 type=i32] [debug line = 141:7]
  %204 = lshr i32 %200, %203, !dbg !307           ; [#uses=1 type=i32] [debug line = 141:7]
  %205 = and i32 %204, 255, !dbg !307             ; [#uses=1 type=i32] [debug line = 141:7]
  %206 = trunc i32 %205 to i8, !dbg !307          ; [#uses=1 type=i8] [debug line = 141:7]
  %207 = load i32* %i, align 4, !dbg !307         ; [#uses=1 type=i32] [debug line = 141:7]
  %208 = add i32 %207, 8, !dbg !307               ; [#uses=1 type=i32] [debug line = 141:7]
  %209 = zext i32 %208 to i64, !dbg !307          ; [#uses=1 type=i64] [debug line = 141:7]
  %210 = load i8** %2, align 8, !dbg !307         ; [#uses=1 type=i8*] [debug line = 141:7]
  %211 = getelementptr inbounds i8* %210, i64 %209, !dbg !307 ; [#uses=1 type=i8*] [debug line = 141:7]
  store i8 %206, i8* %211, align 1, !dbg !307     ; [debug line = 141:7]
  %212 = load %struct.SHA256_CTX** %1, align 8, !dbg !308 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 142:7]
  %213 = getelementptr inbounds %struct.SHA256_CTX* %212, i32 0, i32 3, !dbg !308 ; [#uses=1 type=[8 x i32]*] [debug line = 142:7]
  %214 = getelementptr inbounds [8 x i32]* %213, i32 0, i64 3, !dbg !308 ; [#uses=1 type=i32*] [debug line = 142:7]
  %215 = load i32* %214, align 4, !dbg !308       ; [#uses=1 type=i32] [debug line = 142:7]
  %216 = load i32* %i, align 4, !dbg !308         ; [#uses=1 type=i32] [debug line = 142:7]
  %217 = mul i32 %216, 8, !dbg !308               ; [#uses=1 type=i32] [debug line = 142:7]
  %218 = sub i32 24, %217, !dbg !308              ; [#uses=1 type=i32] [debug line = 142:7]
  %219 = lshr i32 %215, %218, !dbg !308           ; [#uses=1 type=i32] [debug line = 142:7]
  %220 = and i32 %219, 255, !dbg !308             ; [#uses=1 type=i32] [debug line = 142:7]
  %221 = trunc i32 %220 to i8, !dbg !308          ; [#uses=1 type=i8] [debug line = 142:7]
  %222 = load i32* %i, align 4, !dbg !308         ; [#uses=1 type=i32] [debug line = 142:7]
  %223 = add i32 %222, 12, !dbg !308              ; [#uses=1 type=i32] [debug line = 142:7]
  %224 = zext i32 %223 to i64, !dbg !308          ; [#uses=1 type=i64] [debug line = 142:7]
  %225 = load i8** %2, align 8, !dbg !308         ; [#uses=1 type=i8*] [debug line = 142:7]
  %226 = getelementptr inbounds i8* %225, i64 %224, !dbg !308 ; [#uses=1 type=i8*] [debug line = 142:7]
  store i8 %221, i8* %226, align 1, !dbg !308     ; [debug line = 142:7]
  %227 = load %struct.SHA256_CTX** %1, align 8, !dbg !309 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 143:7]
  %228 = getelementptr inbounds %struct.SHA256_CTX* %227, i32 0, i32 3, !dbg !309 ; [#uses=1 type=[8 x i32]*] [debug line = 143:7]
  %229 = getelementptr inbounds [8 x i32]* %228, i32 0, i64 4, !dbg !309 ; [#uses=1 type=i32*] [debug line = 143:7]
  %230 = load i32* %229, align 4, !dbg !309       ; [#uses=1 type=i32] [debug line = 143:7]
  %231 = load i32* %i, align 4, !dbg !309         ; [#uses=1 type=i32] [debug line = 143:7]
  %232 = mul i32 %231, 8, !dbg !309               ; [#uses=1 type=i32] [debug line = 143:7]
  %233 = sub i32 24, %232, !dbg !309              ; [#uses=1 type=i32] [debug line = 143:7]
  %234 = lshr i32 %230, %233, !dbg !309           ; [#uses=1 type=i32] [debug line = 143:7]
  %235 = and i32 %234, 255, !dbg !309             ; [#uses=1 type=i32] [debug line = 143:7]
  %236 = trunc i32 %235 to i8, !dbg !309          ; [#uses=1 type=i8] [debug line = 143:7]
  %237 = load i32* %i, align 4, !dbg !309         ; [#uses=1 type=i32] [debug line = 143:7]
  %238 = add i32 %237, 16, !dbg !309              ; [#uses=1 type=i32] [debug line = 143:7]
  %239 = zext i32 %238 to i64, !dbg !309          ; [#uses=1 type=i64] [debug line = 143:7]
  %240 = load i8** %2, align 8, !dbg !309         ; [#uses=1 type=i8*] [debug line = 143:7]
  %241 = getelementptr inbounds i8* %240, i64 %239, !dbg !309 ; [#uses=1 type=i8*] [debug line = 143:7]
  store i8 %236, i8* %241, align 1, !dbg !309     ; [debug line = 143:7]
  %242 = load %struct.SHA256_CTX** %1, align 8, !dbg !310 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 144:7]
  %243 = getelementptr inbounds %struct.SHA256_CTX* %242, i32 0, i32 3, !dbg !310 ; [#uses=1 type=[8 x i32]*] [debug line = 144:7]
  %244 = getelementptr inbounds [8 x i32]* %243, i32 0, i64 5, !dbg !310 ; [#uses=1 type=i32*] [debug line = 144:7]
  %245 = load i32* %244, align 4, !dbg !310       ; [#uses=1 type=i32] [debug line = 144:7]
  %246 = load i32* %i, align 4, !dbg !310         ; [#uses=1 type=i32] [debug line = 144:7]
  %247 = mul i32 %246, 8, !dbg !310               ; [#uses=1 type=i32] [debug line = 144:7]
  %248 = sub i32 24, %247, !dbg !310              ; [#uses=1 type=i32] [debug line = 144:7]
  %249 = lshr i32 %245, %248, !dbg !310           ; [#uses=1 type=i32] [debug line = 144:7]
  %250 = and i32 %249, 255, !dbg !310             ; [#uses=1 type=i32] [debug line = 144:7]
  %251 = trunc i32 %250 to i8, !dbg !310          ; [#uses=1 type=i8] [debug line = 144:7]
  %252 = load i32* %i, align 4, !dbg !310         ; [#uses=1 type=i32] [debug line = 144:7]
  %253 = add i32 %252, 20, !dbg !310              ; [#uses=1 type=i32] [debug line = 144:7]
  %254 = zext i32 %253 to i64, !dbg !310          ; [#uses=1 type=i64] [debug line = 144:7]
  %255 = load i8** %2, align 8, !dbg !310         ; [#uses=1 type=i8*] [debug line = 144:7]
  %256 = getelementptr inbounds i8* %255, i64 %254, !dbg !310 ; [#uses=1 type=i8*] [debug line = 144:7]
  store i8 %251, i8* %256, align 1, !dbg !310     ; [debug line = 144:7]
  %257 = load %struct.SHA256_CTX** %1, align 8, !dbg !311 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 145:7]
  %258 = getelementptr inbounds %struct.SHA256_CTX* %257, i32 0, i32 3, !dbg !311 ; [#uses=1 type=[8 x i32]*] [debug line = 145:7]
  %259 = getelementptr inbounds [8 x i32]* %258, i32 0, i64 6, !dbg !311 ; [#uses=1 type=i32*] [debug line = 145:7]
  %260 = load i32* %259, align 4, !dbg !311       ; [#uses=1 type=i32] [debug line = 145:7]
  %261 = load i32* %i, align 4, !dbg !311         ; [#uses=1 type=i32] [debug line = 145:7]
  %262 = mul i32 %261, 8, !dbg !311               ; [#uses=1 type=i32] [debug line = 145:7]
  %263 = sub i32 24, %262, !dbg !311              ; [#uses=1 type=i32] [debug line = 145:7]
  %264 = lshr i32 %260, %263, !dbg !311           ; [#uses=1 type=i32] [debug line = 145:7]
  %265 = and i32 %264, 255, !dbg !311             ; [#uses=1 type=i32] [debug line = 145:7]
  %266 = trunc i32 %265 to i8, !dbg !311          ; [#uses=1 type=i8] [debug line = 145:7]
  %267 = load i32* %i, align 4, !dbg !311         ; [#uses=1 type=i32] [debug line = 145:7]
  %268 = add i32 %267, 24, !dbg !311              ; [#uses=1 type=i32] [debug line = 145:7]
  %269 = zext i32 %268 to i64, !dbg !311          ; [#uses=1 type=i64] [debug line = 145:7]
  %270 = load i8** %2, align 8, !dbg !311         ; [#uses=1 type=i8*] [debug line = 145:7]
  %271 = getelementptr inbounds i8* %270, i64 %269, !dbg !311 ; [#uses=1 type=i8*] [debug line = 145:7]
  store i8 %266, i8* %271, align 1, !dbg !311     ; [debug line = 145:7]
  %272 = load %struct.SHA256_CTX** %1, align 8, !dbg !312 ; [#uses=1 type=%struct.SHA256_CTX*] [debug line = 146:7]
  %273 = getelementptr inbounds %struct.SHA256_CTX* %272, i32 0, i32 3, !dbg !312 ; [#uses=1 type=[8 x i32]*] [debug line = 146:7]
  %274 = getelementptr inbounds [8 x i32]* %273, i32 0, i64 7, !dbg !312 ; [#uses=1 type=i32*] [debug line = 146:7]
  %275 = load i32* %274, align 4, !dbg !312       ; [#uses=1 type=i32] [debug line = 146:7]
  %276 = load i32* %i, align 4, !dbg !312         ; [#uses=1 type=i32] [debug line = 146:7]
  %277 = mul i32 %276, 8, !dbg !312               ; [#uses=1 type=i32] [debug line = 146:7]
  %278 = sub i32 24, %277, !dbg !312              ; [#uses=1 type=i32] [debug line = 146:7]
  %279 = lshr i32 %275, %278, !dbg !312           ; [#uses=1 type=i32] [debug line = 146:7]
  %280 = and i32 %279, 255, !dbg !312             ; [#uses=1 type=i32] [debug line = 146:7]
  %281 = trunc i32 %280 to i8, !dbg !312          ; [#uses=1 type=i8] [debug line = 146:7]
  %282 = load i32* %i, align 4, !dbg !312         ; [#uses=1 type=i32] [debug line = 146:7]
  %283 = add i32 %282, 28, !dbg !312              ; [#uses=1 type=i32] [debug line = 146:7]
  %284 = zext i32 %283 to i64, !dbg !312          ; [#uses=1 type=i64] [debug line = 146:7]
  %285 = load i8** %2, align 8, !dbg !312         ; [#uses=1 type=i8*] [debug line = 146:7]
  %286 = getelementptr inbounds i8* %285, i64 %284, !dbg !312 ; [#uses=1 type=i8*] [debug line = 146:7]
  store i8 %281, i8* %286, align 1, !dbg !312     ; [debug line = 146:7]
  br label %287, !dbg !313                        ; [debug line = 147:4]

; <label>:287                                     ; preds = %167
  %288 = load i32* %i, align 4, !dbg !314         ; [#uses=1 type=i32] [debug line = 138:21]
  %289 = add i32 %288, 1, !dbg !314               ; [#uses=1 type=i32] [debug line = 138:21]
  store i32 %289, i32* %i, align 4, !dbg !314     ; [debug line = 138:21]
  br label %164, !dbg !314                        ; [debug line = 138:21]

; <label>:290                                     ; preds = %164
  ret void, !dbg !315                             ; [debug line = 148:1]
}

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
!16 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !17, i32 315, metadata !18, i32 0, i32 1, %struct.SHA256_CTX* @_IO_2_1_stdin_} ; [ DW_TAG_variable ]
!17 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!18 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !17, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!19 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !17, i32 316, metadata !18, i32 0, i32 1, %struct.SHA256_CTX* @_IO_2_1_stdout_} ; [ DW_TAG_variable ]
!20 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !17, i32 317, metadata !18, i32 0, i32 1, %struct.SHA256_CTX* @_IO_2_1_stderr_} ; [ DW_TAG_variable ]
!21 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !22, i32 26, metadata !23, i32 0, i32 1, i32* @sys_nerr} ; [ DW_TAG_variable ]
!22 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/brett/Thesis/Vivado_WS", null} ; [ DW_TAG_file_type ]
!23 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!24 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/brett/Thesis/Vivado_WS/sha256/solution1/.autopilot/db/sha256_impl.pragma.2.c", metadata !"/home/brett/Thesis/Vivado_WS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !25, metadata !56} ; [ DW_TAG_compile_unit ]
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !27, metadata !49, metadata !52, metadata !55}
!27 = metadata !{i32 786478, i32 0, metadata !28, metadata !"sha256_transform", metadata !"sha256_transform", metadata !"", metadata !28, i32 30, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.SHA256_CTX*, i8*)* @sha256_transform, null, null, metadata !12, i32 31} ; [ DW_TAG_subprogram ]
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
!49 = metadata !{i32 786478, i32 0, metadata !28, metadata !"sha256_init", metadata !"sha256_init", metadata !"", metadata !28, i32 71, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.SHA256_CTX*)* @sha256_init, null, null, metadata !12, i32 72} ; [ DW_TAG_subprogram ]
!50 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!51 = metadata !{null, metadata !31}
!52 = metadata !{i32 786478, i32 0, metadata !28, metadata !"sha256_update", metadata !"sha256_update", metadata !"", metadata !28, i32 86, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.SHA256_CTX*, i8*, i32)* @sha256_update, null, null, metadata !12, i32 87} ; [ DW_TAG_subprogram ]
!53 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!54 = metadata !{null, metadata !31, metadata !9, metadata !11}
!55 = metadata !{i32 786478, i32 0, metadata !28, metadata !"sha256_final", metadata !"sha256_final", metadata !"", metadata !28, i32 101, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.SHA256_CTX*, i8*)* @sha256_final, null, null, metadata !12, i32 102} ; [ DW_TAG_subprogram ]
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
!67 = metadata !{void (%struct.SHA256_CTX*, i8*)* @sha256_transform, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !66}
!68 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!69 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"SHA256_CTX*", metadata !"uchar*"}
!71 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!72 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"data"}
!73 = metadata !{void (%struct.SHA256_CTX*)* @sha256_init, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !66}
!74 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!75 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"SHA256_CTX*"}
!77 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!78 = metadata !{metadata !"kernel_arg_name", metadata !"ctx"}
!79 = metadata !{void (%struct.SHA256_CTX*, i8*, i32)* @sha256_update, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !66}
!80 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!81 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"SHA256_CTX*", metadata !"uchar*", metadata !"uint"}
!83 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!84 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"data", metadata !"len"}
!85 = metadata !{void (%struct.SHA256_CTX*, i8*)* @sha256_final, metadata !68, metadata !69, metadata !70, metadata !71, metadata !86, metadata !66}
!86 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"hash"}
!87 = metadata !{i32 786689, metadata !5, metadata !"data", metadata !6, i32 16777224, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!88 = metadata !{i32 8, i32 28, metadata !5, null}
!89 = metadata !{i32 786689, metadata !5, metadata !"base_offset", metadata !6, i32 33554441, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!90 = metadata !{i32 9, i32 18, metadata !5, null}
!91 = metadata !{i32 786689, metadata !5, metadata !"bytes", metadata !6, i32 50331658, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!92 = metadata !{i32 10, i32 18, metadata !5, null}
!93 = metadata !{i32 786689, metadata !5, metadata !"digest", metadata !6, i32 67108875, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!94 = metadata !{i32 11, i32 19, metadata !5, null}
!95 = metadata !{i32 11, i32 81, metadata !96, null}
!96 = metadata !{i32 786443, metadata !5, i32 11, i32 80, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 11, i32 114, metadata !96, null}
!98 = metadata !{i32 15, i32 1, metadata !96, null}
!99 = metadata !{i32 16, i32 1, metadata !96, null}
!100 = metadata !{i32 17, i32 1, metadata !96, null}
!101 = metadata !{i32 18, i32 1, metadata !96, null}
!102 = metadata !{i32 19, i32 1, metadata !96, null}
!103 = metadata !{i32 786688, metadata !96, metadata !"seg_buf", metadata !6, i32 22, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!104 = metadata !{i32 22, i32 16, metadata !96, null}
!105 = metadata !{i32 786688, metadata !96, metadata !"seg_offset", metadata !6, i32 23, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 23, i32 15, metadata !96, null}
!107 = metadata !{i32 23, i32 29, metadata !96, null}
!108 = metadata !{i32 786688, metadata !96, metadata !"i", metadata !6, i32 24, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 24, i32 6, metadata !96, null}
!110 = metadata !{i32 24, i32 9, metadata !96, null}
!111 = metadata !{i32 786688, metadata !96, metadata !"n", metadata !6, i32 25, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!112 = metadata !{i32 25, i32 15, metadata !96, null}
!113 = metadata !{i32 25, i32 24, metadata !96, null}
!114 = metadata !{i32 786688, metadata !96, metadata !"sha256ctx", metadata !6, i32 28, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!115 = metadata !{i32 786454, null, metadata !"SHA256_CTX", metadata !6, i32 11, i64 0, i64 0, i64 0, i32 0, metadata !116} ; [ DW_TAG_typedef ]
!116 = metadata !{i32 786451, null, metadata !"", metadata !34, i32 6, i64 864, i64 32, i32 0, i32 0, null, metadata !117, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!117 = metadata !{metadata !118, metadata !119, metadata !120, metadata !121}
!118 = metadata !{i32 786445, metadata !116, metadata !"data", metadata !34, i32 7, i64 512, i64 8, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ]
!119 = metadata !{i32 786445, metadata !116, metadata !"datalen", metadata !34, i32 8, i64 32, i64 32, i64 512, i32 0, metadata !11} ; [ DW_TAG_member ]
!120 = metadata !{i32 786445, metadata !116, metadata !"bitlen", metadata !34, i32 9, i64 64, i64 32, i64 544, i32 0, metadata !42} ; [ DW_TAG_member ]
!121 = metadata !{i32 786445, metadata !116, metadata !"state", metadata !34, i32 10, i64 256, i64 32, i64 608, i32 0, metadata !46} ; [ DW_TAG_member ]
!122 = metadata !{i32 28, i32 13, metadata !96, null}
!123 = metadata !{i32 29, i32 2, metadata !96, null}
!124 = metadata !{i32 32, i32 2, metadata !96, null}
!125 = metadata !{i32 34, i32 3, metadata !126, null}
!126 = metadata !{i32 786443, metadata !96, i32 33, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 36, i32 9, metadata !128, null}
!128 = metadata !{i32 786443, metadata !129, i32 36, i32 4, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 786443, metadata !126, i32 35, i32 3, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 37, i32 5, metadata !128, null}
!131 = metadata !{i32 36, i32 20, metadata !128, null}
!132 = metadata !{i32 38, i32 4, metadata !129, null}
!133 = metadata !{i32 39, i32 4, metadata !129, null}
!134 = metadata !{i32 40, i32 4, metadata !129, null}
!135 = metadata !{i32 41, i32 3, metadata !129, null}
!136 = metadata !{i32 44, i32 9, metadata !137, null}
!137 = metadata !{i32 786443, metadata !138, i32 44, i32 4, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!138 = metadata !{i32 786443, metadata !126, i32 43, i32 3, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!139 = metadata !{i32 45, i32 5, metadata !137, null}
!140 = metadata !{i32 44, i32 19, metadata !137, null}
!141 = metadata !{i32 46, i32 4, metadata !138, null}
!142 = metadata !{i32 47, i32 4, metadata !138, null}
!143 = metadata !{i32 49, i32 2, metadata !126, null}
!144 = metadata !{i32 52, i32 2, metadata !96, null}
!145 = metadata !{i32 54, i32 7, metadata !146, null}
!146 = metadata !{i32 786443, metadata !96, i32 54, i32 2, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 54, i32 24, metadata !148, null}
!148 = metadata !{i32 786443, metadata !146, i32 54, i32 23, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 55, i32 1, metadata !148, null}
!150 = metadata !{i32 56, i32 2, metadata !148, null}
!151 = metadata !{i32 57, i32 2, metadata !148, null}
!152 = metadata !{i32 54, i32 18, metadata !146, null}
!153 = metadata !{i32 58, i32 1, metadata !96, null}
!154 = metadata !{i32 786689, metadata !27, metadata !"ctx", metadata !28, i32 16777246, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!155 = metadata !{i32 30, i32 35, metadata !27, null}
!156 = metadata !{i32 786689, metadata !27, metadata !"data", metadata !28, i32 33554462, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!157 = metadata !{i32 30, i32 70, metadata !27, null}
!158 = metadata !{i32 786688, metadata !159, metadata !"a", metadata !28, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!159 = metadata !{i32 786443, metadata !27, i32 31, i32 1, metadata !28, i32 0} ; [ DW_TAG_lexical_block ]
!160 = metadata !{i32 32, i32 34, metadata !159, null}
!161 = metadata !{i32 786688, metadata !159, metadata !"b", metadata !28, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!162 = metadata !{i32 32, i32 36, metadata !159, null}
!163 = metadata !{i32 786688, metadata !159, metadata !"c", metadata !28, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!164 = metadata !{i32 32, i32 38, metadata !159, null}
!165 = metadata !{i32 786688, metadata !159, metadata !"d", metadata !28, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!166 = metadata !{i32 32, i32 40, metadata !159, null}
!167 = metadata !{i32 786688, metadata !159, metadata !"e", metadata !28, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!168 = metadata !{i32 32, i32 42, metadata !159, null}
!169 = metadata !{i32 786688, metadata !159, metadata !"f", metadata !28, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!170 = metadata !{i32 32, i32 44, metadata !159, null}
!171 = metadata !{i32 786688, metadata !159, metadata !"g", metadata !28, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!172 = metadata !{i32 32, i32 46, metadata !159, null}
!173 = metadata !{i32 786688, metadata !159, metadata !"h", metadata !28, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!174 = metadata !{i32 32, i32 48, metadata !159, null}
!175 = metadata !{i32 786688, metadata !159, metadata !"i", metadata !28, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!176 = metadata !{i32 32, i32 50, metadata !159, null}
!177 = metadata !{i32 786688, metadata !159, metadata !"j", metadata !28, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!178 = metadata !{i32 32, i32 52, metadata !159, null}
!179 = metadata !{i32 786688, metadata !159, metadata !"t1", metadata !28, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!180 = metadata !{i32 32, i32 54, metadata !159, null}
!181 = metadata !{i32 786688, metadata !159, metadata !"t2", metadata !28, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!182 = metadata !{i32 32, i32 57, metadata !159, null}
!183 = metadata !{i32 786688, metadata !159, metadata !"m", metadata !28, i32 32, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!184 = metadata !{i32 32, i32 60, metadata !159, null}
!185 = metadata !{i32 34, i32 9, metadata !186, null}
!186 = metadata !{i32 786443, metadata !159, i32 34, i32 4, metadata !28, i32 1} ; [ DW_TAG_lexical_block ]
!187 = metadata !{i32 35, i32 7, metadata !186, null}
!188 = metadata !{i32 34, i32 26, metadata !186, null}
!189 = metadata !{i32 36, i32 4, metadata !190, null}
!190 = metadata !{i32 786443, metadata !159, i32 36, i32 4, metadata !28, i32 2} ; [ DW_TAG_lexical_block ]
!191 = metadata !{i32 37, i32 7, metadata !190, null}
!192 = metadata !{i32 36, i32 20, metadata !190, null}
!193 = metadata !{i32 39, i32 4, metadata !159, null}
!194 = metadata !{i32 40, i32 4, metadata !159, null}
!195 = metadata !{i32 41, i32 4, metadata !159, null}
!196 = metadata !{i32 42, i32 4, metadata !159, null}
!197 = metadata !{i32 43, i32 4, metadata !159, null}
!198 = metadata !{i32 44, i32 4, metadata !159, null}
!199 = metadata !{i32 45, i32 4, metadata !159, null}
!200 = metadata !{i32 46, i32 4, metadata !159, null}
!201 = metadata !{i32 48, i32 9, metadata !202, null}
!202 = metadata !{i32 786443, metadata !159, i32 48, i32 4, metadata !28, i32 3} ; [ DW_TAG_lexical_block ]
!203 = metadata !{i32 49, i32 7, metadata !204, null}
!204 = metadata !{i32 786443, metadata !202, i32 48, i32 29, metadata !28, i32 4} ; [ DW_TAG_lexical_block ]
!205 = metadata !{i32 50, i32 7, metadata !204, null}
!206 = metadata !{i32 51, i32 7, metadata !204, null}
!207 = metadata !{i32 52, i32 7, metadata !204, null}
!208 = metadata !{i32 53, i32 7, metadata !204, null}
!209 = metadata !{i32 54, i32 7, metadata !204, null}
!210 = metadata !{i32 55, i32 7, metadata !204, null}
!211 = metadata !{i32 56, i32 7, metadata !204, null}
!212 = metadata !{i32 57, i32 7, metadata !204, null}
!213 = metadata !{i32 58, i32 7, metadata !204, null}
!214 = metadata !{i32 59, i32 4, metadata !204, null}
!215 = metadata !{i32 48, i32 24, metadata !202, null}
!216 = metadata !{i32 61, i32 4, metadata !159, null}
!217 = metadata !{i32 62, i32 4, metadata !159, null}
!218 = metadata !{i32 63, i32 4, metadata !159, null}
!219 = metadata !{i32 64, i32 4, metadata !159, null}
!220 = metadata !{i32 65, i32 4, metadata !159, null}
!221 = metadata !{i32 66, i32 4, metadata !159, null}
!222 = metadata !{i32 67, i32 4, metadata !159, null}
!223 = metadata !{i32 68, i32 4, metadata !159, null}
!224 = metadata !{i32 69, i32 1, metadata !159, null}
!225 = metadata !{i32 786689, metadata !49, metadata !"ctx", metadata !28, i32 16777287, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!226 = metadata !{i32 71, i32 30, metadata !49, null}
!227 = metadata !{i32 73, i32 4, metadata !228, null}
!228 = metadata !{i32 786443, metadata !49, i32 72, i32 1, metadata !28, i32 5} ; [ DW_TAG_lexical_block ]
!229 = metadata !{i32 74, i32 4, metadata !228, null}
!230 = metadata !{i32 75, i32 4, metadata !228, null}
!231 = metadata !{i32 76, i32 4, metadata !228, null}
!232 = metadata !{i32 77, i32 4, metadata !228, null}
!233 = metadata !{i32 78, i32 4, metadata !228, null}
!234 = metadata !{i32 79, i32 4, metadata !228, null}
!235 = metadata !{i32 80, i32 4, metadata !228, null}
!236 = metadata !{i32 81, i32 4, metadata !228, null}
!237 = metadata !{i32 82, i32 4, metadata !228, null}
!238 = metadata !{i32 83, i32 4, metadata !228, null}
!239 = metadata !{i32 84, i32 1, metadata !228, null}
!240 = metadata !{i32 786689, metadata !52, metadata !"ctx", metadata !28, i32 16777302, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!241 = metadata !{i32 86, i32 32, metadata !52, null}
!242 = metadata !{i32 786689, metadata !52, metadata !"data", metadata !28, i32 33554518, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!243 = metadata !{i32 86, i32 67, metadata !52, null}
!244 = metadata !{i32 786689, metadata !52, metadata !"len", metadata !28, i32 50331734, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!245 = metadata !{i32 86, i32 105, metadata !52, null}
!246 = metadata !{i32 786688, metadata !247, metadata !"i", metadata !28, i32 88, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!247 = metadata !{i32 786443, metadata !52, i32 87, i32 1, metadata !28, i32 6} ; [ DW_TAG_lexical_block ]
!248 = metadata !{i32 88, i32 34, metadata !247, null}
!249 = metadata !{i32 90, i32 9, metadata !250, null}
!250 = metadata !{i32 786443, metadata !247, i32 90, i32 4, metadata !28, i32 7} ; [ DW_TAG_lexical_block ]
!251 = metadata !{i32 91, i32 7, metadata !252, null}
!252 = metadata !{i32 786443, metadata !250, i32 90, i32 28, metadata !28, i32 8} ; [ DW_TAG_lexical_block ]
!253 = metadata !{i32 92, i32 7, metadata !252, null}
!254 = metadata !{i32 93, i32 7, metadata !252, null}
!255 = metadata !{i32 94, i32 10, metadata !256, null}
!256 = metadata !{i32 786443, metadata !252, i32 93, i32 31, metadata !28, i32 9} ; [ DW_TAG_lexical_block ]
!257 = metadata !{i32 95, i32 10, metadata !256, null}
!258 = metadata !{i32 95, i32 51, metadata !256, null}
!259 = metadata !{i32 95, i32 69, metadata !256, null}
!260 = metadata !{i32 96, i32 10, metadata !256, null}
!261 = metadata !{i32 97, i32 7, metadata !256, null}
!262 = metadata !{i32 98, i32 4, metadata !252, null}
!263 = metadata !{i32 90, i32 23, metadata !250, null}
!264 = metadata !{i32 99, i32 1, metadata !247, null}
!265 = metadata !{i32 786689, metadata !55, metadata !"ctx", metadata !28, i32 16777317, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!266 = metadata !{i32 101, i32 31, metadata !55, null}
!267 = metadata !{i32 786689, metadata !55, metadata !"hash", metadata !28, i32 33554533, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!268 = metadata !{i32 101, i32 66, metadata !55, null}
!269 = metadata !{i32 786688, metadata !270, metadata !"i", metadata !28, i32 103, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!270 = metadata !{i32 786443, metadata !55, i32 102, i32 1, metadata !28, i32 10} ; [ DW_TAG_lexical_block ]
!271 = metadata !{i32 103, i32 32, metadata !270, null}
!272 = metadata !{i32 105, i32 2, metadata !270, null}
!273 = metadata !{i32 108, i32 2, metadata !270, null}
!274 = metadata !{i32 109, i32 3, metadata !275, null}
!275 = metadata !{i32 786443, metadata !270, i32 108, i32 25, metadata !28, i32 11} ; [ DW_TAG_lexical_block ]
!276 = metadata !{i32 110, i32 3, metadata !275, null}
!277 = metadata !{i32 111, i32 4, metadata !275, null}
!278 = metadata !{i32 112, i32 2, metadata !275, null}
!279 = metadata !{i32 114, i32 3, metadata !280, null}
!280 = metadata !{i32 786443, metadata !270, i32 113, i32 7, metadata !28, i32 12} ; [ DW_TAG_lexical_block ]
!281 = metadata !{i32 115, i32 3, metadata !280, null}
!282 = metadata !{i32 116, i32 4, metadata !280, null}
!283 = metadata !{i32 117, i32 3, metadata !280, null}
!284 = metadata !{i32 118, i32 8, metadata !285, null}
!285 = metadata !{i32 786443, metadata !280, i32 118, i32 3, metadata !28, i32 13} ; [ DW_TAG_lexical_block ]
!286 = metadata !{i32 119, i32 4, metadata !287, null}
!287 = metadata !{i32 786443, metadata !285, i32 118, i32 29, metadata !28, i32 14} ; [ DW_TAG_lexical_block ]
!288 = metadata !{i32 120, i32 3, metadata !287, null}
!289 = metadata !{i32 118, i32 23, metadata !285, null}
!290 = metadata !{i32 125, i32 4, metadata !270, null}
!291 = metadata !{i32 125, i32 58, metadata !270, null}
!292 = metadata !{i32 125, i32 76, metadata !270, null}
!293 = metadata !{i32 126, i32 4, metadata !270, null}
!294 = metadata !{i32 127, i32 4, metadata !270, null}
!295 = metadata !{i32 128, i32 4, metadata !270, null}
!296 = metadata !{i32 129, i32 4, metadata !270, null}
!297 = metadata !{i32 130, i32 4, metadata !270, null}
!298 = metadata !{i32 131, i32 4, metadata !270, null}
!299 = metadata !{i32 132, i32 4, metadata !270, null}
!300 = metadata !{i32 133, i32 4, metadata !270, null}
!301 = metadata !{i32 134, i32 4, metadata !270, null}
!302 = metadata !{i32 138, i32 9, metadata !303, null}
!303 = metadata !{i32 786443, metadata !270, i32 138, i32 4, metadata !28, i32 15} ; [ DW_TAG_lexical_block ]
!304 = metadata !{i32 139, i32 7, metadata !305, null}
!305 = metadata !{i32 786443, metadata !303, i32 138, i32 26, metadata !28, i32 16} ; [ DW_TAG_lexical_block ]
!306 = metadata !{i32 140, i32 7, metadata !305, null}
!307 = metadata !{i32 141, i32 7, metadata !305, null}
!308 = metadata !{i32 142, i32 7, metadata !305, null}
!309 = metadata !{i32 143, i32 7, metadata !305, null}
!310 = metadata !{i32 144, i32 7, metadata !305, null}
!311 = metadata !{i32 145, i32 7, metadata !305, null}
!312 = metadata !{i32 146, i32 7, metadata !305, null}
!313 = metadata !{i32 147, i32 4, metadata !305, null}
!314 = metadata !{i32 138, i32 21, metadata !303, null}
!315 = metadata !{i32 148, i32 1, metadata !270, null}
