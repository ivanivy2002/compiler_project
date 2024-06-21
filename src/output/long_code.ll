; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }

@n = global i32 0
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

define i32 @bubblesort(ptr %r100) {
bb1:
  %r552 = add i32 0, 0
  %r553 = add i32 0, 0
  %r554 = add i32 0, 0
  %r555 = add i32 0, 0
  %r556 = add i32 0, 0
  %r557 = add i32 0, 0
  br label %bb2

bb2:                                              ; preds = %bb7, %bb1
  %r558 = phi i32 [ %r557, %bb1 ], [ %r581, %bb7 ]
  %r559 = load i32, ptr @n, align 4
  %r560 = sub i32 %r559, 1
  %r561 = icmp slt i32 %r558, %r560
  br i1 %r561, label %bb3, label %bb4

bb3:                                              ; preds = %bb2
  %r562 = add i32 0, 0
  br label %bb5

bb5:                                              ; preds = %bb10, %bb3
  %r563 = phi i32 [ %r562, %bb3 ], [ %r579, %bb10 ]
  %r564 = load i32, ptr @n, align 4
  %r565 = sub i32 %r564, %r558
  %r566 = sub i32 %r565, 1
  %r567 = icmp slt i32 %r563, %r566
  br i1 %r567, label %bb6, label %bb7

bb6:                                              ; preds = %bb5
  %r568 = add i32 %r563, 1
  %r569 = add i32 %r568, 0
  %r117 = getelementptr i32, ptr %r100, i32 %r563
  %r570 = load i32, ptr %r117, align 4
  %r120 = getelementptr i32, ptr %r100, i32 %r569
  %r571 = load i32, ptr %r120, align 4
  %r572 = icmp sgt i32 %r570, %r571
  br i1 %r572, label %bb8, label %bb9

bb8:                                              ; preds = %bb6
  %r573 = add i32 %r563, 1
  %r574 = add i32 %r573, 0
  %r128 = getelementptr i32, ptr %r100, i32 %r574
  %r575 = load i32, ptr %r128, align 4
  %r576 = add i32 %r575, 0
  %r131 = getelementptr i32, ptr %r100, i32 %r563
  %r577 = load i32, ptr %r131, align 4
  %r134 = getelementptr i32, ptr %r100, i32 %r574
  store i32 %r577, ptr %r134, align 4
  %r137 = getelementptr i32, ptr %r100, i32 %r563
  store i32 %r576, ptr %r137, align 4
  br label %bb10

bb9:                                              ; preds = %bb6
  br label %bb10

bb10:                                             ; preds = %bb9, %bb8
  %r578 = add i32 %r563, 1
  %r579 = add i32 %r578, 0
  br label %bb5

bb7:                                              ; preds = %bb5
  %r580 = add i32 %r558, 1
  %r581 = add i32 %r580, 0
  br label %bb2

bb4:                                              ; preds = %bb2
  ret i32 0
}

define i32 @insertsort(ptr %r142) {
bb11:
  %r582 = add i32 0, 0
  %r583 = add i32 0, 0
  %r584 = add i32 0, 0
  %r585 = add i32 0, 0
  %r586 = add i32 0, 0
  %r587 = add i32 1, 0
  br label %bb12

bb12:                                             ; preds = %bb17, %bb11
  %r588 = phi i32 [ %r587, %bb11 ], [ %r608, %bb17 ]
  %r589 = load i32, ptr @n, align 4
  %r590 = icmp slt i32 %r588, %r589
  br i1 %r590, label %bb13, label %bb14

bb13:                                             ; preds = %bb12
  %r149 = getelementptr i32, ptr %r142, i32 %r588
  %r591 = load i32, ptr %r149, align 4
  %r592 = add i32 %r591, 0
  %r593 = sub i32 %r588, 1
  %r594 = add i32 %r593, 0
  br label %bb15

bb15:                                             ; preds = %bb16, %bb13
  %r595 = phi i32 [ %r594, %bb13 ], [ %r604, %bb16 ]
  %r596 = sub i32 0, 1
  %r597 = icmp sgt i32 %r595, %r596
  br i1 %r597, label %bb18, label %bb17

bb18:                                             ; preds = %bb15
  %r159 = getelementptr i32, ptr %r142, i32 %r595
  %r598 = load i32, ptr %r159, align 4
  %r599 = icmp slt i32 %r592, %r598
  br i1 %r599, label %bb16, label %bb17

bb16:                                             ; preds = %bb18
  %r600 = add i32 %r595, 1
  %r601 = add i32 %r600, 0
  %r166 = getelementptr i32, ptr %r142, i32 %r595
  %r602 = load i32, ptr %r166, align 4
  %r169 = getelementptr i32, ptr %r142, i32 %r601
  store i32 %r602, ptr %r169, align 4
  %r603 = sub i32 %r595, 1
  %r604 = add i32 %r603, 0
  br label %bb15

bb17:                                             ; preds = %bb18, %bb15
  %r605 = add i32 %r595, 1
  %r606 = add i32 %r605, 0
  %r177 = getelementptr i32, ptr %r142, i32 %r606
  store i32 %r592, ptr %r177, align 4
  %r607 = add i32 %r588, 1
  %r608 = add i32 %r607, 0
  br label %bb12

bb14:                                             ; preds = %bb12
  ret i32 0
}

