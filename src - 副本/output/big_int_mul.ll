; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }

@len = global i32 20
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @before_main, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @after_main, ptr null }]
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_sysy_us = dso_local global [1024 x i32] zeroinitializer, align 16
@_sysy_s = dso_local global [1024 x i32] zeroinitializer, align 16
@_sysy_m = dso_local global [1024 x i32] zeroinitializer, align 16
@_sysy_h = dso_local global [1024 x i32] zeroinitializer, align 16
@_sysy_idx = dso_local global i32 0, align 4
@stderr = external global ptr, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"Timer@%04d-%04d: %dH-%dM-%dS-%dus\0A\00", align 1
@_sysy_l1 = dso_local global [1024 x i32] zeroinitializer, align 16
@_sysy_l2 = dso_local global [1024 x i32] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [25 x i8] c"TOTAL: %dH-%dM-%dS-%dus\0A\00", align 1
@_sysy_start = dso_local global %struct.timeval zeroinitializer, align 8
@_sysy_end = dso_local global %struct.timeval zeroinitializer, align 8

define i32 @main() {
bb2:
  %r100 = alloca i32, align 4
  %r101 = alloca i32, align 4
  %r102 = alloca i32, align 4
  %r103 = alloca i32, align 4
  %r104 = alloca i32, align 4
  %r105 = alloca [20 x i32], align 4
  %r126 = alloca [20 x i32], align 4
  %r147 = alloca i32, align 4
  %r149 = alloca i32, align 4
  %r151 = alloca [25 x i32], align 4
  %r152 = alloca [25 x i32], align 4
  %r153 = alloca [40 x i32], align 4
  %r233 = alloca i32, align 4
  br label %bb1

bb1:                                              ; preds = %bb2
  call void @_sysy_starttime(i32 97)
  %r106 = getelementptr [20 x i32], ptr %r105, i32 0, i32 0
  store i32 1, ptr %r106, align 4
  %r107 = getelementptr [20 x i32], ptr %r105, i32 0, i32 1
  store i32 2, ptr %r107, align 4
  %r108 = getelementptr [20 x i32], ptr %r105, i32 0, i32 2
  store i32 3, ptr %r108, align 4
  %r109 = getelementptr [20 x i32], ptr %r105, i32 0, i32 3
  store i32 4, ptr %r109, align 4
  %r110 = getelementptr [20 x i32], ptr %r105, i32 0, i32 4
  store i32 5, ptr %r110, align 4
  %r111 = getelementptr [20 x i32], ptr %r105, i32 0, i32 5
  store i32 6, ptr %r111, align 4
  %r112 = getelementptr [20 x i32], ptr %r105, i32 0, i32 6
  store i32 7, ptr %r112, align 4
  %r113 = getelementptr [20 x i32], ptr %r105, i32 0, i32 7
  store i32 8, ptr %r113, align 4
  %r114 = getelementptr [20 x i32], ptr %r105, i32 0, i32 8
  store i32 9, ptr %r114, align 4
  %r115 = getelementptr [20 x i32], ptr %r105, i32 0, i32 9
  store i32 0, ptr %r115, align 4
  %r116 = getelementptr [20 x i32], ptr %r105, i32 0, i32 10
  store i32 1, ptr %r116, align 4
  %r117 = getelementptr [20 x i32], ptr %r105, i32 0, i32 11
  store i32 2, ptr %r117, align 4
  %r118 = getelementptr [20 x i32], ptr %r105, i32 0, i32 12
  store i32 3, ptr %r118, align 4
  %r119 = getelementptr [20 x i32], ptr %r105, i32 0, i32 13
  store i32 4, ptr %r119, align 4
  %r120 = getelementptr [20 x i32], ptr %r105, i32 0, i32 14
  store i32 5, ptr %r120, align 4
  %r121 = getelementptr [20 x i32], ptr %r105, i32 0, i32 15
  store i32 6, ptr %r121, align 4
  %r122 = getelementptr [20 x i32], ptr %r105, i32 0, i32 16
  store i32 7, ptr %r122, align 4
  %r123 = getelementptr [20 x i32], ptr %r105, i32 0, i32 17
  store i32 8, ptr %r123, align 4
  %r124 = getelementptr [20 x i32], ptr %r105, i32 0, i32 18
  store i32 9, ptr %r124, align 4
  %r125 = getelementptr [20 x i32], ptr %r105, i32 0, i32 19
  store i32 0, ptr %r125, align 4
  %r127 = getelementptr [20 x i32], ptr %r126, i32 0, i32 0
  store i32 2, ptr %r127, align 4
  %r128 = getelementptr [20 x i32], ptr %r126, i32 0, i32 1
  store i32 3, ptr %r128, align 4
  %r129 = getelementptr [20 x i32], ptr %r126, i32 0, i32 2
  store i32 4, ptr %r129, align 4
  %r130 = getelementptr [20 x i32], ptr %r126, i32 0, i32 3
  store i32 2, ptr %r130, align 4
  %r131 = getelementptr [20 x i32], ptr %r126, i32 0, i32 4
  store i32 5, ptr %r131, align 4
  %r132 = getelementptr [20 x i32], ptr %r126, i32 0, i32 5
  store i32 7, ptr %r132, align 4
  %r133 = getelementptr [20 x i32], ptr %r126, i32 0, i32 6
  store i32 9, ptr %r133, align 4
  %r134 = getelementptr [20 x i32], ptr %r126, i32 0, i32 7
  store i32 9, ptr %r134, align 4
  %r135 = getelementptr [20 x i32], ptr %r126, i32 0, i32 8
  store i32 0, ptr %r135, align 4
  %r136 = getelementptr [20 x i32], ptr %r126, i32 0, i32 9
  store i32 1, ptr %r136, align 4
  %r137 = getelementptr [20 x i32], ptr %r126, i32 0, i32 10
  store i32 9, ptr %r137, align 4
  %r138 = getelementptr [20 x i32], ptr %r126, i32 0, i32 11
  store i32 8, ptr %r138, align 4
  %r139 = getelementptr [20 x i32], ptr %r126, i32 0, i32 12
  store i32 7, ptr %r139, align 4
  %r140 = getelementptr [20 x i32], ptr %r126, i32 0, i32 13
  store i32 6, ptr %r140, align 4
  %r141 = getelementptr [20 x i32], ptr %r126, i32 0, i32 14
  store i32 4, ptr %r141, align 4
  %r142 = getelementptr [20 x i32], ptr %r126, i32 0, i32 15
  store i32 3, ptr %r142, align 4
  %r143 = getelementptr [20 x i32], ptr %r126, i32 0, i32 16
  store i32 2, ptr %r143, align 4
  %r144 = getelementptr [20 x i32], ptr %r126, i32 0, i32 17
  store i32 1, ptr %r144, align 4
  %r145 = getelementptr [20 x i32], ptr %r126, i32 0, i32 18
  store i32 2, ptr %r145, align 4
  %r146 = getelementptr [20 x i32], ptr %r126, i32 0, i32 19
  store i32 2, ptr %r146, align 4
  %r148 = load i32, ptr @len, align 4
  store i32 %r148, ptr %r147, align 4
  %r150 = load i32, ptr @len, align 4
  store i32 %r150, ptr %r149, align 4
  %r154 = getelementptr [40 x i32], ptr %r153, i32 0, i32 0
  store i32 0, ptr %r154, align 4
  %r155 = getelementptr [40 x i32], ptr %r153, i32 0, i32 1
  store i32 0, ptr %r155, align 4
  %r156 = getelementptr [40 x i32], ptr %r153, i32 0, i32 3
  store i32 0, ptr %r156, align 4
  %r157 = getelementptr [40 x i32], ptr %r153, i32 0, i32 5
  store i32 0, ptr %r157, align 4
  %r158 = getelementptr [40 x i32], ptr %r153, i32 0, i32 7
  store i32 0, ptr %r158, align 4
  %r159 = getelementptr [40 x i32], ptr %r153, i32 0, i32 9
  store i32 0, ptr %r159, align 4
  %r160 = getelementptr [40 x i32], ptr %r153, i32 0, i32 11
  store i32 0, ptr %r160, align 4
  %r161 = getelementptr [40 x i32], ptr %r153, i32 0, i32 13
  store i32 0, ptr %r161, align 4
  %r162 = getelementptr [40 x i32], ptr %r153, i32 0, i32 15
  store i32 0, ptr %r162, align 4
  %r163 = getelementptr [40 x i32], ptr %r153, i32 0, i32 17
  store i32 0, ptr %r163, align 4
  %r164 = getelementptr [40 x i32], ptr %r153, i32 0, i32 19
  store i32 0, ptr %r164, align 4
  %r165 = getelementptr [40 x i32], ptr %r153, i32 0, i32 21
  store i32 0, ptr %r165, align 4
  %r166 = getelementptr [40 x i32], ptr %r153, i32 0, i32 23
  store i32 0, ptr %r166, align 4
  %r167 = getelementptr [40 x i32], ptr %r153, i32 0, i32 25
  store i32 0, ptr %r167, align 4
  %r168 = getelementptr [40 x i32], ptr %r153, i32 0, i32 27
  store i32 0, ptr %r168, align 4
  %r169 = getelementptr [40 x i32], ptr %r153, i32 0, i32 29
  store i32 0, ptr %r169, align 4
  %r170 = getelementptr [40 x i32], ptr %r153, i32 0, i32 31
  store i32 0, ptr %r170, align 4
  %r171 = getelementptr [40 x i32], ptr %r153, i32 0, i32 33
  store i32 0, ptr %r171, align 4
  %r172 = getelementptr [40 x i32], ptr %r153, i32 0, i32 35
  store i32 0, ptr %r172, align 4
  %r173 = getelementptr [40 x i32], ptr %r153, i32 0, i32 37
  store i32 0, ptr %r173, align 4
  %r174 = getelementptr [40 x i32], ptr %r153, i32 0, i32 39
  store i32 0, ptr %r174, align 4
  store i32 0, ptr %r100, align 4
  br label %bb_while__20_5_cond

bb_while__20_5_cond:                              ; preds = %bb_while__20_5_whilestms, %bb1
  %r175 = load i32, ptr %r100, align 4
  %r176 = load i32, ptr %r147, align 4
  %r177 = icmp slt i32 %r175, %r176
  br i1 %r177, label %bb_while__20_5_whilestms, label %bb_while__20_5_bre

bb_while__20_5_whilestms:                         ; preds = %bb_while__20_5_cond
  %r178 = load i32, ptr %r100, align 4
  %r179 = getelementptr [25 x i32], ptr %r151, i32 0, i32 %r178
  %r180 = load i32, ptr %r100, align 4
  %r181 = getelementptr [20 x i32], ptr %r105, i32 0, i32 %r180
  %r182 = load i32, ptr %r181, align 4
  store i32 %r182, ptr %r179, align 4
  %r183 = load i32, ptr %r100, align 4
  %r184 = add i32 %r183, 1
  store i32 %r184, ptr %r100, align 4
  br label %bb_while__20_5_cond

bb_while__20_5_bre:                               ; preds = %bb_while__20_5_cond
  store i32 0, ptr %r100, align 4
  br label %bb_while__26_5_cond

bb_while__26_5_cond:                              ; preds = %bb_while__26_5_whilestms, %bb_while__20_5_bre
  %r185 = load i32, ptr %r100, align 4
  %r186 = load i32, ptr %r149, align 4
  %r187 = icmp slt i32 %r185, %r186
  br i1 %r187, label %bb_while__26_5_whilestms, label %bb_while__26_5_bre

bb_while__26_5_whilestms:                         ; preds = %bb_while__26_5_cond
  %r188 = load i32, ptr %r100, align 4
  %r189 = getelementptr [25 x i32], ptr %r152, i32 0, i32 %r188
  %r190 = load i32, ptr %r100, align 4
  %r191 = getelementptr [20 x i32], ptr %r126, i32 0, i32 %r190
  %r192 = load i32, ptr %r191, align 4
  store i32 %r192, ptr %r189, align 4
  %r193 = load i32, ptr %r100, align 4
  %r194 = add i32 %r193, 1
  store i32 %r194, ptr %r100, align 4
  br label %bb_while__26_5_cond

bb_while__26_5_bre:                               ; preds = %bb_while__26_5_cond
  %r195 = load i32, ptr %r147, align 4
  %r196 = load i32, ptr %r149, align 4
  %r197 = add i32 %r195, %r196
  %r198 = sub i32 %r197, 1
  store i32 %r198, ptr %r103, align 4
  store i32 0, ptr %r100, align 4
  br label %bb_while__34_5_cond

bb_while__34_5_cond:                              ; preds = %bb_while__34_5_whilestms, %bb_while__26_5_bre
  %r199 = load i32, ptr %r100, align 4
  %r200 = load i32, ptr %r103, align 4
  %r201 = icmp sle i32 %r199, %r200
  br i1 %r201, label %bb_while__34_5_whilestms, label %bb_while__34_5_bre

bb_while__34_5_whilestms:                         ; preds = %bb_while__34_5_cond
  %r202 = load i32, ptr %r100, align 4
  %r203 = getelementptr [40 x i32], ptr %r153, i32 0, i32 %r202
  store i32 0, ptr %r203, align 4
  %r204 = load i32, ptr %r100, align 4
  %r205 = add i32 %r204, 1
  store i32 %r205, ptr %r100, align 4
  br label %bb_while__34_5_cond

bb_while__34_5_bre:                               ; preds = %bb_while__34_5_cond
  store i32 0, ptr %r104, align 4
  %r206 = load i32, ptr %r149, align 4
  %r207 = sub i32 %r206, 1
  store i32 %r207, ptr %r100, align 4
  br label %bb_while__42_5_cond

bb_while__42_5_cond:                              ; preds = %bb_while__45_9_bre, %bb_while__34_5_bre
  %r208 = load i32, ptr %r100, align 4
  %r209 = sub i32 0, 1
  %r210 = icmp sgt i32 %r208, %r209
  br i1 %r210, label %bb_while__42_5_whilestms, label %bb_while__42_5_bre

bb_while__42_5_whilestms:                         ; preds = %bb_while__42_5_cond
  %r211 = load i32, ptr %r100, align 4
  %r212 = getelementptr [25 x i32], ptr %r152, i32 0, i32 %r211
  %r213 = load i32, ptr %r212, align 4
  store i32 %r213, ptr %r102, align 4
  %r214 = load i32, ptr %r147, align 4
  %r215 = sub i32 %r214, 1
  store i32 %r215, ptr %r101, align 4
  br label %bb_while__45_9_cond

bb_while__45_9_cond:                              ; preds = %bb_if__47_13_end, %bb_while__42_5_whilestms
  %r216 = load i32, ptr %r101, align 4
  %r217 = sub i32 0, 1
  %r218 = icmp sgt i32 %r216, %r217
  br i1 %r218, label %bb_while__45_9_whilestms, label %bb_while__45_9_bre

bb_while__45_9_whilestms:                         ; preds = %bb_while__45_9_cond
  %r219 = load i32, ptr %r103, align 4
  %r220 = getelementptr [40 x i32], ptr %r153, i32 0, i32 %r219
  %r221 = load i32, ptr %r220, align 4
  %r222 = load i32, ptr %r102, align 4
  %r223 = load i32, ptr %r101, align 4
  %r224 = getelementptr [25 x i32], ptr %r151, i32 0, i32 %r223
  %r225 = load i32, ptr %r224, align 4
  %r226 = mul i32 %r222, %r225
  %r227 = add i32 %r221, %r226
  store i32 %r227, ptr %r104, align 4
  %r228 = load i32, ptr %r104, align 4
  %r229 = icmp sge i32 %r228, 10
  br i1 %r229, label %bb_if__47_13_true, label %bb_if__47_13_false

bb_if__47_13_true:                                ; preds = %bb_while__45_9_whilestms
  %r230 = load i32, ptr %r103, align 4
  %r231 = getelementptr [40 x i32], ptr %r153, i32 0, i32 %r230
  %r232 = load i32, ptr %r104, align 4
  store i32 %r232, ptr %r231, align 4
  %r234 = load i32, ptr %r103, align 4
  %r235 = sub i32 %r234, 1
  store i32 %r235, ptr %r233, align 4
  %r236 = load i32, ptr %r233, align 4
  %r237 = getelementptr [40 x i32], ptr %r153, i32 0, i32 %r236
  %r238 = load i32, ptr %r233, align 4
  %r239 = getelementptr [40 x i32], ptr %r153, i32 0, i32 %r238
  %r240 = load i32, ptr %r239, align 4
  %r241 = load i32, ptr %r104, align 4
  %r242 = sdiv i32 %r241, 10
  %r243 = add i32 %r240, %r242
  store i32 %r243, ptr %r237, align 4
  br label %bb_if__47_13_end

bb_if__47_13_false:                               ; preds = %bb_while__45_9_whilestms
  %r244 = load i32, ptr %r103, align 4
  %r245 = getelementptr [40 x i32], ptr %r153, i32 0, i32 %r244
  %r246 = load i32, ptr %r104, align 4
  store i32 %r246, ptr %r245, align 4
  br label %bb_if__47_13_end

bb_if__47_13_end:                                 ; preds = %bb_if__47_13_false, %bb_if__47_13_true
  %r247 = load i32, ptr %r101, align 4
  %r248 = sub i32 %r247, 1
  store i32 %r248, ptr %r101, align 4
  %r249 = load i32, ptr %r103, align 4
  %r250 = sub i32 %r249, 1
  store i32 %r250, ptr %r103, align 4
  br label %bb_while__45_9_cond

bb_while__45_9_bre:                               ; preds = %bb_while__45_9_cond
  %r251 = load i32, ptr %r103, align 4
  %r252 = load i32, ptr %r147, align 4
  %r253 = add i32 %r251, %r252
  %r254 = sub i32 %r253, 1
  store i32 %r254, ptr %r103, align 4
  %r255 = load i32, ptr %r100, align 4
  %r256 = sub i32 %r255, 1
  store i32 %r256, ptr %r100, align 4
  br label %bb_while__42_5_cond

bb_while__42_5_bre:                               ; preds = %bb_while__42_5_cond
  %r257 = getelementptr [40 x i32], ptr %r153, i32 0, i32 0
  %r258 = load i32, ptr %r257, align 4
  %r259 = icmp ne i32 %r258, 0
  br i1 %r259, label %bb_if__62_5_true, label %bb_if__62_5_false

bb_if__62_5_true:                                 ; preds = %bb_while__42_5_bre
  %r260 = getelementptr [40 x i32], ptr %r153, i32 0, i32 0
  %r261 = load i32, ptr %r260, align 4
  call void @putint(i32 %r261)
  br label %bb_if__62_5_end

bb_if__62_5_false:                                ; preds = %bb_while__42_5_bre
  br label %bb_if__62_5_end

bb_if__62_5_end:                                  ; preds = %bb_if__62_5_false, %bb_if__62_5_true
  store i32 1, ptr %r100, align 4
  br label %bb_while__67_5_cond

bb_while__67_5_cond:                              ; preds = %bb_while__67_5_whilestms, %bb_if__62_5_end
  %r262 = load i32, ptr %r100, align 4
  %r263 = load i32, ptr %r147, align 4
  %r264 = load i32, ptr %r149, align 4
  %r265 = add i32 %r263, %r264
  %r266 = sub i32 %r265, 1
  %r267 = icmp sle i32 %r262, %r266
  br i1 %r267, label %bb_while__67_5_whilestms, label %bb_while__67_5_bre

bb_while__67_5_whilestms:                         ; preds = %bb_while__67_5_cond
  %r268 = load i32, ptr %r100, align 4
  %r269 = getelementptr [40 x i32], ptr %r153, i32 0, i32 %r268
  %r270 = load i32, ptr %r269, align 4
  call void @putint(i32 %r270)
  %r271 = load i32, ptr %r100, align 4
  %r272 = add i32 %r271, 1
  store i32 %r272, ptr %r100, align 4
  br label %bb_while__67_5_cond

bb_while__67_5_bre:                               ; preds = %bb_while__67_5_cond
  call void @_sysy_stoptime(i32 117)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @before_main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %2

2:                                                ; preds = %18, %0
  %3 = load i32, ptr %1, align 4
  %4 = icmp slt i32 %3, 1024
  br i1 %4, label %5, label %21

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [1024 x i32], ptr @_sysy_us, i64 0, i64 %7
  store i32 0, ptr %8, align 4
  %9 = load i32, ptr %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [1024 x i32], ptr @_sysy_s, i64 0, i64 %10
  store i32 0, ptr %11, align 4
  %12 = load i32, ptr %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [1024 x i32], ptr @_sysy_m, i64 0, i64 %13
  store i32 0, ptr %14, align 4
  %15 = load i32, ptr %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [1024 x i32], ptr @_sysy_h, i64 0, i64 %16
  store i32 0, ptr %17, align 4
  br label %18

18:                                               ; preds = %5
  %19 = load i32, ptr %1, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %1, align 4
  br label %2, !llvm.loop !6

21:                                               ; preds = %2
  store i32 1, ptr @_sysy_idx, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @after_main() #0 {
  %1 = alloca i32, align 4
  store i32 1, ptr %1, align 4
  br label %2

2:                                                ; preds = %63, %0
  %3 = load i32, ptr %1, align 4
  %4 = load i32, ptr @_sysy_idx, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %66

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8
  %8 = load i32, ptr %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [1024 x i32], ptr @_sysy_l1, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = load i32, ptr %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [1024 x i32], ptr @_sysy_l2, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [1024 x i32], ptr @_sysy_h, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [1024 x i32], ptr @_sysy_m, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [1024 x i32], ptr @_sysy_s, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [1024 x i32], ptr @_sysy_us, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.5, i32 noundef %11, i32 noundef %15, i32 noundef %19, i32 noundef %23, i32 noundef %27, i32 noundef %31)
  %33 = load i32, ptr %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [1024 x i32], ptr @_sysy_us, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr @_sysy_us, align 16
  %38 = add nsw i32 %37, %36
  store i32 %38, ptr @_sysy_us, align 16
  %39 = load i32, ptr %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [1024 x i32], ptr @_sysy_s, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = load i32, ptr @_sysy_s, align 16
  %44 = add nsw i32 %43, %42
  store i32 %44, ptr @_sysy_s, align 16
  %45 = load i32, ptr @_sysy_us, align 16
  %46 = srem i32 %45, 1000000
  store i32 %46, ptr @_sysy_us, align 16
  %47 = load i32, ptr %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [1024 x i32], ptr @_sysy_m, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4
  %51 = load i32, ptr @_sysy_m, align 16
  %52 = add nsw i32 %51, %50
  store i32 %52, ptr @_sysy_m, align 16
  %53 = load i32, ptr @_sysy_s, align 16
  %54 = srem i32 %53, 60
  store i32 %54, ptr @_sysy_s, align 16
  %55 = load i32, ptr %1, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [1024 x i32], ptr @_sysy_h, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4
  %59 = load i32, ptr @_sysy_h, align 16
  %60 = add nsw i32 %59, %58
  store i32 %60, ptr @_sysy_h, align 16
  %61 = load i32, ptr @_sysy_m, align 16
  %62 = srem i32 %61, 60
  store i32 %62, ptr @_sysy_m, align 16
  br label %63

