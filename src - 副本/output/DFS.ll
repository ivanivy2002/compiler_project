; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }

@n = global i32 0
@m = global i32 0
@to = global [5005 x i32] zeroinitializer
@next = global [5005 x i32] zeroinitializer
@head = global [1005 x i32] zeroinitializer
@cnt = global i32 0
@vis = global [1005 x i32] zeroinitializer
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

define i32 @quickread() {
bb7:
  %r100 = alloca i32, align 4
  %r102 = alloca i32, align 4
  %r103 = alloca i32, align 4
  br label %bb1

bb1:                                              ; preds = %bb7
  %r101 = call i32 @getch()
  store i32 %r101, ptr %r100, align 4
  store i32 0, ptr %r102, align 4
  store i32 0, ptr %r103, align 4
  br label %bb_while__5_5_cond

bb_while__5_5_cond:                               ; preds = %bb_if__6_9_end, %bb1
  %r104 = load i32, ptr %r100, align 4
  %r105 = icmp slt i32 %r104, 48
  br i1 %r105, label %bb_while__5_5_whilestms, label %bb_5_25checksecond

bb_5_25checksecond:                               ; preds = %bb_while__5_5_cond
  %r106 = load i32, ptr %r100, align 4
  %r107 = icmp sgt i32 %r106, 57
  br i1 %r107, label %bb_while__5_5_whilestms, label %bb_while__5_5_bre

bb_while__5_5_whilestms:                          ; preds = %bb_5_25checksecond, %bb_while__5_5_cond
  %r108 = load i32, ptr %r100, align 4
  %r109 = icmp eq i32 %r108, 45
  br i1 %r109, label %bb_if__6_9_true, label %bb_if__6_9_false

bb_if__6_9_true:                                  ; preds = %bb_while__5_5_whilestms
  store i32 1, ptr %r103, align 4
  br label %bb_if__6_9_end

bb_if__6_9_false:                                 ; preds = %bb_while__5_5_whilestms
  br label %bb_if__6_9_end

bb_if__6_9_end:                                   ; preds = %bb_if__6_9_false, %bb_if__6_9_true
  %r110 = call i32 @getch()
  store i32 %r110, ptr %r100, align 4
  br label %bb_while__5_5_cond

bb_while__5_5_bre:                                ; preds = %bb_5_25checksecond
  br label %bb_while__11_5_cond

bb_while__11_5_cond:                              ; preds = %bb_while__11_5_whilestms, %bb_while__5_5_bre
  %r111 = load i32, ptr %r100, align 4
  %r112 = icmp sge i32 %r111, 48
  br i1 %r112, label %bb_11_26checksecond, label %bb_while__11_5_bre

bb_11_26checksecond:                              ; preds = %bb_while__11_5_cond
  %r113 = load i32, ptr %r100, align 4
  %r114 = icmp sle i32 %r113, 57
  br i1 %r114, label %bb_while__11_5_whilestms, label %bb_while__11_5_bre

bb_while__11_5_whilestms:                         ; preds = %bb_11_26checksecond
  %r115 = load i32, ptr %r102, align 4
  %r116 = mul i32 %r115, 10
  %r117 = load i32, ptr %r100, align 4
  %r118 = add i32 %r116, %r117
  %r119 = sub i32 %r118, 48
  store i32 %r119, ptr %r102, align 4
  %r120 = call i32 @getch()
  store i32 %r120, ptr %r100, align 4
  br label %bb_while__11_5_cond

bb_while__11_5_bre:                               ; preds = %bb_11_26checksecond, %bb_while__11_5_cond
  %r121 = load i32, ptr %r103, align 4
  %r122 = icmp ne i32 %r121, 0
  br i1 %r122, label %bb_if__15_5_true, label %bb_if__15_5_false

bb_if__15_5_true:                                 ; preds = %bb_while__11_5_bre
  %r123 = load i32, ptr %r102, align 4
  %r124 = sub i32 0, %r123
  ret i32 %r124

bb_if__15_5_false:                                ; preds = %bb_while__11_5_bre
  %r125 = load i32, ptr %r102, align 4
  ret i32 %r125

bb_if__15_5_end:                                  ; No predecessors!
  ret i32 -1
}