define i32 @QuickSort(ptr %r180, i32 %r181, i32 %r183) {
bb19:
  %r609 = add i32 0, 0
  %r610 = add i32 0, 0
  %r611 = add i32 0, 0
  %r612 = add i32 0, 0
  %r613 = add i32 0, 0
  %r614 = add i32 %r181, 0
  %r615 = add i32 0, 0
  %r616 = add i32 %r183, 0
  %r617 = icmp slt i32 %r614, %r616
  br i1 %r617, label %bb20, label %bb21

bb20:                                             ; preds = %bb19
  %r618 = add i32 %r614, 0
  %r619 = add i32 %r616, 0
  %r194 = getelementptr i32, ptr %r180, i32 %r614
  %r620 = load i32, ptr %r194, align 4
  %r621 = add i32 %r620, 0
  br label %bb23

bb23:                                             ; preds = %bb39, %bb20
  %r622 = phi i32 [ %r618, %bb20 ], [ %r637, %bb39 ]
  %r623 = phi i32 [ %r619, %bb20 ], [ %r647, %bb39 ]
  %r624 = icmp slt i32 %r622, %r623
  br i1 %r624, label %bb24, label %bb25

bb24:                                             ; preds = %bb23
  br label %bb26

bb26:                                             ; preds = %bb27, %bb24
  %r625 = phi i32 [ %r623, %bb24 ], [ %r631, %bb27 ]
  %r626 = icmp slt i32 %r622, %r625
  br i1 %r626, label %bb29, label %bb28

bb29:                                             ; preds = %bb26
  %r203 = getelementptr i32, ptr %r180, i32 %r625
  %r627 = load i32, ptr %r203, align 4
  %r628 = sub i32 %r621, 1
  %r629 = icmp sgt i32 %r627, %r628
  br i1 %r629, label %bb27, label %bb28

bb27:                                             ; preds = %bb29
  %r630 = sub i32 %r625, 1
  %r631 = add i32 %r630, 0
  br label %bb26

bb28:                                             ; preds = %bb29, %bb26
  %r632 = icmp slt i32 %r622, %r625
  br i1 %r632, label %bb30, label %bb31

bb30:                                             ; preds = %bb28
  %r214 = getelementptr i32, ptr %r180, i32 %r625
  %r633 = load i32, ptr %r214, align 4
  %r217 = getelementptr i32, ptr %r180, i32 %r622
  store i32 %r633, ptr %r217, align 4
  %r634 = add i32 %r622, 1
  %r635 = add i32 %r634, 0
  br label %bb32

bb31:                                             ; preds = %bb28
  br label %bb32

bb32:                                             ; preds = %bb31, %bb30
  %r636 = phi i32 [ %r635, %bb30 ], [ %r622, %bb31 ]
  br label %bb33

bb33:                                             ; preds = %bb34, %bb32
  %r637 = phi i32 [ %r636, %bb32 ], [ %r642, %bb34 ]
  %r638 = icmp slt i32 %r637, %r625
  br i1 %r638, label %bb36, label %bb35

bb36:                                             ; preds = %bb33
  %r224 = getelementptr i32, ptr %r180, i32 %r637
  %r639 = load i32, ptr %r224, align 4
  %r640 = icmp slt i32 %r639, %r621
  br i1 %r640, label %bb34, label %bb35

bb34:                                             ; preds = %bb36
  %r641 = add i32 %r637, 1
  %r642 = add i32 %r641, 0
  br label %bb33

bb35:                                             ; preds = %bb36, %bb33
  %r643 = icmp slt i32 %r637, %r625
  br i1 %r643, label %bb37, label %bb38

bb37:                                             ; preds = %bb35
  %r234 = getelementptr i32, ptr %r180, i32 %r637
  %r644 = load i32, ptr %r234, align 4
  %r237 = getelementptr i32, ptr %r180, i32 %r625
  store i32 %r644, ptr %r237, align 4
  %r645 = sub i32 %r625, 1
  %r646 = add i32 %r645, 0
  br label %bb39

bb38:                                             ; preds = %bb35
  br label %bb39

bb39:                                             ; preds = %bb38, %bb37
  %r647 = phi i32 [ %r646, %bb37 ], [ %r625, %bb38 ]
  br label %bb23

bb25:                                             ; preds = %bb23
  %r242 = getelementptr i32, ptr %r180, i32 %r622
  store i32 %r621, ptr %r242, align 4
  %r648 = sub i32 %r622, 1
  %r649 = add i32 %r648, 0
  %r650 = call i32 @QuickSort(ptr %r180, i32 %r614, i32 %r649)
  %r651 = add i32 %r650, 0
  %r652 = add i32 %r622, 1
  %r653 = add i32 %r652, 0
  %r654 = call i32 @QuickSort(ptr %r180, i32 %r653, i32 %r616)
  %r655 = add i32 %r654, 0
  br label %bb22

bb21:                                             ; preds = %bb19
  br label %bb22

bb22:                                             ; preds = %bb21, %bb25
  ret i32 0
}

