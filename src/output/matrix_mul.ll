; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }

@M = global i32 0
@L = global i32 0
@N = global i32 0
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

define i32 @mul(ptr %r100, ptr %r101, ptr %r102, ptr %r103, ptr %r104, ptr %r105, ptr %r106, ptr %r107, ptr %r108) {
bb1:
  %r337 = add i32 0, 0
  %r338 = add i32 0, 0
  %r110 = getelementptr i32, ptr %r100, i32 0
  %r339 = load i32, ptr %r110, align 4
  %r112 = getelementptr i32, ptr %r103, i32 0
  %r340 = load i32, ptr %r112, align 4
  %r341 = mul i32 %r339, %r340
  %r115 = getelementptr i32, ptr %r100, i32 1
  %r342 = load i32, ptr %r115, align 4
  %r117 = getelementptr i32, ptr %r104, i32 0
  %r343 = load i32, ptr %r117, align 4
  %r344 = mul i32 %r342, %r343
  %r345 = add i32 %r341, %r344
  %r121 = getelementptr i32, ptr %r100, i32 2
  %r346 = load i32, ptr %r121, align 4
  %r123 = getelementptr i32, ptr %r105, i32 0
  %r347 = load i32, ptr %r123, align 4
  %r348 = mul i32 %r346, %r347
  %r349 = add i32 %r345, %r348
  %r127 = getelementptr i32, ptr %r106, i32 0
  store i32 %r349, ptr %r127, align 4
  %r128 = getelementptr i32, ptr %r100, i32 0
  %r350 = load i32, ptr %r128, align 4
  %r130 = getelementptr i32, ptr %r103, i32 1
  %r351 = load i32, ptr %r130, align 4
  %r352 = mul i32 %r350, %r351
  %r133 = getelementptr i32, ptr %r100, i32 1
  %r353 = load i32, ptr %r133, align 4
  %r135 = getelementptr i32, ptr %r104, i32 1
  %r354 = load i32, ptr %r135, align 4
  %r355 = mul i32 %r353, %r354
  %r356 = add i32 %r352, %r355
  %r139 = getelementptr i32, ptr %r100, i32 2
  %r357 = load i32, ptr %r139, align 4
  %r141 = getelementptr i32, ptr %r105, i32 1
  %r358 = load i32, ptr %r141, align 4
  %r359 = mul i32 %r357, %r358
  %r360 = add i32 %r356, %r359
  %r145 = getelementptr i32, ptr %r106, i32 1
  store i32 %r360, ptr %r145, align 4
  %r146 = getelementptr i32, ptr %r100, i32 0
  %r361 = load i32, ptr %r146, align 4
  %r148 = getelementptr i32, ptr %r103, i32 2
  %r362 = load i32, ptr %r148, align 4
  %r363 = mul i32 %r361, %r362
  %r151 = getelementptr i32, ptr %r100, i32 1
  %r364 = load i32, ptr %r151, align 4
  %r153 = getelementptr i32, ptr %r104, i32 2
  %r365 = load i32, ptr %r153, align 4
  %r366 = mul i32 %r364, %r365
  %r367 = add i32 %r363, %r366
  %r157 = getelementptr i32, ptr %r100, i32 2
  %r368 = load i32, ptr %r157, align 4
  %r159 = getelementptr i32, ptr %r105, i32 2
  %r369 = load i32, ptr %r159, align 4
  %r370 = mul i32 %r368, %r369
  %r371 = add i32 %r367, %r370
  %r163 = getelementptr i32, ptr %r106, i32 2
  store i32 %r371, ptr %r163, align 4
  %r164 = getelementptr i32, ptr %r101, i32 0
  %r372 = load i32, ptr %r164, align 4
  %r166 = getelementptr i32, ptr %r103, i32 0
  %r373 = load i32, ptr %r166, align 4
  %r374 = mul i32 %r372, %r373
  %r169 = getelementptr i32, ptr %r101, i32 1
  %r375 = load i32, ptr %r169, align 4
  %r171 = getelementptr i32, ptr %r104, i32 0
  %r376 = load i32, ptr %r171, align 4
  %r377 = mul i32 %r375, %r376
  %r378 = add i32 %r374, %r377
  %r175 = getelementptr i32, ptr %r101, i32 2
  %r379 = load i32, ptr %r175, align 4
  %r177 = getelementptr i32, ptr %r105, i32 0
  %r380 = load i32, ptr %r177, align 4
  %r381 = mul i32 %r379, %r380
  %r382 = add i32 %r378, %r381
  %r181 = getelementptr i32, ptr %r107, i32 0
  store i32 %r382, ptr %r181, align 4
  %r182 = getelementptr i32, ptr %r101, i32 0
  %r383 = load i32, ptr %r182, align 4
  %r184 = getelementptr i32, ptr %r103, i32 1
  %r384 = load i32, ptr %r184, align 4
  %r385 = mul i32 %r383, %r384
  %r187 = getelementptr i32, ptr %r101, i32 1
  %r386 = load i32, ptr %r187, align 4
  %r189 = getelementptr i32, ptr %r104, i32 1
  %r387 = load i32, ptr %r189, align 4
  %r388 = mul i32 %r386, %r387
  %r389 = add i32 %r385, %r388
  %r193 = getelementptr i32, ptr %r101, i32 2
  %r390 = load i32, ptr %r193, align 4
  %r195 = getelementptr i32, ptr %r105, i32 1
  %r391 = load i32, ptr %r195, align 4
  %r392 = mul i32 %r390, %r391
  %r393 = add i32 %r389, %r392
  %r199 = getelementptr i32, ptr %r107, i32 1
  store i32 %r393, ptr %r199, align 4
  %r200 = getelementptr i32, ptr %r101, i32 0
  %r394 = load i32, ptr %r200, align 4
  %r202 = getelementptr i32, ptr %r103, i32 2
  %r395 = load i32, ptr %r202, align 4
  %r396 = mul i32 %r394, %r395
  %r205 = getelementptr i32, ptr %r101, i32 1
  %r397 = load i32, ptr %r205, align 4
  %r207 = getelementptr i32, ptr %r104, i32 2
  %r398 = load i32, ptr %r207, align 4
  %r399 = mul i32 %r397, %r398
  %r400 = add i32 %r396, %r399
  %r211 = getelementptr i32, ptr %r101, i32 2
  %r401 = load i32, ptr %r211, align 4
  %r213 = getelementptr i32, ptr %r105, i32 2
  %r402 = load i32, ptr %r213, align 4
  %r403 = mul i32 %r401, %r402
  %r404 = add i32 %r400, %r403
  %r217 = getelementptr i32, ptr %r107, i32 2
  store i32 %r404, ptr %r217, align 4
  %r218 = getelementptr i32, ptr %r102, i32 0
  %r405 = load i32, ptr %r218, align 4
  %r220 = getelementptr i32, ptr %r103, i32 0
  %r406 = load i32, ptr %r220, align 4
  %r407 = mul i32 %r405, %r406
  %r223 = getelementptr i32, ptr %r102, i32 1
  %r408 = load i32, ptr %r223, align 4
  %r225 = getelementptr i32, ptr %r104, i32 0
  %r409 = load i32, ptr %r225, align 4
  %r410 = mul i32 %r408, %r409
  %r411 = add i32 %r407, %r410
  %r229 = getelementptr i32, ptr %r102, i32 2
  %r412 = load i32, ptr %r229, align 4
  %r231 = getelementptr i32, ptr %r105, i32 0
  %r413 = load i32, ptr %r231, align 4
  %r414 = mul i32 %r412, %r413
  %r415 = add i32 %r411, %r414
  %r235 = getelementptr i32, ptr %r108, i32 0
  store i32 %r415, ptr %r235, align 4
  %r236 = getelementptr i32, ptr %r102, i32 0
  %r416 = load i32, ptr %r236, align 4
  %r238 = getelementptr i32, ptr %r103, i32 1
  %r417 = load i32, ptr %r238, align 4
  %r418 = mul i32 %r416, %r417
  %r241 = getelementptr i32, ptr %r102, i32 1
  %r419 = load i32, ptr %r241, align 4
  %r243 = getelementptr i32, ptr %r104, i32 1
  %r420 = load i32, ptr %r243, align 4
  %r421 = mul i32 %r419, %r420
  %r422 = add i32 %r418, %r421
  %r247 = getelementptr i32, ptr %r102, i32 2
  %r423 = load i32, ptr %r247, align 4
  %r249 = getelementptr i32, ptr %r105, i32 1
  %r424 = load i32, ptr %r249, align 4
  %r425 = mul i32 %r423, %r424
  %r426 = add i32 %r422, %r425
  %r253 = getelementptr i32, ptr %r108, i32 1
  store i32 %r426, ptr %r253, align 4
  %r254 = getelementptr i32, ptr %r102, i32 0
  %r427 = load i32, ptr %r254, align 4
  %r256 = getelementptr i32, ptr %r103, i32 2
  %r428 = load i32, ptr %r256, align 4
  %r429 = mul i32 %r427, %r428
  %r259 = getelementptr i32, ptr %r102, i32 1
  %r430 = load i32, ptr %r259, align 4
  %r261 = getelementptr i32, ptr %r104, i32 2
  %r431 = load i32, ptr %r261, align 4
  %r432 = mul i32 %r430, %r431
  %r433 = add i32 %r429, %r432
  %r265 = getelementptr i32, ptr %r102, i32 2
  %r434 = load i32, ptr %r265, align 4
  %r267 = getelementptr i32, ptr %r105, i32 2
  %r435 = load i32, ptr %r267, align 4
  %r436 = mul i32 %r434, %r435
  %r437 = add i32 %r433, %r436
  %r271 = getelementptr i32, ptr %r108, i32 2
  store i32 %r437, ptr %r271, align 4
  ret i32 0
}