define void @addedge(i32 %r126, i32 %r128) {
bb8:
  %r127 = alloca i32, align 4
  %r129 = alloca i32, align 4
  br label %bb2

bb2:                                              ; preds = %bb8
  store i32 %r126, ptr %r127, align 4
  store i32 %r128, ptr %r129, align 4
  %r130 = load i32, ptr @cnt, align 4
  %r131 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r130
  %r132 = load i32, ptr %r129, align 4
  store i32 %r132, ptr %r131, align 4
  %r133 = load i32, ptr @cnt, align 4
  %r134 = getelementptr [5005 x i32], ptr @next, i32 0, i32 %r133
  %r135 = load i32, ptr %r127, align 4
  %r136 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r135
  %r137 = load i32, ptr %r136, align 4
  store i32 %r137, ptr %r134, align 4
  %r138 = load i32, ptr %r127, align 4
  %r139 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r138
  %r140 = load i32, ptr @cnt, align 4
  store i32 %r140, ptr %r139, align 4
  %r141 = load i32, ptr @cnt, align 4
  %r142 = add i32 %r141, 1
  store i32 %r142, ptr @cnt, align 4
  %r143 = load i32, ptr @cnt, align 4
  %r144 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r143
  %r145 = load i32, ptr %r127, align 4
  store i32 %r145, ptr %r144, align 4
  %r146 = load i32, ptr @cnt, align 4
  %r147 = getelementptr [5005 x i32], ptr @next, i32 0, i32 %r146
  %r148 = load i32, ptr %r129, align 4
  %r149 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r148
  %r150 = load i32, ptr %r149, align 4
  store i32 %r150, ptr %r147, align 4
  %r151 = load i32, ptr %r129, align 4
  %r152 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r151
  %r153 = load i32, ptr @cnt, align 4
  store i32 %r153, ptr %r152, align 4
  %r154 = load i32, ptr @cnt, align 4
  %r155 = add i32 %r154, 1
  store i32 %r155, ptr @cnt, align 4
  ret void
}

define void @init() {
bb9:
  %r156 = alloca i32, align 4
  br label %bb3

bb3:                                              ; preds = %bb9
  store i32 0, ptr %r156, align 4
  br label %bb_while__43_5_cond

bb_while__43_5_cond:                              ; preds = %bb_while__43_5_whilestms, %bb3
  %r157 = load i32, ptr %r156, align 4
  %r158 = icmp slt i32 %r157, 1005
  br i1 %r158, label %bb_while__43_5_whilestms, label %bb_while__43_5_bre

bb_while__43_5_whilestms:                         ; preds = %bb_while__43_5_cond
  %r159 = load i32, ptr %r156, align 4
  %r160 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r159
  %r161 = sub i32 0, 1
  store i32 %r161, ptr %r160, align 4
  %r162 = load i32, ptr %r156, align 4
  %r163 = add i32 %r162, 1
  store i32 %r163, ptr %r156, align 4
  br label %bb_while__43_5_cond

bb_while__43_5_bre:                               ; preds = %bb_while__43_5_cond
  ret void
}

define void @clear() {
bb10:
  %r164 = alloca i32, align 4
  br label %bb4

bb4:                                              ; preds = %bb10
  store i32 1, ptr %r164, align 4
  br label %bb_while__51_5_cond

bb_while__51_5_cond:                              ; preds = %bb_while__51_5_whilestms, %bb4
  %r165 = load i32, ptr %r164, align 4
  %r166 = load i32, ptr @n, align 4
  %r167 = icmp sle i32 %r165, %r166
  br i1 %r167, label %bb_while__51_5_whilestms, label %bb_while__51_5_bre

bb_while__51_5_whilestms:                         ; preds = %bb_while__51_5_cond
  %r168 = load i32, ptr %r164, align 4
  %r169 = getelementptr [1005 x i32], ptr @vis, i32 0, i32 %r168
  store i32 0, ptr %r169, align 4
  %r170 = load i32, ptr %r164, align 4
  %r171 = add i32 %r170, 1
  store i32 %r171, ptr %r164, align 4
  br label %bb_while__51_5_cond

bb_while__51_5_bre:                               ; preds = %bb_while__51_5_cond
  ret void
}

define i32 @same(i32 %r172, i32 %r174) {
bb11:
  %r173 = alloca i32, align 4
  %r175 = alloca i32, align 4
  %r181 = alloca i32, align 4
  %r188 = alloca i32, align 4
  br label %bb5

bb5:                                              ; preds = %bb11
  store i32 %r172, ptr %r173, align 4
  store i32 %r174, ptr %r175, align 4
  %r176 = load i32, ptr %r173, align 4
  %r177 = getelementptr [1005 x i32], ptr @vis, i32 0, i32 %r176
  store i32 1, ptr %r177, align 4
  %r178 = load i32, ptr %r173, align 4
  %r179 = load i32, ptr %r175, align 4
  %r180 = icmp eq i32 %r178, %r179
  br i1 %r180, label %bb_if__59_5_true, label %bb_if__59_5_false

bb_if__59_5_true:                                 ; preds = %bb5
  ret i32 1

bb_if__59_5_false:                                ; preds = %bb5
  br label %bb_if__59_5_end

bb_if__59_5_end:                                  ; preds = %bb_if__59_5_false
  %r182 = load i32, ptr %r173, align 4
  %r183 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r182
  %r184 = load i32, ptr %r183, align 4
  store i32 %r184, ptr %r181, align 4
  br label %bb_while__63_5_cond

bb_while__63_5_cond:                              ; preds = %bb_if__65_9_end, %bb_if__59_5_end
  %r185 = load i32, ptr %r181, align 4
  %r186 = sub i32 0, 1
  %r187 = icmp ne i32 %r185, %r186
  br i1 %r187, label %bb_while__63_5_whilestms, label %bb_while__63_5_bre

bb_while__63_5_whilestms:                         ; preds = %bb_while__63_5_cond
  %r189 = load i32, ptr %r181, align 4
  %r190 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r189
  %r191 = load i32, ptr %r190, align 4
  store i32 %r191, ptr %r188, align 4
  %r192 = load i32, ptr %r188, align 4
  %r193 = getelementptr [1005 x i32], ptr @vis, i32 0, i32 %r192
  %r194 = load i32, ptr %r193, align 4
  %r195 = icmp eq i32 %r194, 0
  br i1 %r195, label %bb_65_26checksecond, label %bb_if__65_9_false

bb_65_26checksecond:                              ; preds = %bb_while__63_5_whilestms
  %r196 = load i32, ptr %r188, align 4
  %r197 = load i32, ptr %r175, align 4
  %r198 = call i32 @same(i32 %r196, i32 %r197)
  %r199 = icmp ne i32 %r198, 0
  br i1 %r199, label %bb_if__65_9_true, label %bb_if__65_9_false

bb_if__65_9_true:                                 ; preds = %bb_65_26checksecond
  ret i32 1

bb_if__65_9_false:                                ; preds = %bb_65_26checksecond, %bb_while__63_5_whilestms
  br label %bb_if__65_9_end

bb_if__65_9_end:                                  ; preds = %bb_if__65_9_false
  %r200 = load i32, ptr %r181, align 4
  %r201 = getelementptr [5005 x i32], ptr @next, i32 0, i32 %r200
  %r202 = load i32, ptr %r201, align 4
  store i32 %r202, ptr %r181, align 4
  br label %bb_while__63_5_cond

bb_while__63_5_bre:                               ; preds = %bb_while__63_5_cond
  ret i32 0
}