define i32 @getMid(ptr %r254) {
bb40:
  %r656 = add i32 0, 0
  %r657 = add i32 0, 0
  %r658 = load i32, ptr @n, align 4
  %r659 = sdiv i32 %r658, 2
  %r660 = mul i32 %r659, 2
  %r661 = load i32, ptr @n, align 4
  %r662 = icmp eq i32 %r660, %r661
  br i1 %r662, label %bb41, label %bb42

bb41:                                             ; preds = %bb40
  %r663 = load i32, ptr @n, align 4
  %r664 = sdiv i32 %r663, 2
  %r665 = add i32 %r664, 0
  %r666 = sub i32 %r665, 1
  %r667 = add i32 %r666, 0
  %r267 = getelementptr i32, ptr %r254, i32 %r665
  %r668 = load i32, ptr %r267, align 4
  %r270 = getelementptr i32, ptr %r254, i32 %r667
  %r669 = load i32, ptr %r270, align 4
  %r670 = add i32 %r668, %r669
  %r671 = sdiv i32 %r670, 2
  ret i32 %r671

bb42:                                             ; preds = %bb40
  %r672 = load i32, ptr @n, align 4
  %r673 = sdiv i32 %r672, 2
  %r674 = add i32 %r673, 0
  %r277 = getelementptr i32, ptr %r254, i32 %r674
  %r675 = load i32, ptr %r277, align 4
  ret i32 %r675
}