define i32 @main() {
bb2:
  %r438 = add i32 0, 0
  call void @_sysy_starttime(i32 97)
  store i32 3, ptr @N, align 4
  store i32 3, ptr @M, align 4
  store i32 3, ptr @L, align 4
  %r272 = alloca [3 x i32], align 4
  %r273 = alloca [3 x i32], align 4
  %r274 = alloca [3 x i32], align 4
  %r275 = alloca [3 x i32], align 4
  %r276 = alloca [3 x i32], align 4
  %r277 = alloca [3 x i32], align 4
  %r278 = alloca [6 x i32], align 4
  %r279 = alloca [3 x i32], align 4
  %r280 = alloca [3 x i32], align 4
  %r439 = add i32 0, 0
  %r440 = add i32 0, 0
  br label %bb3

bb3:                                              ; preds = %bb4, %bb2
  %r441 = phi i32 [ %r440, %bb2 ], [ %r445, %bb4 ]
  %r442 = load i32, ptr @M, align 4
  %r443 = icmp slt i32 %r441, %r442
  br i1 %r443, label %bb4, label %bb5

bb4:                                              ; preds = %bb3
  %r287 = getelementptr [3 x i32], ptr %r272, i32 0, i32 %r441
  store i32 %r441, ptr %r287, align 4
  %r290 = getelementptr [3 x i32], ptr %r273, i32 0, i32 %r441
  store i32 %r441, ptr %r290, align 4
  %r293 = getelementptr [3 x i32], ptr %r274, i32 0, i32 %r441
  store i32 %r441, ptr %r293, align 4
  %r296 = getelementptr [3 x i32], ptr %r275, i32 0, i32 %r441
  store i32 %r441, ptr %r296, align 4
  %r299 = getelementptr [3 x i32], ptr %r276, i32 0, i32 %r441
  store i32 %r441, ptr %r299, align 4
  %r302 = getelementptr [3 x i32], ptr %r277, i32 0, i32 %r441
  store i32 %r441, ptr %r302, align 4
  %r444 = add i32 %r441, 1
  %r445 = add i32 %r444, 0
  br label %bb3

bb5:                                              ; preds = %bb3
  %r446 = call i32 @mul(ptr %r272, ptr %r273, ptr %r274, ptr %r275, ptr %r276, ptr %r277, ptr %r278, ptr %r279, ptr %r280)
  %r447 = add i32 %r446, 0
  br label %bb6

bb6:                                              ; preds = %bb7, %bb5
  %r448 = phi i32 [ %r447, %bb5 ], [ %r454, %bb7 ]
  %r449 = load i32, ptr @N, align 4
  %r450 = icmp slt i32 %r448, %r449
  br i1 %r450, label %bb7, label %bb8

bb7:                                              ; preds = %bb6
  %r311 = getelementptr [6 x i32], ptr %r278, i32 0, i32 %r448
  %r451 = load i32, ptr %r311, align 4
  %r452 = add i32 %r451, 0
  call void @putint(i32 %r452)
  %r453 = add i32 %r448, 1
  %r454 = add i32 %r453, 0
  br label %bb6

bb8:                                              ; preds = %bb6
  %r455 = add i32 10, 0
  %r456 = add i32 0, 0
  call void @putch(i32 %r455)
  br label %bb9

bb9:                                              ; preds = %bb10, %bb8
  %r457 = phi i32 [ %r456, %bb8 ], [ %r463, %bb10 ]
  %r458 = load i32, ptr @N, align 4
  %r459 = icmp slt i32 %r457, %r458
  br i1 %r459, label %bb10, label %bb11

bb10:                                             ; preds = %bb9
  %r321 = getelementptr [3 x i32], ptr %r279, i32 0, i32 %r457
  %r460 = load i32, ptr %r321, align 4
  %r461 = add i32 %r460, 0
  call void @putint(i32 %r461)
  %r462 = add i32 %r457, 1
  %r463 = add i32 %r462, 0
  br label %bb9

bb11:                                             ; preds = %bb9
  %r464 = add i32 10, 0
  %r465 = add i32 0, 0
  call void @putch(i32 %r464)
  br label %bb12

bb12:                                             ; preds = %bb13, %bb11
  %r466 = phi i32 [ %r465, %bb11 ], [ %r472, %bb13 ]
  %r467 = load i32, ptr @N, align 4
  %r468 = icmp slt i32 %r466, %r467
  br i1 %r468, label %bb13, label %bb14

bb13:                                             ; preds = %bb12
  %r331 = getelementptr [3 x i32], ptr %r280, i32 0, i32 %r466
  %r469 = load i32, ptr %r331, align 4
  %r470 = add i32 %r469, 0
  call void @putint(i32 %r470)
  %r471 = add i32 %r466, 1
  %r472 = add i32 %r471, 0
  br label %bb12

bb14:                                             ; preds = %bb12
  %r473 = add i32 10, 0
  call void @putch(i32 %r473)
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
