; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }

@a0 = global i32 0
@a1 = global i32 0
@a2 = global i32 0
@a3 = global i32 0
@a4 = global i32 0
@a5 = global i32 0
@a6 = global i32 0
@a7 = global i32 0
@a8 = global i32 0
@a9 = global i32 0
@a10 = global i32 0
@a11 = global i32 0
@a12 = global i32 0
@a13 = global i32 0
@a14 = global i32 0
@a15 = global i32 0
@a16 = global i32 0
@a17 = global i32 0
@a18 = global i32 0
@a19 = global i32 0
@a20 = global i32 0
@a21 = global i32 0
@a22 = global i32 0
@a23 = global i32 0
@a24 = global i32 0
@a25 = global i32 0
@a26 = global i32 0
@a27 = global i32 0
@a28 = global i32 0
@a29 = global i32 0
@a30 = global i32 0
@a31 = global i32 0
@a32 = global i32 0
@a33 = global i32 0
@a34 = global i32 0
@a35 = global i32 0
@a36 = global i32 0
@a37 = global i32 0
@a38 = global i32 0
@a39 = global i32 0
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

define i32 @testParam8(i32 %r100, i32 %r102, i32 %r104, i32 %r106, i32 %r108, i32 %r110, i32 %r112, i32 %r114) {
bb1:
  %r383 = add i32 0, 0
  %r384 = add i32 %r100, 0
  %r385 = add i32 0, 0
  %r386 = add i32 %r102, 0
  %r387 = add i32 0, 0
  %r388 = add i32 %r104, 0
  %r389 = add i32 0, 0
  %r390 = add i32 %r106, 0
  %r391 = add i32 0, 0
  %r392 = add i32 %r108, 0
  %r393 = add i32 0, 0
  %r394 = add i32 %r110, 0
  %r395 = add i32 0, 0
  %r396 = add i32 %r112, 0
  %r397 = add i32 0, 0
  %r398 = add i32 %r114, 0
  %r399 = add i32 %r384, %r386
  %r400 = add i32 %r399, %r388
  %r401 = add i32 %r400, %r390
  %r402 = add i32 %r401, %r392
  %r403 = add i32 %r402, %r394
  %r404 = add i32 %r403, %r396
  %r405 = add i32 %r404, %r398
  ret i32 %r405
}

define i32 @testParam16(i32 %r131, i32 %r133, i32 %r135, i32 %r137, i32 %r139, i32 %r141, i32 %r143, i32 %r145, i32 %r147, i32 %r149, i32 %r151, i32 %r153, i32 %r155, i32 %r157, i32 %r159, i32 %r161) {
bb2:
  %r406 = add i32 0, 0
  %r407 = add i32 %r131, 0
  %r408 = add i32 0, 0
  %r409 = add i32 %r133, 0
  %r410 = add i32 0, 0
  %r411 = add i32 %r135, 0
  %r412 = add i32 0, 0
  %r413 = add i32 %r137, 0
  %r414 = add i32 0, 0
  %r415 = add i32 %r139, 0
  %r416 = add i32 0, 0
  %r417 = add i32 %r141, 0
  %r418 = add i32 0, 0
  %r419 = add i32 %r143, 0
  %r420 = add i32 0, 0
  %r421 = add i32 %r145, 0
  %r422 = add i32 0, 0
  %r423 = add i32 %r147, 0
  %r424 = add i32 0, 0
  %r425 = add i32 %r149, 0
  %r426 = add i32 0, 0
  %r427 = add i32 %r151, 0
  %r428 = add i32 0, 0
  %r429 = add i32 %r153, 0
  %r430 = add i32 0, 0
  %r431 = add i32 %r155, 0
  %r432 = add i32 0, 0
  %r433 = add i32 %r157, 0
  %r434 = add i32 0, 0
  %r435 = add i32 %r159, 0
  %r436 = add i32 0, 0
  %r437 = add i32 %r161, 0
  %r438 = add i32 %r407, %r409
  %r439 = add i32 %r438, %r411
  %r440 = sub i32 %r439, %r413
  %r441 = sub i32 %r440, %r415
  %r442 = sub i32 %r441, %r417
  %r443 = sub i32 %r442, %r419
  %r444 = sub i32 %r443, %r421
  %r445 = add i32 %r444, %r423
  %r446 = add i32 %r445, %r425
  %r447 = add i32 %r446, %r427
  %r448 = add i32 %r447, %r429
  %r449 = add i32 %r448, %r431
  %r450 = add i32 %r449, %r433
  %r451 = add i32 %r450, %r435
  %r452 = add i32 %r451, %r437
  ret i32 %r452
}