define i32 @getMost(ptr %r279) {
bb44:
  %r676 = add i32 0, 0
  %r677 = add i32 0, 0
  %r678 = add i32 0, 0
  %r280 = alloca [1000 x i32], align 4
  %r679 = add i32 0, 0
  %r680 = add i32 0, 0
  br label %bb45

bb45:                                             ; preds = %bb46, %bb44
  %r681 = phi i32 [ %r680, %bb44 ], [ %r684, %bb46 ]
  %r682 = icmp slt i32 %r681, 1000
  br i1 %r682, label %bb46, label %bb47

bb46:                                             ; preds = %bb45
  %r285 = getelementptr [1000 x i32], ptr %r280, i32 0, i32 %r681
  store i32 0, ptr %r285, align 4
  %r683 = add i32 %r681, 1
  %r684 = add i32 %r683, 0
  br label %bb45

bb47:                                             ; preds = %bb45
  %r685 = add i32 0, 0
  %r686 = add i32 0, 0
  br label %bb48

bb48:                                             ; preds = %bb53, %bb47
  %r687 = phi i32 [ %r685, %bb47 ], [ %r704, %bb53 ]
  %r688 = phi i32 [ %r686, %bb47 ], [ %r701, %bb53 ]
  %r689 = phi i32 [ %r677, %bb47 ], [ %r702, %bb53 ]
  %r690 = load i32, ptr @n, align 4
  %r691 = icmp slt i32 %r687, %r690
  br i1 %r691, label %bb49, label %bb50

bb49:                                             ; preds = %bb48
  %r295 = getelementptr i32, ptr %r279, i32 %r687
  %r692 = load i32, ptr %r295, align 4
  %r693 = add i32 %r692, 0
  %r298 = getelementptr [1000 x i32], ptr %r280, i32 0, i32 %r693
  %r694 = load i32, ptr %r298, align 4
  %r695 = add i32 %r694, 1
  %r302 = getelementptr [1000 x i32], ptr %r280, i32 0, i32 %r693
  store i32 %r695, ptr %r302, align 4
  %r304 = getelementptr [1000 x i32], ptr %r280, i32 0, i32 %r693
  %r696 = load i32, ptr %r304, align 4
  %r697 = icmp sgt i32 %r696, %r688
  br i1 %r697, label %bb51, label %bb52

bb51:                                             ; preds = %bb49
  %r309 = getelementptr [1000 x i32], ptr %r280, i32 0, i32 %r693
  %r698 = load i32, ptr %r309, align 4
  %r699 = add i32 %r698, 0
  %r700 = add i32 %r693, 0
  br label %bb53

bb52:                                             ; preds = %bb49
  br label %bb53

bb53:                                             ; preds = %bb52, %bb51
  %r701 = phi i32 [ %r699, %bb51 ], [ %r688, %bb52 ]
  %r702 = phi i32 [ %r700, %bb51 ], [ %r689, %bb52 ]
  %r703 = add i32 %r687, 1
  %r704 = add i32 %r703, 0
  br label %bb48

bb50:                                             ; preds = %bb48
  ret i32 %r689
}

define i32 @revert(ptr %r315) {
bb54:
  %r705 = add i32 0, 0
  %r706 = add i32 0, 0
  %r707 = add i32 0, 0
  %r708 = add i32 0, 0
  %r709 = add i32 0, 0
  br label %bb55

bb55:                                             ; preds = %bb56, %bb54
  %r710 = phi i32 [ %r709, %bb54 ], [ %r719, %bb56 ]
  %r711 = phi i32 [ %r708, %bb54 ], [ %r717, %bb56 ]
  %r712 = icmp slt i32 %r711, %r710
  br i1 %r712, label %bb56, label %bb57

bb56:                                             ; preds = %bb55
  %r323 = getelementptr i32, ptr %r315, i32 %r711
  %r713 = load i32, ptr %r323, align 4
  %r714 = add i32 %r713, 0
  %r326 = getelementptr i32, ptr %r315, i32 %r710
  %r715 = load i32, ptr %r326, align 4
  %r329 = getelementptr i32, ptr %r315, i32 %r711
  store i32 %r715, ptr %r329, align 4
  %r332 = getelementptr i32, ptr %r315, i32 %r710
  store i32 %r714, ptr %r332, align 4
  %r716 = add i32 %r711, 1
  %r717 = add i32 %r716, 0
  %r718 = sub i32 %r710, 1
  %r719 = add i32 %r718, 0
  br label %bb55

bb57:                                             ; preds = %bb55
  ret i32 0
}

define i32 @arrCopy(ptr %r337, ptr %r338) {
bb58:
  %r720 = add i32 0, 0
  %r721 = add i32 0, 0
  br label %bb59

bb59:                                             ; preds = %bb60, %bb58
  %r722 = phi i32 [ %r721, %bb58 ], [ %r727, %bb60 ]
  %r723 = load i32, ptr @n, align 4
  %r724 = icmp slt i32 %r722, %r723
  br i1 %r724, label %bb60, label %bb61

bb60:                                             ; preds = %bb59
  %r344 = getelementptr i32, ptr %r337, i32 %r722
  %r725 = load i32, ptr %r344, align 4
  %r347 = getelementptr i32, ptr %r338, i32 %r722
  store i32 %r725, ptr %r347, align 4
  %r726 = add i32 %r722, 1
  %r727 = add i32 %r726, 0
  br label %bb59

bb61:                                             ; preds = %bb59
  ret i32 0
}