63:                                               ; preds = %6
  %64 = load i32, ptr %1, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %1, align 4
  br label %2, !llvm.loop !8

66:                                               ; preds = %2
  %67 = load ptr, ptr @stderr, align 8
  %68 = load i32, ptr @_sysy_h, align 16
  %69 = load i32, ptr @_sysy_m, align 16
  %70 = load i32, ptr @_sysy_s, align 16
  %71 = load i32, ptr @_sysy_us, align 16
  %72 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef @.str.6, i32 noundef %68, i32 noundef %69, i32 noundef %70, i32 noundef %71)
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getint() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str, ptr noundef %1)
  %3 = load i32, ptr %1, align 4
  ret i32 %3
}

declare i32 @__isoc99_scanf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getch() #0 {
  %1 = alloca i8, align 1
  %2 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.1, ptr noundef %1)
  %3 = load i8, ptr %1, align 1
  %4 = sext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getarray(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %5 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str, ptr noundef %3)
  store i32 0, ptr %4, align 4
  br label %6

6:                                                ; preds = %16, %1
  %7 = load i32, ptr %4, align 4
  %8 = load i32, ptr %3, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8
  %12 = load i32, ptr %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %11, i64 %13
  %15 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str, ptr noundef %14)
  br label %16

16:                                               ; preds = %10
  %17 = load i32, ptr %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %4, align 4
  br label %6, !llvm.loop !9

