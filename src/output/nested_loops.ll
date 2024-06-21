; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%my_struct_6 = type { [2 x %my_struct_5] }
%my_struct_5 = type { [3 x %my_struct_4] }
%my_struct_4 = type { [4 x %my_struct_3] }
%my_struct_3 = type { [5 x %my_struct_2] }
%my_struct_2 = type { [8 x %my_struct_1] }
%my_struct_1 = type { [7 x i32] }
%struct.timeval = type { i64, i64 }

@arr1 = global [10 x %my_struct_6] zeroinitializer
@arr2 = global [10 x %my_struct_6] zeroinitializer
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

define i32 @loop1(i32 %r100, i32 %r102) {
bb1:
  %r392 = add i32 0, 0
  %r393 = add i32 %r100, 0
  %r394 = add i32 0, 0
  %r395 = add i32 %r102, 0
  %r396 = add i32 0, 0
  %r397 = add i32 0, 0
  %r398 = add i32 0, 0
  %r399 = add i32 0, 0
  %r400 = add i32 0, 0
  %r401 = add i32 0, 0
  %r402 = add i32 0, 0
  %r403 = add i32 0, 0
  br label %bb2

bb2:                                              ; preds = %bb8, %bb1
  %r404 = phi i32 [ %r403, %bb1 ], [ %r446, %bb8 ]
  %r405 = icmp slt i32 %r404, %r393
  br i1 %r405, label %bb5, label %bb4

bb5:                                              ; preds = %bb2
  %r406 = icmp slt i32 %r404, %r395
  br i1 %r406, label %bb3, label %bb4

bb3:                                              ; preds = %bb5
  %r407 = add i32 0, 0
  br label %bb6

bb6:                                              ; preds = %bb11, %bb3
  %r408 = phi i32 [ %r407, %bb3 ], [ %r444, %bb11 ]
  %r409 = icmp slt i32 %r408, 2
  br i1 %r409, label %bb7, label %bb8

bb7:                                              ; preds = %bb6
  %r410 = add i32 0, 0
  br label %bb9

bb9:                                              ; preds = %bb14, %bb7
  %r411 = phi i32 [ %r410, %bb7 ], [ %r442, %bb14 ]
  %r412 = icmp slt i32 %r411, 3
  br i1 %r412, label %bb10, label %bb11

bb10:                                             ; preds = %bb9
  %r413 = add i32 0, 0
  br label %bb12

bb12:                                             ; preds = %bb17, %bb10
  %r414 = phi i32 [ %r413, %bb10 ], [ %r440, %bb17 ]
  %r415 = icmp slt i32 %r414, 4
  br i1 %r415, label %bb13, label %bb14

bb13:                                             ; preds = %bb12
  %r416 = add i32 0, 0
  br label %bb15

bb15:                                             ; preds = %bb20, %bb13
  %r417 = phi i32 [ %r416, %bb13 ], [ %r438, %bb20 ]
  %r418 = icmp slt i32 %r417, 5
  br i1 %r418, label %bb16, label %bb17

bb16:                                             ; preds = %bb15
  %r419 = add i32 0, 0
  br label %bb18

bb18:                                             ; preds = %bb23, %bb16
  %r420 = phi i32 [ %r419, %bb16 ], [ %r436, %bb23 ]
  %r421 = icmp slt i32 %r420, 6
  br i1 %r421, label %bb19, label %bb20

bb19:                                             ; preds = %bb18
  %r422 = add i32 0, 0
  br label %bb21

bb21:                                             ; preds = %bb22, %bb19
  %r423 = phi i32 [ %r422, %bb19 ], [ %r434, %bb22 ]
  %r424 = icmp slt i32 %r423, 2
  br i1 %r424, label %bb22, label %bb23

bb22:                                             ; preds = %bb21
  %r425 = add i32 %r404, %r408
  %r426 = add i32 %r425, %r411
  %r427 = add i32 %r426, %r414
  %r428 = add i32 %r427, %r417
  %r429 = add i32 %r428, %r420
  %r430 = add i32 %r429, %r423
  %r431 = add i32 %r430, %r393
  %r432 = add i32 %r431, %r395
  %r147 = getelementptr [10 x %my_struct_6], ptr @arr1, i32 0, i32 %r404
  %r148 = getelementptr %my_struct_6, ptr %r147, i32 0, i32 0
  %r150 = getelementptr [2 x %my_struct_5], ptr %r148, i32 0, i32 %r408
  %r151 = getelementptr %my_struct_5, ptr %r150, i32 0, i32 0
  %r153 = getelementptr [3 x %my_struct_4], ptr %r151, i32 0, i32 %r411
  %r154 = getelementptr %my_struct_4, ptr %r153, i32 0, i32 0
  %r156 = getelementptr [4 x %my_struct_3], ptr %r154, i32 0, i32 %r414
  %r157 = getelementptr %my_struct_3, ptr %r156, i32 0, i32 0
  %r159 = getelementptr [5 x %my_struct_2], ptr %r157, i32 0, i32 %r417
  %r160 = getelementptr %my_struct_2, ptr %r159, i32 0, i32 0
  %r162 = getelementptr [8 x %my_struct_1], ptr %r160, i32 0, i32 %r420
  %r163 = getelementptr %my_struct_1, ptr %r162, i32 0, i32 0
  %r165 = getelementptr [7 x i32], ptr %r163, i32 0, i32 %r423
  store i32 %r432, ptr %r165, align 4
  %r433 = add i32 %r423, 1
  %r434 = add i32 %r433, 0
  br label %bb21

bb23:                                             ; preds = %bb21
  %r435 = add i32 %r420, 1
  %r436 = add i32 %r435, 0
  br label %bb18

bb20:                                             ; preds = %bb18
  %r437 = add i32 %r417, 1
  %r438 = add i32 %r437, 0
  br label %bb15

bb17:                                             ; preds = %bb15
  %r439 = add i32 %r414, 1
  %r440 = add i32 %r439, 0
  br label %bb12

bb14:                                             ; preds = %bb12
  %r441 = add i32 %r411, 1
  %r442 = add i32 %r441, 0
  br label %bb9

bb11:                                             ; preds = %bb9
  %r443 = add i32 %r408, 1
  %r444 = add i32 %r443, 0
  br label %bb6

bb8:                                              ; preds = %bb6
  %r445 = add i32 %r404, 1
  %r446 = add i32 %r445, 0
  br label %bb2

bb4:                                              ; preds = %bb5, %bb2
  ret i32 0
}