define i32 @calSum(ptr %r350, i32 %r351) {
bb62:
  %r728 = add i32 0, 0
  %r729 = add i32 %r351, 0
  %r730 = add i32 0, 0
  %r731 = add i32 0, 0
  %r732 = add i32 0, 0
  %r733 = add i32 0, 0
  br label %bb63

bb63:                                             ; preds = %bb68, %bb62
  %r734 = phi i32 [ %r733, %bb62 ], [ %r748, %bb68 ]
  %r735 = phi i32 [ %r731, %bb62 ], [ %r746, %bb68 ]
  %r736 = load i32, ptr @n, align 4
  %r737 = icmp slt i32 %r734, %r736
  br i1 %r737, label %bb64, label %bb65

bb64:                                             ; preds = %bb63
  %r360 = getelementptr i32, ptr %r350, i32 %r734
  %r738 = load i32, ptr %r360, align 4
  %r739 = add i32 %r735, %r738
  %r740 = add i32 %r739, 0
  %r741 = sdiv i32 %r734, %r729
  %r742 = mul i32 %r741, %r729
  %r743 = sub i32 %r734, %r742
  %r744 = sub i32 %r729, 1
  %r745 = icmp ne i32 %r743, %r744
  br i1 %r745, label %bb66, label %bb67

bb66:                                             ; preds = %bb64
  %r374 = getelementptr i32, ptr %r350, i32 %r734
  store i32 0, ptr %r374, align 4
  br label %bb68

bb67:                                             ; preds = %bb64
  %r377 = getelementptr i32, ptr %r350, i32 %r734
  store i32 %r740, ptr %r377, align 4
  %r749 = add i32 0, 0
  br label %bb68

bb68:                                             ; preds = %bb67, %bb66
  %r746 = phi i32 [ %r740, %bb66 ], [ %r749, %bb67 ]
  %r747 = add i32 %r734, 1
  %r748 = add i32 %r747, 0
  br label %bb63

bb65:                                             ; preds = %bb63
  ret i32 0
}

define i32 @avgPooling(ptr %r380, i32 %r381) {
bb69:
  %r750 = add i32 0, 0
  %r751 = add i32 0, 0
  %r752 = add i32 %r381, 0
  %r753 = add i32 0, 0
  %r754 = add i32 0, 0
  %r755 = add i32 0, 0
  %r756 = add i32 0, 0
  %r757 = add i32 0, 0
  br label %bb70

bb70:                                             ; preds = %bb75, %bb69
  %r758 = phi i32 [ %r757, %bb69 ], [ %r768, %bb75 ]
  %r759 = phi i32 [ %r755, %bb69 ], [ %r771, %bb75 ]
  %r760 = phi i32 [ %r756, %bb69 ], [ %r769, %bb75 ]
  %r761 = load i32, ptr @n, align 4
  %r762 = icmp slt i32 %r759, %r761
  br i1 %r762, label %bb71, label %bb72

bb71:                                             ; preds = %bb70
  %r763 = sub i32 %r752, 1
  %r764 = icmp slt i32 %r759, %r763
  br i1 %r764, label %bb73, label %bb74

bb73:                                             ; preds = %bb71
  %r395 = getelementptr i32, ptr %r380, i32 %r759
  %r765 = load i32, ptr %r395, align 4
  %r766 = add i32 %r760, %r765
  %r767 = add i32 %r766, 0
  br label %bb75

bb74:                                             ; preds = %bb71
  %r772 = sub i32 %r752, 1
  %r773 = icmp eq i32 %r759, %r772
  br i1 %r773, label %bb76, label %bb77

bb76:                                             ; preds = %bb74
  %r402 = getelementptr i32, ptr %r380, i32 0
  %r774 = load i32, ptr %r402, align 4
  %r775 = add i32 %r774, 0
  %r776 = sdiv i32 %r760, %r752
  %r407 = getelementptr i32, ptr %r380, i32 0
  store i32 %r776, ptr %r407, align 4
  br label %bb78

bb77:                                             ; preds = %bb74
  %r410 = getelementptr i32, ptr %r380, i32 %r759
  %r779 = load i32, ptr %r410, align 4
  %r780 = add i32 %r760, %r779
  %r781 = sub i32 %r780, %r758
  %r782 = add i32 %r781, 0
  %r783 = sub i32 %r759, %r752
  %r784 = add i32 %r783, 1
  %r785 = add i32 %r784, 0
  %r421 = getelementptr i32, ptr %r380, i32 %r785
  %r786 = load i32, ptr %r421, align 4
  %r787 = add i32 %r786, 0
  %r788 = sdiv i32 %r782, %r752
  %r427 = getelementptr i32, ptr %r380, i32 %r785
  store i32 %r788, ptr %r427, align 4
  br label %bb78

bb78:                                             ; preds = %bb77, %bb76
  %r777 = phi i32 [ %r775, %bb76 ], [ %r787, %bb77 ]
  %r778 = phi i32 [ %r760, %bb76 ], [ %r782, %bb77 ]
  br label %bb75

bb75:                                             ; preds = %bb78, %bb73
  %r768 = phi i32 [ %r758, %bb73 ], [ %r777, %bb78 ]
  %r769 = phi i32 [ %r767, %bb73 ], [ %r778, %bb78 ]
  %r770 = add i32 %r759, 1
  %r771 = add i32 %r770, 0
  br label %bb70

bb72:                                             ; preds = %bb70
  %r789 = load i32, ptr @n, align 4
  %r790 = sub i32 %r789, %r752
  %r791 = add i32 %r790, 1
  %r792 = add i32 %r791, 0
  br label %bb79

bb79:                                             ; preds = %bb80, %bb72
  %r793 = phi i32 [ %r792, %bb72 ], [ %r797, %bb80 ]
  %r794 = load i32, ptr @n, align 4
  %r795 = icmp slt i32 %r793, %r794
  br i1 %r795, label %bb80, label %bb81

bb80:                                             ; preds = %bb79
  %r438 = getelementptr i32, ptr %r380, i32 %r793
  store i32 0, ptr %r438, align 4
  %r796 = add i32 %r793, 1
  %r797 = add i32 %r796, 0
  br label %bb79

bb81:                                             ; preds = %bb79
  ret i32 0
}

