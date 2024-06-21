; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }

@base = global i32 16
@a = global [30000010 x i32] zeroinitializer
@ans = global i32 0
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

define i32 @getMaxNum(i32 %r100, ptr %r102) {
bb1:
  %r375 = add i32 0, 0
  %r376 = add i32 %r100, 0
  %r377 = add i32 0, 0
  %r378 = add i32 0, 0
  %r379 = add i32 0, 0
  %r380 = add i32 0, 0
  br label %bb2

bb2:                                              ; preds = %bb7, %bb1
  %r381 = phi i32 [ %r380, %bb1 ], [ %r390, %bb7 ]
  %r382 = phi i32 [ %r378, %bb1 ], [ %r388, %bb7 ]
  %r383 = icmp slt i32 %r381, %r376
  br i1 %r383, label %bb3, label %bb4

bb3:                                              ; preds = %bb2
  %r109 = getelementptr i32, ptr %r102, i32 %r381
  %r384 = load i32, ptr %r109, align 4
  %r385 = icmp sgt i32 %r384, %r382
  br i1 %r385, label %bb5, label %bb6

bb5:                                              ; preds = %bb3
  %r114 = getelementptr i32, ptr %r102, i32 %r381
  %r386 = load i32, ptr %r114, align 4
  %r387 = add i32 %r386, 0
  br label %bb7

bb6:                                              ; preds = %bb3
  br label %bb7

bb7:                                              ; preds = %bb6, %bb5
  %r388 = phi i32 [ %r387, %bb5 ], [ %r382, %bb6 ]
  %r389 = add i32 %r381, 1
  %r390 = add i32 %r389, 0
  br label %bb2

bb4:                                              ; preds = %bb2
  ret i32 %r382
}

define i32 @getNumPos(i32 %r119, i32 %r121) {
bb8:
  %r391 = add i32 0, 0
  %r392 = add i32 %r119, 0
  %r393 = add i32 0, 0
  %r394 = add i32 %r121, 0
  %r395 = add i32 0, 0
  %r396 = add i32 1, 0
  %r397 = add i32 0, 0
  %r398 = add i32 0, 0
  br label %bb9

bb9:                                              ; preds = %bb10, %bb8
  %r399 = phi i32 [ %r392, %bb8 ], [ %r404, %bb10 ]
  %r400 = phi i32 [ %r398, %bb8 ], [ %r406, %bb10 ]
  %r401 = icmp slt i32 %r400, %r394
  br i1 %r401, label %bb10, label %bb11

bb10:                                             ; preds = %bb9
  %r402 = load i32, ptr @base, align 4
  %r403 = sdiv i32 %r399, %r402
  %r404 = add i32 %r403, 0
  %r405 = add i32 %r400, 1
  %r406 = add i32 %r405, 0
  br label %bb9

bb11:                                             ; preds = %bb9
  %r407 = load i32, ptr @base, align 4
  %r408 = sdiv i32 %r399, %r407
  %r409 = load i32, ptr @base, align 4
  %r410 = mul i32 %r408, %r409
  %r411 = sub i32 %r399, %r410
  ret i32 %r411
}