define i32 @loop2() {
bb24:
  %r447 = add i32 0, 0
  %r448 = add i32 0, 0
  %r449 = add i32 0, 0
  %r450 = add i32 0, 0
  %r451 = add i32 0, 0
  %r452 = add i32 0, 0
  %r453 = add i32 0, 0
  %r454 = add i32 0, 0
  br label %bb25

bb25:                                             ; preds = %bb30, %bb24
  %r455 = phi i32 [ %r454, %bb24 ], [ %r491, %bb30 ]
  %r456 = icmp slt i32 %r455, 10
  br i1 %r456, label %bb26, label %bb27

bb26:                                             ; preds = %bb25
  %r457 = add i32 0, 0
  br label %bb28

bb28:                                             ; preds = %bb33, %bb26
  %r458 = phi i32 [ %r457, %bb26 ], [ %r489, %bb33 ]
  %r459 = icmp slt i32 %r458, 2
  br i1 %r459, label %bb29, label %bb30

bb29:                                             ; preds = %bb28
  %r460 = add i32 0, 0
  br label %bb31

bb31:                                             ; preds = %bb36, %bb29
  %r461 = phi i32 [ %r460, %bb29 ], [ %r487, %bb36 ]
  %r462 = icmp slt i32 %r461, 3
  br i1 %r462, label %bb32, label %bb33

bb32:                                             ; preds = %bb31
  %r463 = add i32 0, 0
  br label %bb34

bb34:                                             ; preds = %bb39, %bb32
  %r464 = phi i32 [ %r463, %bb32 ], [ %r485, %bb39 ]
  %r465 = icmp slt i32 %r464, 2
  br i1 %r465, label %bb35, label %bb36

bb35:                                             ; preds = %bb34
  %r466 = add i32 0, 0
  br label %bb37

bb37:                                             ; preds = %bb42, %bb35
  %r467 = phi i32 [ %r466, %bb35 ], [ %r483, %bb42 ]
  %r468 = icmp slt i32 %r467, 4
  br i1 %r468, label %bb38, label %bb39

bb38:                                             ; preds = %bb37
  %r469 = add i32 0, 0
  br label %bb40

bb40:                                             ; preds = %bb45, %bb38
  %r470 = phi i32 [ %r469, %bb38 ], [ %r481, %bb45 ]
  %r471 = icmp slt i32 %r470, 8
  br i1 %r471, label %bb41, label %bb42

bb41:                                             ; preds = %bb40
  %r472 = add i32 0, 0
  br label %bb43

bb43:                                             ; preds = %bb44, %bb41
  %r473 = phi i32 [ %r472, %bb41 ], [ %r479, %bb44 ]
  %r474 = icmp slt i32 %r473, 7
  br i1 %r474, label %bb44, label %bb45

bb44:                                             ; preds = %bb43
  %r475 = add i32 %r455, %r458
  %r476 = add i32 %r475, %r464
  %r477 = add i32 %r476, %r473
  %r209 = getelementptr [10 x %my_struct_6], ptr @arr2, i32 0, i32 %r455
  %r210 = getelementptr %my_struct_6, ptr %r209, i32 0, i32 0
  %r212 = getelementptr [2 x %my_struct_5], ptr %r210, i32 0, i32 %r458
  %r213 = getelementptr %my_struct_5, ptr %r212, i32 0, i32 0
  %r215 = getelementptr [3 x %my_struct_4], ptr %r213, i32 0, i32 %r461
  %r216 = getelementptr %my_struct_4, ptr %r215, i32 0, i32 0
  %r218 = getelementptr [4 x %my_struct_3], ptr %r216, i32 0, i32 %r464
  %r219 = getelementptr %my_struct_3, ptr %r218, i32 0, i32 0
  %r221 = getelementptr [5 x %my_struct_2], ptr %r219, i32 0, i32 %r467
  %r222 = getelementptr %my_struct_2, ptr %r221, i32 0, i32 0
  %r224 = getelementptr [8 x %my_struct_1], ptr %r222, i32 0, i32 %r470
  %r225 = getelementptr %my_struct_1, ptr %r224, i32 0, i32 0
  %r227 = getelementptr [7 x i32], ptr %r225, i32 0, i32 %r473
  store i32 %r477, ptr %r227, align 4
  %r478 = add i32 %r473, 1
  %r479 = add i32 %r478, 0
  br label %bb43

bb45:                                             ; preds = %bb43
  %r480 = add i32 %r470, 1
  %r481 = add i32 %r480, 0
  br label %bb40

bb42:                                             ; preds = %bb40
  %r482 = add i32 %r467, 1
  %r483 = add i32 %r482, 0
  br label %bb37

bb39:                                             ; preds = %bb37
  %r484 = add i32 %r464, 1
  %r485 = add i32 %r484, 0
  br label %bb34

bb36:                                             ; preds = %bb34
  %r486 = add i32 %r461, 1
  %r487 = add i32 %r486, 0
  br label %bb31

bb33:                                             ; preds = %bb31
  %r488 = add i32 %r458, 1
  %r489 = add i32 %r488, 0
  br label %bb28

bb30:                                             ; preds = %bb28
  %r490 = add i32 %r455, 1
  %r491 = add i32 %r490, 0
  br label %bb25

bb27:                                             ; preds = %bb25
  ret i32 0
}