define i32 @main() {
bb82:
  call void @_sysy_starttime(i32 209)
  store i32 32, ptr @n, align 4
  %r441 = alloca [32 x i32], align 4
  %r442 = alloca [32 x i32], align 4
  %r443 = getelementptr [32 x i32], ptr %r441, i32 0, i32 0
  store i32 7, ptr %r443, align 4
  %r444 = getelementptr [32 x i32], ptr %r441, i32 0, i32 1
  store i32 23, ptr %r444, align 4
  %r445 = getelementptr [32 x i32], ptr %r441, i32 0, i32 2
  store i32 89, ptr %r445, align 4
  %r446 = getelementptr [32 x i32], ptr %r441, i32 0, i32 3
  store i32 26, ptr %r446, align 4
  %r447 = getelementptr [32 x i32], ptr %r441, i32 0, i32 4
  store i32 282, ptr %r447, align 4
  %r448 = getelementptr [32 x i32], ptr %r441, i32 0, i32 5
  store i32 254, ptr %r448, align 4
  %r449 = getelementptr [32 x i32], ptr %r441, i32 0, i32 6
  store i32 27, ptr %r449, align 4
  %r450 = getelementptr [32 x i32], ptr %r441, i32 0, i32 7
  store i32 5, ptr %r450, align 4
  %r451 = getelementptr [32 x i32], ptr %r441, i32 0, i32 8
  store i32 83, ptr %r451, align 4
  %r452 = getelementptr [32 x i32], ptr %r441, i32 0, i32 9
  store i32 273, ptr %r452, align 4
  %r453 = getelementptr [32 x i32], ptr %r441, i32 0, i32 10
  store i32 574, ptr %r453, align 4
  %r454 = getelementptr [32 x i32], ptr %r441, i32 0, i32 11
  store i32 905, ptr %r454, align 4
  %r455 = getelementptr [32 x i32], ptr %r441, i32 0, i32 12
  store i32 354, ptr %r455, align 4
  %r456 = getelementptr [32 x i32], ptr %r441, i32 0, i32 13
  store i32 657, ptr %r456, align 4
  %r457 = getelementptr [32 x i32], ptr %r441, i32 0, i32 14
  store i32 935, ptr %r457, align 4
  %r458 = getelementptr [32 x i32], ptr %r441, i32 0, i32 15
  store i32 264, ptr %r458, align 4
  %r459 = getelementptr [32 x i32], ptr %r441, i32 0, i32 16
  store i32 639, ptr %r459, align 4
  %r460 = getelementptr [32 x i32], ptr %r441, i32 0, i32 17
  store i32 459, ptr %r460, align 4
  %r461 = getelementptr [32 x i32], ptr %r441, i32 0, i32 18
  store i32 29, ptr %r461, align 4
  %r462 = getelementptr [32 x i32], ptr %r441, i32 0, i32 19
  store i32 68, ptr %r462, align 4
  %r463 = getelementptr [32 x i32], ptr %r441, i32 0, i32 20
  store i32 929, ptr %r463, align 4
  %r464 = getelementptr [32 x i32], ptr %r441, i32 0, i32 21
  store i32 756, ptr %r464, align 4
  %r465 = getelementptr [32 x i32], ptr %r441, i32 0, i32 22
  store i32 452, ptr %r465, align 4
  %r466 = getelementptr [32 x i32], ptr %r441, i32 0, i32 23
  store i32 279, ptr %r466, align 4
  %r467 = getelementptr [32 x i32], ptr %r441, i32 0, i32 24
  store i32 58, ptr %r467, align 4
  %r468 = getelementptr [32 x i32], ptr %r441, i32 0, i32 25
  store i32 87, ptr %r468, align 4
  %r469 = getelementptr [32 x i32], ptr %r441, i32 0, i32 26
  store i32 96, ptr %r469, align 4
  %r470 = getelementptr [32 x i32], ptr %r441, i32 0, i32 27
  store i32 36, ptr %r470, align 4
  %r471 = getelementptr [32 x i32], ptr %r441, i32 0, i32 28
  store i32 39, ptr %r471, align 4
  %r472 = getelementptr [32 x i32], ptr %r441, i32 0, i32 29
  store i32 28, ptr %r472, align 4
  %r473 = getelementptr [32 x i32], ptr %r441, i32 0, i32 30
  store i32 1, ptr %r473, align 4
  %r474 = getelementptr [32 x i32], ptr %r441, i32 0, i32 31
  store i32 290, ptr %r474, align 4
  %r798 = add i32 0, 0
  %r799 = call i32 @arrCopy(ptr %r441, ptr %r442)
  %r800 = add i32 %r799, 0
  %r801 = call i32 @revert(ptr %r442)
  %r802 = add i32 %r801, 0
  %r803 = add i32 0, 0
  %r804 = add i32 0, 0
  br label %bb83

bb83:                                             ; preds = %bb84, %bb82
  %r805 = phi i32 [ %r804, %bb82 ], [ %r810, %bb84 ]
  %r806 = icmp slt i32 %r805, 32
  br i1 %r806, label %bb84, label %bb85

bb84:                                             ; preds = %bb83
  %r482 = getelementptr [32 x i32], ptr %r442, i32 0, i32 %r805
  %r807 = load i32, ptr %r482, align 4
  %r808 = add i32 %r807, 0
  call void @putint(i32 %r808)
  %r809 = add i32 %r805, 1
  %r810 = add i32 %r809, 0
  br label %bb83

bb85:                                             ; preds = %bb83
  %r811 = call i32 @bubblesort(ptr %r442)
  %r812 = add i32 %r811, 0
  %r813 = add i32 0, 0
  br label %bb86

bb86:                                             ; preds = %bb87, %bb85
  %r814 = phi i32 [ %r813, %bb85 ], [ %r819, %bb87 ]
  %r815 = icmp slt i32 %r814, 32
  br i1 %r815, label %bb87, label %bb88

bb87:                                             ; preds = %bb86
  %r491 = getelementptr [32 x i32], ptr %r442, i32 0, i32 %r814
  %r816 = load i32, ptr %r491, align 4
  %r817 = add i32 %r816, 0
  call void @putint(i32 %r817)
  %r818 = add i32 %r814, 1
  %r819 = add i32 %r818, 0
  br label %bb86

bb88:                                             ; preds = %bb86
  %r820 = call i32 @getMid(ptr %r442)
  %r821 = add i32 %r820, 0
  call void @putint(i32 %r821)
  %r822 = call i32 @getMost(ptr %r442)
  %r823 = add i32 %r822, 0
  call void @putint(i32 %r823)
  %r824 = call i32 @arrCopy(ptr %r441, ptr %r442)
  %r825 = add i32 %r824, 0
  %r826 = call i32 @bubblesort(ptr %r442)
  %r827 = add i32 %r826, 0
  %r828 = add i32 0, 0
  br label %bb89

bb89:                                             ; preds = %bb90, %bb88
  %r829 = phi i32 [ %r828, %bb88 ], [ %r834, %bb90 ]
  %r830 = icmp slt i32 %r829, 32
  br i1 %r830, label %bb90, label %bb91

bb90:                                             ; preds = %bb89
  %r505 = getelementptr [32 x i32], ptr %r442, i32 0, i32 %r829
  %r831 = load i32, ptr %r505, align 4
  %r832 = add i32 %r831, 0
  call void @putint(i32 %r832)
  %r833 = add i32 %r829, 1
  %r834 = add i32 %r833, 0
  br label %bb89

bb91:                                             ; preds = %bb89
  %r835 = call i32 @arrCopy(ptr %r441, ptr %r442)
  %r836 = add i32 %r835, 0
  %r837 = call i32 @insertsort(ptr %r442)
  %r838 = add i32 %r837, 0
  %r839 = add i32 0, 0
  br label %bb92

bb92:                                             ; preds = %bb93, %bb91
  %r840 = phi i32 [ %r839, %bb91 ], [ %r845, %bb93 ]
  %r841 = icmp slt i32 %r840, 32
  br i1 %r841, label %bb93, label %bb94

bb93:                                             ; preds = %bb92
  %r515 = getelementptr [32 x i32], ptr %r442, i32 0, i32 %r840
  %r842 = load i32, ptr %r515, align 4
  %r843 = add i32 %r842, 0
  call void @putint(i32 %r843)
  %r844 = add i32 %r840, 1
  %r845 = add i32 %r844, 0
  br label %bb92

bb94:                                             ; preds = %bb92
  %r846 = call i32 @arrCopy(ptr %r441, ptr %r442)
  %r847 = add i32 %r846, 0
  %r848 = add i32 0, 0
  %r849 = add i32 31, 0
  %r850 = call i32 @QuickSort(ptr %r442, i32 %r848, i32 %r849)
  %r851 = add i32 %r850, 0
  br label %bb95

bb95:                                             ; preds = %bb96, %bb94
  %r852 = phi i32 [ %r848, %bb94 ], [ %r857, %bb96 ]
  %r853 = icmp slt i32 %r852, 32
  br i1 %r853, label %bb96, label %bb97

bb96:                                             ; preds = %bb95
  %r527 = getelementptr [32 x i32], ptr %r442, i32 0, i32 %r852
  %r854 = load i32, ptr %r527, align 4
  %r855 = add i32 %r854, 0
  call void @putint(i32 %r855)
  %r856 = add i32 %r852, 1
  %r857 = add i32 %r856, 0
  br label %bb95

bb97:                                             ; preds = %bb95
  %r858 = call i32 @arrCopy(ptr %r441, ptr %r442)
  %r859 = add i32 %r858, 0
  %r860 = call i32 @calSum(ptr %r442, i32 4)
  %r861 = add i32 %r860, 0
  %r862 = add i32 0, 0
  br label %bb98

bb98:                                             ; preds = %bb99, %bb97
  %r863 = phi i32 [ %r862, %bb97 ], [ %r868, %bb99 ]
  %r864 = icmp slt i32 %r863, 32
  br i1 %r864, label %bb99, label %bb100

bb99:                                             ; preds = %bb98
  %r537 = getelementptr [32 x i32], ptr %r442, i32 0, i32 %r863
  %r865 = load i32, ptr %r537, align 4
  %r866 = add i32 %r865, 0
  call void @putint(i32 %r866)
  %r867 = add i32 %r863, 1
  %r868 = add i32 %r867, 0
  br label %bb98

bb100:                                            ; preds = %bb98
  %r869 = call i32 @arrCopy(ptr %r441, ptr %r442)
  %r870 = add i32 %r869, 0
  %r871 = call i32 @avgPooling(ptr %r442, i32 3)
  %r872 = add i32 %r871, 0
  %r873 = add i32 0, 0
  br label %bb101

bb101:                                            ; preds = %bb102, %bb100
  %r874 = phi i32 [ %r873, %bb100 ], [ %r879, %bb102 ]
  %r875 = icmp slt i32 %r874, 32
  br i1 %r875, label %bb102, label %bb103

bb102:                                            ; preds = %bb101
  %r547 = getelementptr [32 x i32], ptr %r442, i32 0, i32 %r874
  %r876 = load i32, ptr %r547, align 4
  %r877 = add i32 %r876, 0
  call void @putint(i32 %r877)
  %r878 = add i32 %r874, 1
  %r879 = add i32 %r878, 0
  br label %bb101

bb103:                                            ; preds = %bb101
  call void @_sysy_stoptime(i32 312)
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