define void @radixSort(i32 %r140, ptr %r142, i32 %r143, i32 %r145) {
bb12:
  %r412 = add i32 0, 0
  %r413 = add i32 0, 0
  %r414 = add i32 0, 0
  %r415 = add i32 0, 0
  %r416 = add i32 0, 0
  %r417 = add i32 0, 0
  %r418 = add i32 0, 0
  %r419 = add i32 0, 0
  %r420 = add i32 0, 0
  %r421 = add i32 0, 0
  %r422 = add i32 0, 0
  %r423 = add i32 0, 0
  %r424 = add i32 %r140, 0
  %r425 = add i32 0, 0
  %r426 = add i32 %r143, 0
  %r427 = add i32 0, 0
  %r428 = add i32 %r145, 0
  %r147 = alloca [16 x i32], align 4
  %r148 = alloca [16 x i32], align 4
  %r149 = alloca [16 x i32], align 4
  %r429 = add i32 0, 0
  %r430 = add i32 0, 0
  br label %bb13

bb13:                                             ; preds = %bb14, %bb12
  %r431 = phi i32 [ %r430, %bb12 ], [ %r435, %bb14 ]
  %r432 = load i32, ptr @base, align 4
  %r433 = icmp slt i32 %r431, %r432
  br i1 %r433, label %bb14, label %bb15

bb14:                                             ; preds = %bb13
  %r155 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r431
  store i32 0, ptr %r155, align 4
  %r157 = getelementptr [16 x i32], ptr %r148, i32 0, i32 %r431
  store i32 0, ptr %r157, align 4
  %r159 = getelementptr [16 x i32], ptr %r149, i32 0, i32 %r431
  store i32 0, ptr %r159, align 4
  %r434 = add i32 %r431, 1
  %r435 = add i32 %r434, 0
  br label %bb13

bb15:                                             ; preds = %bb13
  %r436 = sub i32 0, 1
  %r437 = icmp eq i32 %r424, %r436
  br i1 %r437, label %bb16, label %bb19

bb19:                                             ; preds = %bb15
  %r438 = add i32 %r426, 1
  %r439 = icmp sge i32 %r438, %r428
  br i1 %r439, label %bb16, label %bb17

bb16:                                             ; preds = %bb19, %bb15
  ret void

bb17:                                             ; preds = %bb19
  br label %bb18

bb18:                                             ; preds = %bb17
  %r440 = add i32 %r426, 0
  br label %bb20

bb20:                                             ; preds = %bb21, %bb18
  %r441 = phi i32 [ %r440, %bb18 ], [ %r452, %bb21 ]
  %r442 = icmp slt i32 %r441, %r428
  br i1 %r442, label %bb21, label %bb22

bb21:                                             ; preds = %bb20
  %r176 = getelementptr i32, ptr %r142, i32 %r441
  %r443 = load i32, ptr %r176, align 4
  %r444 = call i32 @getNumPos(i32 %r443, i32 %r424)
  %r445 = add i32 %r444, 0
  %r182 = getelementptr i32, ptr %r142, i32 %r441
  %r446 = load i32, ptr %r182, align 4
  %r447 = call i32 @getNumPos(i32 %r446, i32 %r424)
  %r448 = add i32 %r447, 0
  %r187 = getelementptr [16 x i32], ptr %r149, i32 0, i32 %r445
  %r449 = load i32, ptr %r187, align 4
  %r450 = add i32 %r449, 1
  %r191 = getelementptr [16 x i32], ptr %r149, i32 0, i32 %r448
  store i32 %r450, ptr %r191, align 4
  %r451 = add i32 %r441, 1
  %r452 = add i32 %r451, 0
  br label %bb20

bb22:                                             ; preds = %bb20
  %r195 = getelementptr [16 x i32], ptr %r147, i32 0, i32 0
  store i32 %r426, ptr %r195, align 4
  %r197 = getelementptr [16 x i32], ptr %r149, i32 0, i32 0
  %r453 = load i32, ptr %r197, align 4
  %r454 = add i32 %r426, %r453
  %r200 = getelementptr [16 x i32], ptr %r148, i32 0, i32 0
  store i32 %r454, ptr %r200, align 4
  %r455 = add i32 1, 0
  br label %bb23

bb23:                                             ; preds = %bb24, %bb22
  %r456 = phi i32 [ %r455, %bb22 ], [ %r466, %bb24 ]
  %r457 = load i32, ptr @base, align 4
  %r458 = icmp slt i32 %r456, %r457
  br i1 %r458, label %bb24, label %bb25

bb24:                                             ; preds = %bb23
  %r459 = sub i32 %r456, 1
  %r460 = add i32 %r459, 0
  %r208 = getelementptr [16 x i32], ptr %r148, i32 0, i32 %r460
  %r461 = load i32, ptr %r208, align 4
  %r211 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r456
  store i32 %r461, ptr %r211, align 4
  %r213 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r456
  %r462 = load i32, ptr %r213, align 4
  %r216 = getelementptr [16 x i32], ptr %r149, i32 0, i32 %r456
  %r463 = load i32, ptr %r216, align 4
  %r464 = add i32 %r462, %r463
  %r220 = getelementptr [16 x i32], ptr %r148, i32 0, i32 %r456
  store i32 %r464, ptr %r220, align 4
  %r465 = add i32 %r456, 1
  %r466 = add i32 %r465, 0
  br label %bb23

bb25:                                             ; preds = %bb23
  %r467 = add i32 0, 0
  br label %bb26

bb26:                                             ; preds = %bb31, %bb25
  %r468 = phi i32 [ %r467, %bb25 ], [ %r503, %bb31 ]
  %r469 = load i32, ptr @base, align 4
  %r470 = icmp slt i32 %r468, %r469
  br i1 %r470, label %bb27, label %bb28

bb27:                                             ; preds = %bb26
  br label %bb29

bb29:                                             ; preds = %bb34, %bb27
  %r227 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r468
  %r471 = load i32, ptr %r227, align 4
  %r230 = getelementptr [16 x i32], ptr %r148, i32 0, i32 %r468
  %r472 = load i32, ptr %r230, align 4
  %r473 = icmp slt i32 %r471, %r472
  br i1 %r473, label %bb30, label %bb31

bb30:                                             ; preds = %bb29
  %r235 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r468
  %r474 = load i32, ptr %r235, align 4
  %r475 = add i32 %r474, 0
  %r239 = getelementptr i32, ptr %r142, i32 %r475
  %r476 = load i32, ptr %r239, align 4
  %r477 = add i32 %r476, 0
  br label %bb32

bb32:                                             ; preds = %bb33, %bb30
  %r478 = phi i32 [ %r477, %bb30 ], [ %r487, %bb33 ]
  %r479 = call i32 @getNumPos(i32 %r478, i32 %r424)
  %r480 = icmp ne i32 %r479, %r468
  br i1 %r480, label %bb33, label %bb34

bb33:                                             ; preds = %bb32
  %r481 = add i32 %r478, 0
  %r482 = call i32 @getNumPos(i32 %r481, i32 %r424)
  %r483 = add i32 %r482, 0
  %r253 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r483
  %r484 = load i32, ptr %r253, align 4
  %r485 = add i32 %r484, 0
  %r256 = getelementptr i32, ptr %r142, i32 %r485
  %r486 = load i32, ptr %r256, align 4
  %r487 = add i32 %r486, 0
  %r488 = call i32 @getNumPos(i32 %r481, i32 %r424)
  %r489 = add i32 %r488, 0
  %r262 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r489
  %r490 = load i32, ptr %r262, align 4
  %r491 = add i32 %r490, 0
  %r266 = getelementptr i32, ptr %r142, i32 %r491
  store i32 %r481, ptr %r266, align 4
  %r492 = call i32 @getNumPos(i32 %r481, i32 %r424)
  %r493 = add i32 %r492, 0
  %r494 = call i32 @getNumPos(i32 %r481, i32 %r424)
  %r495 = add i32 %r494, 0
  %r275 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r493
  %r496 = load i32, ptr %r275, align 4
  %r497 = add i32 %r496, 1
  %r279 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r495
  store i32 %r497, ptr %r279, align 4
  br label %bb32

bb34:                                             ; preds = %bb32
  %r282 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r468
  %r498 = load i32, ptr %r282, align 4
  %r499 = add i32 %r498, 0
  %r286 = getelementptr i32, ptr %r142, i32 %r499
  store i32 %r478, ptr %r286, align 4
  %r288 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r468
  %r500 = load i32, ptr %r288, align 4
  %r501 = add i32 %r500, 1
  %r292 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r468
  store i32 %r501, ptr %r292, align 4
  br label %bb29

bb31:                                             ; preds = %bb29
  %r502 = add i32 %r468, 1
  %r503 = add i32 %r502, 0
  br label %bb26

bb28:                                             ; preds = %bb26
  %r504 = add i32 %r426, 0
  %r297 = getelementptr [16 x i32], ptr %r147, i32 0, i32 0
  store i32 %r426, ptr %r297, align 4
  %r299 = getelementptr [16 x i32], ptr %r149, i32 0, i32 0
  %r505 = load i32, ptr %r299, align 4
  %r506 = add i32 %r426, %r505
  %r302 = getelementptr [16 x i32], ptr %r148, i32 0, i32 0
  store i32 %r506, ptr %r302, align 4
  %r507 = add i32 0, 0
  br label %bb35

bb35:                                             ; preds = %bb40, %bb28
  %r508 = phi i32 [ %r507, %bb28 ], [ %r522, %bb40 ]
  %r509 = load i32, ptr @base, align 4
  %r510 = icmp slt i32 %r508, %r509
  br i1 %r510, label %bb36, label %bb37

bb36:                                             ; preds = %bb35
  %r511 = icmp sgt i32 %r508, 0
  br i1 %r511, label %bb38, label %bb39

bb38:                                             ; preds = %bb36
  %r512 = sub i32 %r508, 1
  %r513 = add i32 %r512, 0
  %r312 = getelementptr [16 x i32], ptr %r148, i32 0, i32 %r513
  %r514 = load i32, ptr %r312, align 4
  %r315 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r508
  store i32 %r514, ptr %r315, align 4
  %r317 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r508
  %r515 = load i32, ptr %r317, align 4
  %r320 = getelementptr [16 x i32], ptr %r149, i32 0, i32 %r508
  %r516 = load i32, ptr %r320, align 4
  %r517 = add i32 %r515, %r516
  %r324 = getelementptr [16 x i32], ptr %r148, i32 0, i32 %r508
  store i32 %r517, ptr %r324, align 4
  br label %bb40

bb39:                                             ; preds = %bb36
  br label %bb40

bb40:                                             ; preds = %bb39, %bb38
  %r518 = sub i32 %r424, 1
  %r328 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r508
  %r519 = load i32, ptr %r328, align 4
  %r331 = getelementptr [16 x i32], ptr %r148, i32 0, i32 %r508
  %r520 = load i32, ptr %r331, align 4
  call void @radixSort(i32 %r518, ptr %r142, i32 %r519, i32 %r520)
  %r521 = add i32 %r508, 1
  %r522 = add i32 %r521, 0
  br label %bb35

bb37:                                             ; preds = %bb35
  ret void
}