define i32 @loop3(i32 %r242, i32 %r244, i32 %r246, i32 %r248, i32 %r250, i32 %r252, i32 %r254) {
bb46:
  %r492 = add i32 0, 0
  %r493 = add i32 %r242, 0
  %r494 = add i32 0, 0
  %r495 = add i32 %r244, 0
  %r496 = add i32 0, 0
  %r497 = add i32 %r246, 0
  %r498 = add i32 0, 0
  %r499 = add i32 %r248, 0
  %r500 = add i32 0, 0
  %r501 = add i32 %r250, 0
  %r502 = add i32 0, 0
  %r503 = add i32 %r252, 0
  %r504 = add i32 0, 0
  %r505 = add i32 %r254, 0
  %r506 = add i32 0, 0
  %r507 = add i32 0, 0
  %r508 = add i32 0, 0
  %r509 = add i32 0, 0
  %r510 = add i32 0, 0
  %r511 = add i32 0, 0
  %r512 = add i32 0, 0
  %r513 = add i32 0, 0
  %r514 = add i32 0, 0
  %r515 = add i32 0, 0
  br label %bb47

bb47:                                             ; preds = %bb88, %bb46
  %r516 = phi i32 [ %r514, %bb46 ], [ %r574, %bb88 ]
  %r517 = phi i32 [ %r515, %bb46 ], [ %r576, %bb88 ]
  %r518 = icmp slt i32 %r517, 10
  br i1 %r518, label %bb48, label %bb49

bb48:                                             ; preds = %bb47
  %r519 = add i32 0, 0
  br label %bb50

bb50:                                             ; preds = %bb85, %bb48
  %r520 = phi i32 [ %r516, %bb48 ], [ %r570, %bb85 ]
  %r521 = phi i32 [ %r519, %bb48 ], [ %r572, %bb85 ]
  %r522 = icmp slt i32 %r521, 100
  br i1 %r522, label %bb51, label %bb52

bb51:                                             ; preds = %bb50
  %r523 = add i32 0, 0
  br label %bb53

bb53:                                             ; preds = %bb82, %bb51
  %r524 = phi i32 [ %r520, %bb51 ], [ %r566, %bb82 ]
  %r525 = phi i32 [ %r523, %bb51 ], [ %r568, %bb82 ]
  %r526 = icmp slt i32 %r525, 1000
  br i1 %r526, label %bb54, label %bb55

bb54:                                             ; preds = %bb53
  %r527 = add i32 0, 0
  br label %bb56

bb56:                                             ; preds = %bb79, %bb54
  %r528 = phi i32 [ %r524, %bb54 ], [ %r562, %bb79 ]
  %r529 = phi i32 [ %r527, %bb54 ], [ %r564, %bb79 ]
  %r530 = icmp slt i32 %r529, 10000
  br i1 %r530, label %bb57, label %bb58

bb57:                                             ; preds = %bb56
  %r531 = add i32 0, 0
  br label %bb59

bb59:                                             ; preds = %bb76, %bb57
  %r532 = phi i32 [ %r528, %bb57 ], [ %r558, %bb76 ]
  %r533 = phi i32 [ %r531, %bb57 ], [ %r560, %bb76 ]
  %r534 = icmp slt i32 %r533, 100000
  br i1 %r534, label %bb60, label %bb61

bb60:                                             ; preds = %bb59
  %r535 = add i32 0, 0
  br label %bb62

bb62:                                             ; preds = %bb73, %bb60
  %r536 = phi i32 [ %r532, %bb60 ], [ %r554, %bb73 ]
  %r537 = phi i32 [ %r535, %bb60 ], [ %r556, %bb73 ]
  %r538 = icmp slt i32 %r537, 1000000
  br i1 %r538, label %bb63, label %bb64

bb63:                                             ; preds = %bb62
  %r539 = add i32 0, 0
  br label %bb65

bb65:                                             ; preds = %bb70, %bb63
  %r540 = phi i32 [ %r536, %bb63 ], [ %r550, %bb70 ]
  %r541 = phi i32 [ %r539, %bb63 ], [ %r552, %bb70 ]
  %r542 = icmp slt i32 %r541, 10000000
  br i1 %r542, label %bb66, label %bb67

bb66:                                             ; preds = %bb65
  %r543 = sdiv i32 %r540, 817
  %r544 = mul i32 %r543, 817
  %r545 = sub i32 %r540, %r544
  %r284 = getelementptr [10 x %my_struct_6], ptr @arr1, i32 0, i32 %r517
  %r285 = getelementptr %my_struct_6, ptr %r284, i32 0, i32 0
  %r287 = getelementptr [2 x %my_struct_5], ptr %r285, i32 0, i32 %r521
  %r288 = getelementptr %my_struct_5, ptr %r287, i32 0, i32 0
  %r290 = getelementptr [3 x %my_struct_4], ptr %r288, i32 0, i32 %r525
  %r291 = getelementptr %my_struct_4, ptr %r290, i32 0, i32 0
  %r293 = getelementptr [4 x %my_struct_3], ptr %r291, i32 0, i32 %r529
  %r294 = getelementptr %my_struct_3, ptr %r293, i32 0, i32 0
  %r296 = getelementptr [5 x %my_struct_2], ptr %r294, i32 0, i32 %r533
  %r297 = getelementptr %my_struct_2, ptr %r296, i32 0, i32 0
  %r299 = getelementptr [8 x %my_struct_1], ptr %r297, i32 0, i32 %r537
  %r300 = getelementptr %my_struct_1, ptr %r299, i32 0, i32 0
  %r302 = getelementptr [7 x i32], ptr %r300, i32 0, i32 %r541
  %r546 = load i32, ptr %r302, align 4
  %r547 = add i32 %r545, %r546
  %r306 = getelementptr [10 x %my_struct_6], ptr @arr2, i32 0, i32 %r517
  %r307 = getelementptr %my_struct_6, ptr %r306, i32 0, i32 0
  %r309 = getelementptr [2 x %my_struct_5], ptr %r307, i32 0, i32 %r521
  %r310 = getelementptr %my_struct_5, ptr %r309, i32 0, i32 0
  %r312 = getelementptr [3 x %my_struct_4], ptr %r310, i32 0, i32 %r525
  %r313 = getelementptr %my_struct_4, ptr %r312, i32 0, i32 0
  %r315 = getelementptr [4 x %my_struct_3], ptr %r313, i32 0, i32 %r529
  %r316 = getelementptr %my_struct_3, ptr %r315, i32 0, i32 0
  %r318 = getelementptr [5 x %my_struct_2], ptr %r316, i32 0, i32 %r533
  %r319 = getelementptr %my_struct_2, ptr %r318, i32 0, i32 0
  %r321 = getelementptr [8 x %my_struct_1], ptr %r319, i32 0, i32 %r537
  %r322 = getelementptr %my_struct_1, ptr %r321, i32 0, i32 0
  %r324 = getelementptr [7 x i32], ptr %r322, i32 0, i32 %r541
  %r548 = load i32, ptr %r324, align 4
  %r549 = add i32 %r547, %r548
  %r550 = add i32 %r549, 0
  %r551 = add i32 %r541, 1
  %r552 = add i32 %r551, 0
  %r553 = icmp sge i32 %r552, %r505
  br i1 %r553, label %bb68, label %bb69

bb68:                                             ; preds = %bb66
  br label %bb67

bb69:                                             ; preds = %bb66
  br label %bb70

bb70:                                             ; preds = %bb69
  br label %bb65

bb67:                                             ; preds = %bb68, %bb65
  %r554 = phi i32 [ %r540, %bb65 ], [ %r550, %bb68 ]
  %r555 = add i32 %r537, 1
  %r556 = add i32 %r555, 0
  %r557 = icmp sge i32 %r556, %r503
  br i1 %r557, label %bb71, label %bb72

bb71:                                             ; preds = %bb67
  br label %bb64

bb72:                                             ; preds = %bb67
  br label %bb73

bb73:                                             ; preds = %bb72
  br label %bb62

bb64:                                             ; preds = %bb71, %bb62
  %r558 = phi i32 [ %r536, %bb62 ], [ %r554, %bb71 ]
  %r559 = add i32 %r533, 1
  %r560 = add i32 %r559, 0
  %r561 = icmp sge i32 %r560, %r501
  br i1 %r561, label %bb74, label %bb75

bb74:                                             ; preds = %bb64
  br label %bb61

bb75:                                             ; preds = %bb64
  br label %bb76

bb76:                                             ; preds = %bb75
  br label %bb59

bb61:                                             ; preds = %bb74, %bb59
  %r562 = phi i32 [ %r532, %bb59 ], [ %r558, %bb74 ]
  %r563 = add i32 %r529, 1
  %r564 = add i32 %r563, 0
  %r565 = icmp sge i32 %r564, %r499
  br i1 %r565, label %bb77, label %bb78

bb77:                                             ; preds = %bb61
  br label %bb58

bb78:                                             ; preds = %bb61
  br label %bb79

bb79:                                             ; preds = %bb78
  br label %bb56

bb58:                                             ; preds = %bb77, %bb56
  %r566 = phi i32 [ %r528, %bb56 ], [ %r562, %bb77 ]
  %r567 = add i32 %r525, 1
  %r568 = add i32 %r567, 0
  %r569 = icmp sge i32 %r568, %r497
  br i1 %r569, label %bb80, label %bb81

bb80:                                             ; preds = %bb58
  br label %bb55

bb81:                                             ; preds = %bb58
  br label %bb82

bb82:                                             ; preds = %bb81
  br label %bb53

bb55:                                             ; preds = %bb80, %bb53
  %r570 = phi i32 [ %r524, %bb53 ], [ %r566, %bb80 ]
  %r571 = add i32 %r521, 1
  %r572 = add i32 %r571, 0
  %r573 = icmp sge i32 %r572, %r495
  br i1 %r573, label %bb83, label %bb84

bb83:                                             ; preds = %bb55
  br label %bb52

bb84:                                             ; preds = %bb55
  br label %bb85

bb85:                                             ; preds = %bb84
  br label %bb50

bb52:                                             ; preds = %bb83, %bb50
  %r574 = phi i32 [ %r520, %bb50 ], [ %r570, %bb83 ]
  %r575 = add i32 %r517, 1
  %r576 = add i32 %r575, 0
  %r577 = icmp sge i32 %r576, %r493
  br i1 %r577, label %bb86, label %bb87

bb86:                                             ; preds = %bb52
  br label %bb49

bb87:                                             ; preds = %bb52
  br label %bb88

bb88:                                             ; preds = %bb87
  br label %bb47

bb49:                                             ; preds = %bb86, %bb47
  %r578 = phi i32 [ %r516, %bb47 ], [ %r574, %bb86 ]
  ret i32 %r578
}