define i32 @testParam32(i32 %r194, i32 %r196, i32 %r198, i32 %r200, i32 %r202, i32 %r204, i32 %r206, i32 %r208, i32 %r210, i32 %r212, i32 %r214, i32 %r216, i32 %r218, i32 %r220, i32 %r222, i32 %r224, i32 %r226, i32 %r228, i32 %r230, i32 %r232, i32 %r234, i32 %r236, i32 %r238, i32 %r240, i32 %r242, i32 %r244, i32 %r246, i32 %r248, i32 %r250, i32 %r252, i32 %r254, i32 %r256) {
bb3:
  %r453 = add i32 0, 0
  %r454 = add i32 %r194, 0
  %r455 = add i32 0, 0
  %r456 = add i32 %r196, 0
  %r457 = add i32 0, 0
  %r458 = add i32 %r198, 0
  %r459 = add i32 0, 0
  %r460 = add i32 %r200, 0
  %r461 = add i32 0, 0
  %r462 = add i32 %r202, 0
  %r463 = add i32 0, 0
  %r464 = add i32 %r204, 0
  %r465 = add i32 0, 0
  %r466 = add i32 %r206, 0
  %r467 = add i32 0, 0
  %r468 = add i32 %r208, 0
  %r469 = add i32 0, 0
  %r470 = add i32 %r210, 0
  %r471 = add i32 0, 0
  %r472 = add i32 %r212, 0
  %r473 = add i32 0, 0
  %r474 = add i32 %r214, 0
  %r475 = add i32 0, 0
  %r476 = add i32 %r216, 0
  %r477 = add i32 0, 0
  %r478 = add i32 %r218, 0
  %r479 = add i32 0, 0
  %r480 = add i32 %r220, 0
  %r481 = add i32 0, 0
  %r482 = add i32 %r222, 0
  %r483 = add i32 0, 0
  %r484 = add i32 %r224, 0
  %r485 = add i32 0, 0
  %r486 = add i32 %r226, 0
  %r487 = add i32 0, 0
  %r488 = add i32 %r228, 0
  %r489 = add i32 0, 0
  %r490 = add i32 %r230, 0
  %r491 = add i32 0, 0
  %r492 = add i32 %r232, 0
  %r493 = add i32 0, 0
  %r494 = add i32 %r234, 0
  %r495 = add i32 0, 0
  %r496 = add i32 %r236, 0
  %r497 = add i32 0, 0
  %r498 = add i32 %r238, 0
  %r499 = add i32 0, 0
  %r500 = add i32 %r240, 0
  %r501 = add i32 0, 0
  %r502 = add i32 %r242, 0
  %r503 = add i32 0, 0
  %r504 = add i32 %r244, 0
  %r505 = add i32 0, 0
  %r506 = add i32 %r246, 0
  %r507 = add i32 0, 0
  %r508 = add i32 %r248, 0
  %r509 = add i32 0, 0
  %r510 = add i32 %r250, 0
  %r511 = add i32 0, 0
  %r512 = add i32 %r252, 0
  %r513 = add i32 0, 0
  %r514 = add i32 %r254, 0
  %r515 = add i32 0, 0
  %r516 = add i32 %r256, 0
  %r517 = add i32 %r454, %r456
  %r518 = add i32 %r517, %r458
  %r519 = add i32 %r518, %r460
  %r520 = add i32 %r519, %r462
  %r521 = add i32 %r520, %r464
  %r522 = add i32 %r521, %r466
  %r523 = add i32 %r522, %r468
  %r524 = add i32 %r523, %r470
  %r525 = add i32 %r524, %r472
  %r526 = add i32 %r525, %r474
  %r527 = add i32 %r526, %r476
  %r528 = add i32 %r527, %r478
  %r529 = add i32 %r528, %r480
  %r530 = add i32 %r529, %r482
  %r531 = add i32 %r530, %r484
  %r532 = add i32 %r531, %r486
  %r533 = add i32 %r532, %r488
  %r534 = sub i32 %r533, %r490
  %r535 = sub i32 %r534, %r492
  %r536 = sub i32 %r535, %r494
  %r537 = sub i32 %r536, %r496
  %r538 = sub i32 %r537, %r498
  %r539 = add i32 %r538, %r500
  %r540 = add i32 %r539, %r502
  %r541 = add i32 %r540, %r504
  %r542 = add i32 %r541, %r506
  %r543 = add i32 %r542, %r508
  %r544 = add i32 %r543, %r510
  %r545 = add i32 %r544, %r512
  %r546 = add i32 %r545, %r514
  %r547 = add i32 %r546, %r516
  ret i32 %r547
}