define i32 @main() {
bb41:
  %r523 = add i32 0, 0
  %r524 = add i32 0, 0
  %r525 = call i32 @getint()
  %r526 = add i32 %r525, 0
  %r527 = add i32 0, 0
  %r528 = add i32 0, 0
  br label %bb42

bb42:                                             ; preds = %bb43, %bb41
  %r529 = phi i32 [ %r528, %bb41 ], [ %r533, %bb43 ]
  %r530 = icmp slt i32 %r529, %r526
  br i1 %r530, label %bb43, label %bb44

bb43:                                             ; preds = %bb42
  %r531 = call i32 @getint()
  %r343 = getelementptr [30000010 x i32], ptr @a, i32 0, i32 %r529
  store i32 %r531, ptr %r343, align 4
  %r532 = add i32 %r529, 1
  %r533 = add i32 %r532, 0
  br label %bb42

bb44:                                             ; preds = %bb42
  call void @_sysy_starttime(i32 97)
  call void @radixSort(i32 8, ptr @a, i32 0, i32 %r526)
  %r534 = add i32 0, 0
  br label %bb45

bb45:                                             ; preds = %bb46, %bb44
  %r535 = phi i32 [ %r534, %bb44 ], [ %r548, %bb46 ]
  %r536 = icmp slt i32 %r535, %r526
  br i1 %r536, label %bb46, label %bb47

bb46:                                             ; preds = %bb45
  %r537 = load i32, ptr @ans, align 4
  %r354 = getelementptr [30000010 x i32], ptr @a, i32 0, i32 %r535
  %r538 = load i32, ptr %r354, align 4
  %r357 = getelementptr [30000010 x i32], ptr @a, i32 0, i32 %r535
  %r539 = load i32, ptr %r357, align 4
  %r540 = add i32 2, %r535
  %r541 = sdiv i32 %r539, %r540
  %r542 = add i32 2, %r535
  %r543 = mul i32 %r541, %r542
  %r544 = sub i32 %r538, %r543
  %r545 = mul i32 %r535, %r544
  %r546 = add i32 %r537, %r545
  store i32 %r546, ptr @ans, align 4
  %r547 = add i32 %r535, 1
  %r548 = add i32 %r547, 0
  br label %bb45

bb47:                                             ; preds = %bb45
  %r549 = load i32, ptr @ans, align 4
  %r550 = icmp slt i32 %r549, 0
  br i1 %r550, label %bb48, label %bb49

bb48:                                             ; preds = %bb47
  %r551 = load i32, ptr @ans, align 4
  %r552 = sub i32 0, %r551
  store i32 %r552, ptr @ans, align 4
  br label %bb50

bb49:                                             ; preds = %bb47
  br label %bb50

bb50:                                             ; preds = %bb49, %bb48
  call void @_sysy_stoptime(i32 117)
  %r553 = load i32, ptr @ans, align 4
  call void @putint(i32 %r553)
  call void @putch(i32 10)
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