19:                                               ; preds = %6
  %20 = load i32, ptr %3, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @putint(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %3)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @putch(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @putarray(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  %6 = load i32, ptr %3, align 4
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %6)
  store i32 0, ptr %5, align 4
  br label %8

8:                                                ; preds = %19, %2
  %9 = load i32, ptr %5, align 4
  %10 = load i32, ptr %3, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 8
  %14 = load i32, ptr %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %13, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %17)
  br label %19

19:                                               ; preds = %12
  %20 = load i32, ptr %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %5, align 4
  br label %8, !llvm.loop !10

22:                                               ; preds = %8
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_sysy_starttime(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = load i32, ptr @_sysy_idx, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [1024 x i32], ptr @_sysy_l1, i64 0, i64 %5
  store i32 %3, ptr %6, align 4
  %7 = call i32 @gettimeofday(ptr noundef @_sysy_start, ptr noundef null) #3
  ret void
}

; Function Attrs: nounwind
declare i32 @gettimeofday(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_sysy_stoptime(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = call i32 @gettimeofday(ptr noundef @_sysy_end, ptr noundef null) #3
  %4 = load i32, ptr %2, align 4
  %5 = load i32, ptr @_sysy_idx, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [1024 x i32], ptr @_sysy_l2, i64 0, i64 %6
  store i32 %4, ptr %7, align 4
  %8 = load i64, ptr @_sysy_end, align 8
  %9 = load i64, ptr @_sysy_start, align 8
  %10 = sub nsw i64 %8, %9
  %11 = mul nsw i64 1000000, %10
  %12 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @_sysy_end, i32 0, i32 1), align 8
  %13 = add nsw i64 %11, %12
  %14 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @_sysy_start, i32 0, i32 1), align 8
  %15 = sub nsw i64 %13, %14
  %16 = load i32, ptr @_sysy_idx, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [1024 x i32], ptr @_sysy_us, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %15
  %22 = trunc i64 %21 to i32
  store i32 %22, ptr %18, align 4
  %23 = load i32, ptr @_sysy_idx, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [1024 x i32], ptr @_sysy_us, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = sdiv i32 %26, 1000000
  %28 = load i32, ptr @_sysy_idx, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [1024 x i32], ptr @_sysy_s, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = add nsw i32 %31, %27
  store i32 %32, ptr %30, align 4
  %33 = load i32, ptr @_sysy_idx, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [1024 x i32], ptr @_sysy_us, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = srem i32 %36, 1000000
  store i32 %37, ptr %35, align 4
  %38 = load i32, ptr @_sysy_idx, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [1024 x i32], ptr @_sysy_s, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4
  %42 = sdiv i32 %41, 60
  %43 = load i32, ptr @_sysy_idx, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [1024 x i32], ptr @_sysy_m, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4
  %47 = add nsw i32 %46, %42
  store i32 %47, ptr %45, align 4
  %48 = load i32, ptr @_sysy_idx, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [1024 x i32], ptr @_sysy_s, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4
  %52 = srem i32 %51, 60
  store i32 %52, ptr %50, align 4
  %53 = load i32, ptr @_sysy_idx, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [1024 x i32], ptr @_sysy_m, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4
  %57 = sdiv i32 %56, 60
  %58 = load i32, ptr @_sysy_idx, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [1024 x i32], ptr @_sysy_h, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4
  %62 = add nsw i32 %61, %57
  store i32 %62, ptr %60, align 4
  %63 = load i32, ptr @_sysy_idx, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [1024 x i32], ptr @_sysy_m, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4
  %67 = srem i32 %66, 60
  store i32 %67, ptr %65, align 4
  %68 = load i32, ptr @_sysy_idx, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr @_sysy_idx, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 1}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