define i32 @main() {
bb4:
  call void @_sysy_starttime(i32 97)
  store i32 0, ptr @a0, align 4
  store i32 1, ptr @a1, align 4
  store i32 2, ptr @a2, align 4
  store i32 3, ptr @a3, align 4
  store i32 4, ptr @a4, align 4
  store i32 5, ptr @a5, align 4
  store i32 6, ptr @a6, align 4
  store i32 7, ptr @a7, align 4
  store i32 8, ptr @a8, align 4
  store i32 9, ptr @a9, align 4
  store i32 0, ptr @a10, align 4
  store i32 1, ptr @a11, align 4
  store i32 2, ptr @a12, align 4
  store i32 3, ptr @a13, align 4
  store i32 4, ptr @a14, align 4
  store i32 5, ptr @a15, align 4
  store i32 6, ptr @a16, align 4
  store i32 7, ptr @a17, align 4
  store i32 8, ptr @a18, align 4
  store i32 9, ptr @a19, align 4
  store i32 0, ptr @a20, align 4
  store i32 1, ptr @a21, align 4
  store i32 2, ptr @a22, align 4
  store i32 3, ptr @a23, align 4
  store i32 4, ptr @a24, align 4
  store i32 5, ptr @a25, align 4
  store i32 6, ptr @a26, align 4
  store i32 7, ptr @a27, align 4
  store i32 8, ptr @a28, align 4
  store i32 9, ptr @a29, align 4
  store i32 0, ptr @a30, align 4
  store i32 1, ptr @a31, align 4
  store i32 4, ptr @a32, align 4
  store i32 5, ptr @a33, align 4
  store i32 6, ptr @a34, align 4
  store i32 7, ptr @a35, align 4
  store i32 8, ptr @a36, align 4
  store i32 9, ptr @a37, align 4
  store i32 0, ptr @a38, align 4
  store i32 1, ptr @a39, align 4
  %r548 = load i32, ptr @a0, align 4
  %r549 = load i32, ptr @a1, align 4
  %r550 = load i32, ptr @a2, align 4
  %r551 = load i32, ptr @a3, align 4
  %r552 = load i32, ptr @a4, align 4
  %r553 = load i32, ptr @a5, align 4
  %r554 = load i32, ptr @a6, align 4
  %r555 = load i32, ptr @a7, align 4
  %r556 = call i32 @testParam8(i32 %r548, i32 %r549, i32 %r550, i32 %r551, i32 %r552, i32 %r553, i32 %r554, i32 %r555)
  store i32 %r556, ptr @a0, align 4
  %r557 = load i32, ptr @a0, align 4
  call void @putint(i32 %r557)
  %r558 = load i32, ptr @a32, align 4
  %r559 = load i32, ptr @a33, align 4
  %r560 = load i32, ptr @a34, align 4
  %r561 = load i32, ptr @a35, align 4
  %r562 = load i32, ptr @a36, align 4
  %r563 = load i32, ptr @a37, align 4
  %r564 = load i32, ptr @a38, align 4
  %r565 = load i32, ptr @a39, align 4
  %r566 = load i32, ptr @a8, align 4
  %r567 = load i32, ptr @a9, align 4
  %r568 = load i32, ptr @a10, align 4
  %r569 = load i32, ptr @a11, align 4
  %r570 = load i32, ptr @a12, align 4
  %r571 = load i32, ptr @a13, align 4
  %r572 = load i32, ptr @a14, align 4
  %r573 = load i32, ptr @a15, align 4
  %r574 = call i32 @testParam16(i32 %r558, i32 %r559, i32 %r560, i32 %r561, i32 %r562, i32 %r563, i32 %r564, i32 %r565, i32 %r566, i32 %r567, i32 %r568, i32 %r569, i32 %r570, i32 %r571, i32 %r572, i32 %r573)
  store i32 %r574, ptr @a0, align 4
  %r575 = load i32, ptr @a0, align 4
  call void @putint(i32 %r575)
  %r576 = load i32, ptr @a0, align 4
  %r577 = load i32, ptr @a1, align 4
  %r578 = load i32, ptr @a2, align 4
  %r579 = load i32, ptr @a3, align 4
  %r580 = load i32, ptr @a4, align 4
  %r581 = load i32, ptr @a5, align 4
  %r582 = load i32, ptr @a6, align 4
  %r583 = load i32, ptr @a7, align 4
  %r584 = load i32, ptr @a8, align 4
  %r585 = load i32, ptr @a9, align 4
  %r586 = load i32, ptr @a10, align 4
  %r587 = load i32, ptr @a11, align 4
  %r588 = load i32, ptr @a12, align 4
  %r589 = load i32, ptr @a13, align 4
  %r590 = load i32, ptr @a14, align 4
  %r591 = load i32, ptr @a15, align 4
  %r592 = load i32, ptr @a16, align 4
  %r593 = load i32, ptr @a17, align 4
  %r594 = load i32, ptr @a18, align 4
  %r595 = load i32, ptr @a19, align 4
  %r596 = load i32, ptr @a20, align 4
  %r597 = load i32, ptr @a21, align 4
  %r598 = load i32, ptr @a22, align 4
  %r599 = load i32, ptr @a23, align 4
  %r600 = load i32, ptr @a24, align 4
  %r601 = load i32, ptr @a25, align 4
  %r602 = load i32, ptr @a26, align 4
  %r603 = load i32, ptr @a27, align 4
  %r604 = load i32, ptr @a28, align 4
  %r605 = load i32, ptr @a29, align 4
  %r606 = load i32, ptr @a30, align 4
  %r607 = load i32, ptr @a31, align 4
  %r608 = call i32 @testParam32(i32 %r576, i32 %r577, i32 %r578, i32 %r579, i32 %r580, i32 %r581, i32 %r582, i32 %r583, i32 %r584, i32 %r585, i32 %r586, i32 %r587, i32 %r588, i32 %r589, i32 %r590, i32 %r591, i32 %r592, i32 %r593, i32 %r594, i32 %r595, i32 %r596, i32 %r597, i32 %r598, i32 %r599, i32 %r600, i32 %r601, i32 %r602, i32 %r603, i32 %r604, i32 %r605, i32 %r606, i32 %r607)
  store i32 %r608, ptr @a0, align 4
  %r609 = load i32, ptr @a0, align 4
  call void @putint(i32 %r609)
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