define i32 @main() {
bb12:
  %r205 = alloca i32, align 4
  %r206 = alloca i32, align 4
  %r207 = alloca i32, align 4
  br label %bb6

bb6:                                              ; preds = %bb12
  %r203 = call i32 @quickread()
  store i32 %r203, ptr @n, align 4
  %r204 = call i32 @quickread()
  store i32 %r204, ptr @m, align 4
  call void @init()
  store i32 0, ptr %r205, align 4
  store i32 0, ptr %r206, align 4
  store i32 0, ptr %r207, align 4
  br label %bb_while__79_5_cond

bb_while__79_5_cond:                              ; preds = %bb_if__84_9_end, %bb6
  %r208 = load i32, ptr @m, align 4
  %r209 = icmp ne i32 %r208, 0
  br i1 %r209, label %bb_while__79_5_whilestms, label %bb_while__79_5_bre

bb_while__79_5_whilestms:                         ; preds = %bb_while__79_5_cond
  %r210 = call i32 @getch()
  store i32 %r210, ptr %r205, align 4
  br label %bb_while__81_9_cond

bb_while__81_9_cond:                              ; preds = %bb_while__81_9_whilestms, %bb_while__79_5_whilestms
  %r211 = load i32, ptr %r205, align 4
  %r212 = icmp ne i32 %r211, 81
  br i1 %r212, label %bb_81_28checksecond, label %bb_while__81_9_bre

bb_81_28checksecond:                              ; preds = %bb_while__81_9_cond
  %r213 = load i32, ptr %r205, align 4
  %r214 = icmp ne i32 %r213, 85
  br i1 %r214, label %bb_while__81_9_whilestms, label %bb_while__81_9_bre

bb_while__81_9_whilestms:                         ; preds = %bb_81_28checksecond
  %r215 = call i32 @getch()
  store i32 %r215, ptr %r205, align 4
  br label %bb_while__81_9_cond

bb_while__81_9_bre:                               ; preds = %bb_81_28checksecond, %bb_while__81_9_cond
  %r216 = load i32, ptr %r205, align 4
  %r217 = icmp eq i32 %r216, 81
  br i1 %r217, label %bb_if__84_9_true, label %bb_if__84_9_false

bb_if__84_9_true:                                 ; preds = %bb_while__81_9_bre
  %r218 = call i32 @quickread()
  store i32 %r218, ptr %r206, align 4
  %r219 = call i32 @quickread()
  store i32 %r219, ptr %r207, align 4
  call void @clear()
  %r220 = load i32, ptr %r206, align 4
  %r221 = load i32, ptr %r207, align 4
  %r222 = call i32 @same(i32 %r220, i32 %r221)
  call void @putint(i32 %r222)
  call void @putch(i32 10)
  br label %bb_if__84_9_end

bb_if__84_9_false:                                ; preds = %bb_while__81_9_bre
  %r223 = call i32 @quickread()
  store i32 %r223, ptr %r206, align 4
  %r224 = call i32 @quickread()
  store i32 %r224, ptr %r207, align 4
  %r225 = load i32, ptr %r206, align 4
  %r226 = load i32, ptr %r207, align 4
  call void @addedge(i32 %r225, i32 %r226)
  br label %bb_if__84_9_end

bb_if__84_9_end:                                  ; preds = %bb_if__84_9_false, %bb_if__84_9_true
  %r227 = load i32, ptr @m, align 4
  %r228 = sub i32 %r227, 1
  store i32 %r228, ptr @m, align 4
  br label %bb_while__79_5_cond

bb_while__79_5_bre:                               ; preds = %bb_while__79_5_cond
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