define i32 @main() {
bb89:
  call void @_sysy_starttime(i32 97)
  %r579 = add i32 0, 0
  %r580 = call i32 @getint()
  %r581 = add i32 %r580, 0
  %r582 = add i32 0, 0
  %r583 = call i32 @getint()
  %r584 = add i32 %r583, 0
  %r585 = add i32 0, 0
  %r586 = call i32 @getint()
  %r587 = add i32 %r586, 0
  %r588 = add i32 0, 0
  %r589 = call i32 @getint()
  %r590 = add i32 %r589, 0
  %r591 = add i32 0, 0
  %r592 = call i32 @getint()
  %r593 = add i32 %r592, 0
  %r594 = add i32 0, 0
  %r595 = call i32 @getint()
  %r596 = add i32 %r595, 0
  %r597 = add i32 0, 0
  %r598 = call i32 @getint()
  %r599 = add i32 %r598, 0
  %r600 = add i32 0, 0
  %r601 = call i32 @getint()
  %r602 = add i32 %r601, 0
  %r603 = add i32 0, 0
  %r604 = call i32 @getint()
  %r605 = add i32 %r604, 0
  call void @loop1(i32 %r581, i32 %r584)
  call void @loop2()
  %r606 = call i32 @loop3(i32 %r587, i32 %r590, i32 %r593, i32 %r596, i32 %r599, i32 %r602, i32 %r605)
  %r607 = add i32 %r606, 0
  call void @_sysy_stoptime(i32 117)
  ret i32 %r607
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
