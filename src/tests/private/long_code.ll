declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@n = global i32 0
define i32 @bubblesort( i32* %r100 ) {
bb1:
  %r552 = add i32 0, 0
  %r553 = add i32 0, 0
  %r554 = add i32 0, 0
  %r555 = add i32 0, 0
  %r556 = add i32 0, 0
  %r557 = add i32 0, 0
  br label %bb2

bb2:
  %r558 = phi i32 [ %r557, %bb1 ], [ %r581, %bb7 ]
  %r559 = load i32, i32* @n
  %r560 = sub i32 %r559, 1
  %r561 = icmp slt i32 %r558, %r560
  br i1 %r561, label %bb3, label %bb4

bb3:
  %r562 = add i32 0, 0
  br label %bb5

bb5:
  %r563 = phi i32 [ %r562, %bb3 ], [ %r579, %bb10 ]
  %r564 = load i32, i32* @n
  %r565 = sub i32 %r564, %r558
  %r566 = sub i32 %r565, 1
  %r567 = icmp slt i32 %r563, %r566
  br i1 %r567, label %bb6, label %bb7

bb6:
  %r568 = add i32 %r563, 1
  %r569 = add i32 %r568, 0
  %r117 = getelementptr i32, i32* %r100, i32 %r563
  %r570 = load i32, i32* %r117
  %r120 = getelementptr i32, i32* %r100, i32 %r569
  %r571 = load i32, i32* %r120
  %r572 = icmp sgt i32 %r570, %r571
  br i1 %r572, label %bb8, label %bb9

bb8:
  %r573 = add i32 %r563, 1
  %r574 = add i32 %r573, 0
  %r128 = getelementptr i32, i32* %r100, i32 %r574
  %r575 = load i32, i32* %r128
  %r576 = add i32 %r575, 0
  %r131 = getelementptr i32, i32* %r100, i32 %r563
  %r577 = load i32, i32* %r131
  %r134 = getelementptr i32, i32* %r100, i32 %r574
  store i32 %r577, i32* %r134
  %r137 = getelementptr i32, i32* %r100, i32 %r563
  store i32 %r576, i32* %r137
  br label %bb10

bb9:
  br label %bb10

bb10:
  %r578 = add i32 %r563, 1
  %r579 = add i32 %r578, 0
  br label %bb5

bb7:
  %r580 = add i32 %r558, 1
  %r581 = add i32 %r580, 0
  br label %bb2

bb4:
  ret i32 0
}

define i32 @insertsort( i32* %r142 ) {
bb11:
  %r582 = add i32 0, 0
  %r583 = add i32 0, 0
  %r584 = add i32 0, 0
  %r585 = add i32 0, 0
  %r586 = add i32 0, 0
  %r587 = add i32 1, 0
  br label %bb12

bb12:
  %r588 = phi i32 [ %r587, %bb11 ], [ %r608, %bb17 ]
  %r589 = load i32, i32* @n
  %r590 = icmp slt i32 %r588, %r589
  br i1 %r590, label %bb13, label %bb14

bb13:
  %r149 = getelementptr i32, i32* %r142, i32 %r588
  %r591 = load i32, i32* %r149
  %r592 = add i32 %r591, 0
  %r593 = sub i32 %r588, 1
  %r594 = add i32 %r593, 0
  br label %bb15

bb15:
  %r595 = phi i32 [ %r594, %bb13 ], [ %r604, %bb16 ]
  %r596 = sub i32 0, 1
  %r597 = icmp sgt i32 %r595, %r596
  br i1 %r597, label %bb18, label %bb17

bb18:
  %r159 = getelementptr i32, i32* %r142, i32 %r595
  %r598 = load i32, i32* %r159
  %r599 = icmp slt i32 %r592, %r598
  br i1 %r599, label %bb16, label %bb17

bb16:
  %r600 = add i32 %r595, 1
  %r601 = add i32 %r600, 0
  %r166 = getelementptr i32, i32* %r142, i32 %r595
  %r602 = load i32, i32* %r166
  %r169 = getelementptr i32, i32* %r142, i32 %r601
  store i32 %r602, i32* %r169
  %r603 = sub i32 %r595, 1
  %r604 = add i32 %r603, 0
  br label %bb15

bb17:
  %r605 = add i32 %r595, 1
  %r606 = add i32 %r605, 0
  %r177 = getelementptr i32, i32* %r142, i32 %r606
  store i32 %r592, i32* %r177
  %r607 = add i32 %r588, 1
  %r608 = add i32 %r607, 0
  br label %bb12

bb14:
  ret i32 0
}

define i32 @QuickSort( i32* %r180, i32 %r181, i32 %r183 ) {
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

bb20:
  %r618 = add i32 %r614, 0
  %r619 = add i32 %r616, 0
  %r194 = getelementptr i32, i32* %r180, i32 %r614
  %r620 = load i32, i32* %r194
  %r621 = add i32 %r620, 0
  br label %bb23

bb23:
  %r622 = phi i32 [ %r618, %bb20 ], [ %r637, %bb39 ]
  %r623 = phi i32 [ %r619, %bb20 ], [ %r647, %bb39 ]
  %r624 = icmp slt i32 %r622, %r623
  br i1 %r624, label %bb24, label %bb25

bb24:
  br label %bb26

bb26:
  %r625 = phi i32 [ %r623, %bb24 ], [ %r631, %bb27 ]
  %r626 = icmp slt i32 %r622, %r625
  br i1 %r626, label %bb29, label %bb28

bb29:
  %r203 = getelementptr i32, i32* %r180, i32 %r625
  %r627 = load i32, i32* %r203
  %r628 = sub i32 %r621, 1
  %r629 = icmp sgt i32 %r627, %r628
  br i1 %r629, label %bb27, label %bb28

bb27:
  %r630 = sub i32 %r625, 1
  %r631 = add i32 %r630, 0
  br label %bb26

bb28:
  %r632 = icmp slt i32 %r622, %r625
  br i1 %r632, label %bb30, label %bb31

bb30:
  %r214 = getelementptr i32, i32* %r180, i32 %r625
  %r633 = load i32, i32* %r214
  %r217 = getelementptr i32, i32* %r180, i32 %r622
  store i32 %r633, i32* %r217
  %r634 = add i32 %r622, 1
  %r635 = add i32 %r634, 0
  br label %bb32

bb31:
  br label %bb32

bb32:
  %r636 = phi i32 [ %r635, %bb30 ], [ %r622, %bb31 ]
  br label %bb33

bb33:
  %r637 = phi i32 [ %r636, %bb32 ], [ %r642, %bb34 ]
  %r638 = icmp slt i32 %r637, %r625
  br i1 %r638, label %bb36, label %bb35

bb36:
  %r224 = getelementptr i32, i32* %r180, i32 %r637
  %r639 = load i32, i32* %r224
  %r640 = icmp slt i32 %r639, %r621
  br i1 %r640, label %bb34, label %bb35

bb34:
  %r641 = add i32 %r637, 1
  %r642 = add i32 %r641, 0
  br label %bb33

bb35:
  %r643 = icmp slt i32 %r637, %r625
  br i1 %r643, label %bb37, label %bb38

bb37:
  %r234 = getelementptr i32, i32* %r180, i32 %r637
  %r644 = load i32, i32* %r234
  %r237 = getelementptr i32, i32* %r180, i32 %r625
  store i32 %r644, i32* %r237
  %r645 = sub i32 %r625, 1
  %r646 = add i32 %r645, 0
  br label %bb39

bb38:
  br label %bb39

bb39:
  %r647 = phi i32 [ %r646, %bb37 ], [ %r625, %bb38 ]
  br label %bb23

bb25:
  %r242 = getelementptr i32, i32* %r180, i32 %r622
  store i32 %r621, i32* %r242
  %r648 = sub i32 %r622, 1
  %r649 = add i32 %r648, 0
  %r650 = call i32 @QuickSort(i32* %r180, i32 %r614, i32 %r649)
  %r651 = add i32 %r650, 0
  %r652 = add i32 %r622, 1
  %r653 = add i32 %r652, 0
  %r654 = call i32 @QuickSort(i32* %r180, i32 %r653, i32 %r616)
  %r655 = add i32 %r654, 0
  br label %bb22

bb21:
  br label %bb22

bb22:
  ret i32 0
}

define i32 @getMid( i32* %r254 ) {
bb40:
  %r656 = add i32 0, 0
  %r657 = add i32 0, 0
  %r658 = load i32, i32* @n
  %r659 = sdiv i32 %r658, 2
  %r660 = mul i32 %r659, 2
  %r661 = load i32, i32* @n
  %r662 = icmp eq i32 %r660, %r661
  br i1 %r662, label %bb41, label %bb42

bb41:
  %r663 = load i32, i32* @n
  %r664 = sdiv i32 %r663, 2
  %r665 = add i32 %r664, 0
  %r666 = sub i32 %r665, 1
  %r667 = add i32 %r666, 0
  %r267 = getelementptr i32, i32* %r254, i32 %r665
  %r668 = load i32, i32* %r267
  %r270 = getelementptr i32, i32* %r254, i32 %r667
  %r669 = load i32, i32* %r270
  %r670 = add i32 %r668, %r669
  %r671 = sdiv i32 %r670, 2
  ret i32 %r671
bb42:
  %r672 = load i32, i32* @n
  %r673 = sdiv i32 %r672, 2
  %r674 = add i32 %r673, 0
  %r277 = getelementptr i32, i32* %r254, i32 %r674
  %r675 = load i32, i32* %r277
  ret i32 %r675
}

define i32 @getMost( i32* %r279 ) {
bb44:
  %r676 = add i32 0, 0
  %r677 = add i32 0, 0
  %r678 = add i32 0, 0
  %r280 = alloca [ 1000 x i32 ]
  %r679 = add i32 0, 0
  %r680 = add i32 0, 0
  br label %bb45

bb45:
  %r681 = phi i32 [ %r680, %bb44 ], [ %r684, %bb46 ]
  %r682 = icmp slt i32 %r681, 1000
  br i1 %r682, label %bb46, label %bb47

bb46:
  %r285 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r280, i32 0, i32 %r681
  store i32 0, i32* %r285
  %r683 = add i32 %r681, 1
  %r684 = add i32 %r683, 0
  br label %bb45

bb47:
  %r685 = add i32 0, 0
  %r686 = add i32 0, 0
  br label %bb48

bb48:
  %r687 = phi i32 [ %r685, %bb47 ], [ %r704, %bb53 ]
  %r688 = phi i32 [ %r686, %bb47 ], [ %r701, %bb53 ]
  %r689 = phi i32 [ %r677, %bb47 ], [ %r702, %bb53 ]
  %r690 = load i32, i32* @n
  %r691 = icmp slt i32 %r687, %r690
  br i1 %r691, label %bb49, label %bb50

bb49:
  %r295 = getelementptr i32, i32* %r279, i32 %r687
  %r692 = load i32, i32* %r295
  %r693 = add i32 %r692, 0
  %r298 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r280, i32 0, i32 %r693
  %r694 = load i32, i32* %r298
  %r695 = add i32 %r694, 1
  %r302 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r280, i32 0, i32 %r693
  store i32 %r695, i32* %r302
  %r304 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r280, i32 0, i32 %r693
  %r696 = load i32, i32* %r304
  %r697 = icmp sgt i32 %r696, %r688
  br i1 %r697, label %bb51, label %bb52

bb51:
  %r309 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r280, i32 0, i32 %r693
  %r698 = load i32, i32* %r309
  %r699 = add i32 %r698, 0
  %r700 = add i32 %r693, 0
  br label %bb53

bb52:
  br label %bb53

bb53:
  %r701 = phi i32 [ %r699, %bb51 ], [ %r688, %bb52 ]
  %r702 = phi i32 [ %r700, %bb51 ], [ %r689, %bb52 ]
  %r703 = add i32 %r687, 1
  %r704 = add i32 %r703, 0
  br label %bb48

bb50:
  ret i32 %r689
}

define i32 @revert( i32* %r315 ) {
bb54:
  %r705 = add i32 0, 0
  %r706 = add i32 0, 0
  %r707 = add i32 0, 0
  %r708 = add i32 0, 0
  %r709 = add i32 0, 0
  br label %bb55

bb55:
  %r710 = phi i32 [ %r709, %bb54 ], [ %r719, %bb56 ]
  %r711 = phi i32 [ %r708, %bb54 ], [ %r717, %bb56 ]
  %r712 = icmp slt i32 %r711, %r710
  br i1 %r712, label %bb56, label %bb57

bb56:
  %r323 = getelementptr i32, i32* %r315, i32 %r711
  %r713 = load i32, i32* %r323
  %r714 = add i32 %r713, 0
  %r326 = getelementptr i32, i32* %r315, i32 %r710
  %r715 = load i32, i32* %r326
  %r329 = getelementptr i32, i32* %r315, i32 %r711
  store i32 %r715, i32* %r329
  %r332 = getelementptr i32, i32* %r315, i32 %r710
  store i32 %r714, i32* %r332
  %r716 = add i32 %r711, 1
  %r717 = add i32 %r716, 0
  %r718 = sub i32 %r710, 1
  %r719 = add i32 %r718, 0
  br label %bb55

bb57:
  ret i32 0
}

define i32 @arrCopy( i32* %r337, i32* %r338 ) {
bb58:
  %r720 = add i32 0, 0
  %r721 = add i32 0, 0
  br label %bb59

bb59:
  %r722 = phi i32 [ %r721, %bb58 ], [ %r727, %bb60 ]
  %r723 = load i32, i32* @n
  %r724 = icmp slt i32 %r722, %r723
  br i1 %r724, label %bb60, label %bb61

bb60:
  %r344 = getelementptr i32, i32* %r337, i32 %r722
  %r725 = load i32, i32* %r344
  %r347 = getelementptr i32, i32* %r338, i32 %r722
  store i32 %r725, i32* %r347
  %r726 = add i32 %r722, 1
  %r727 = add i32 %r726, 0
  br label %bb59

bb61:
  ret i32 0
}

define i32 @calSum( i32* %r350, i32 %r351 ) {
bb62:
  %r728 = add i32 0, 0
  %r729 = add i32 %r351, 0
  %r730 = add i32 0, 0
  %r731 = add i32 0, 0
  %r732 = add i32 0, 0
  %r733 = add i32 0, 0
  br label %bb63

bb63:
  %r734 = phi i32 [ %r733, %bb62 ], [ %r748, %bb68 ]
  %r735 = phi i32 [ %r731, %bb62 ], [ %r746, %bb68 ]
  %r736 = load i32, i32* @n
  %r737 = icmp slt i32 %r734, %r736
  br i1 %r737, label %bb64, label %bb65

bb64:
  %r360 = getelementptr i32, i32* %r350, i32 %r734
  %r738 = load i32, i32* %r360
  %r739 = add i32 %r735, %r738
  %r740 = add i32 %r739, 0
  %r741 = sdiv i32 %r734, %r729
  %r742 = mul i32 %r741, %r729
  %r743 = sub i32 %r734, %r742
  %r744 = sub i32 %r729, 1
  %r745 = icmp ne i32 %r743, %r744
  br i1 %r745, label %bb66, label %bb67

bb66:
  %r374 = getelementptr i32, i32* %r350, i32 %r734
  store i32 0, i32* %r374
  br label %bb68

bb67:
  %r377 = getelementptr i32, i32* %r350, i32 %r734
  store i32 %r740, i32* %r377
  %r749 = add i32 0, 0
  br label %bb68

bb68:
  %r746 = phi i32 [ %r740, %bb66 ], [ %r749, %bb67 ]
  %r747 = add i32 %r734, 1
  %r748 = add i32 %r747, 0
  br label %bb63

bb65:
  ret i32 0
}

define i32 @avgPooling( i32* %r380, i32 %r381 ) {
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

bb70:
  %r758 = phi i32 [ %r757, %bb69 ], [ %r768, %bb75 ]
  %r759 = phi i32 [ %r755, %bb69 ], [ %r771, %bb75 ]
  %r760 = phi i32 [ %r756, %bb69 ], [ %r769, %bb75 ]
  %r761 = load i32, i32* @n
  %r762 = icmp slt i32 %r759, %r761
  br i1 %r762, label %bb71, label %bb72

bb71:
  %r763 = sub i32 %r752, 1
  %r764 = icmp slt i32 %r759, %r763
  br i1 %r764, label %bb73, label %bb74

bb73:
  %r395 = getelementptr i32, i32* %r380, i32 %r759
  %r765 = load i32, i32* %r395
  %r766 = add i32 %r760, %r765
  %r767 = add i32 %r766, 0
  br label %bb75

bb74:
  %r772 = sub i32 %r752, 1
  %r773 = icmp eq i32 %r759, %r772
  br i1 %r773, label %bb76, label %bb77

bb76:
  %r402 = getelementptr i32, i32* %r380, i32 0
  %r774 = load i32, i32* %r402
  %r775 = add i32 %r774, 0
  %r776 = sdiv i32 %r760, %r752
  %r407 = getelementptr i32, i32* %r380, i32 0
  store i32 %r776, i32* %r407
  br label %bb78

bb77:
  %r410 = getelementptr i32, i32* %r380, i32 %r759
  %r779 = load i32, i32* %r410
  %r780 = add i32 %r760, %r779
  %r781 = sub i32 %r780, %r758
  %r782 = add i32 %r781, 0
  %r783 = sub i32 %r759, %r752
  %r784 = add i32 %r783, 1
  %r785 = add i32 %r784, 0
  %r421 = getelementptr i32, i32* %r380, i32 %r785
  %r786 = load i32, i32* %r421
  %r787 = add i32 %r786, 0
  %r788 = sdiv i32 %r782, %r752
  %r427 = getelementptr i32, i32* %r380, i32 %r785
  store i32 %r788, i32* %r427
  br label %bb78

bb78:
  %r777 = phi i32 [ %r775, %bb76 ], [ %r787, %bb77 ]
  %r778 = phi i32 [ %r760, %bb76 ], [ %r782, %bb77 ]
  br label %bb75

bb75:
  %r768 = phi i32 [ %r758, %bb73 ], [ %r777, %bb78 ]
  %r769 = phi i32 [ %r767, %bb73 ], [ %r778, %bb78 ]
  %r770 = add i32 %r759, 1
  %r771 = add i32 %r770, 0
  br label %bb70

bb72:
  %r789 = load i32, i32* @n
  %r790 = sub i32 %r789, %r752
  %r791 = add i32 %r790, 1
  %r792 = add i32 %r791, 0
  br label %bb79

bb79:
  %r793 = phi i32 [ %r792, %bb72 ], [ %r797, %bb80 ]
  %r794 = load i32, i32* @n
  %r795 = icmp slt i32 %r793, %r794
  br i1 %r795, label %bb80, label %bb81

bb80:
  %r438 = getelementptr i32, i32* %r380, i32 %r793
  store i32 0, i32* %r438
  %r796 = add i32 %r793, 1
  %r797 = add i32 %r796, 0
  br label %bb79

bb81:
  ret i32 0
}

define i32 @main( ) {
bb82:
  call void @_sysy_starttime(i32 209)
  store i32 32, i32* @n
  %r441 = alloca [ 32 x i32 ]
  %r442 = alloca [ 32 x i32 ]
  %r443 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 0
  store i32 7, i32* %r443
  %r444 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 1
  store i32 23, i32* %r444
  %r445 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 2
  store i32 89, i32* %r445
  %r446 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 3
  store i32 26, i32* %r446
  %r447 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 4
  store i32 282, i32* %r447
  %r448 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 5
  store i32 254, i32* %r448
  %r449 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 6
  store i32 27, i32* %r449
  %r450 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 7
  store i32 5, i32* %r450
  %r451 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 8
  store i32 83, i32* %r451
  %r452 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 9
  store i32 273, i32* %r452
  %r453 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 10
  store i32 574, i32* %r453
  %r454 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 11
  store i32 905, i32* %r454
  %r455 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 12
  store i32 354, i32* %r455
  %r456 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 13
  store i32 657, i32* %r456
  %r457 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 14
  store i32 935, i32* %r457
  %r458 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 15
  store i32 264, i32* %r458
  %r459 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 16
  store i32 639, i32* %r459
  %r460 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 17
  store i32 459, i32* %r460
  %r461 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 18
  store i32 29, i32* %r461
  %r462 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 19
  store i32 68, i32* %r462
  %r463 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 20
  store i32 929, i32* %r463
  %r464 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 21
  store i32 756, i32* %r464
  %r465 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 22
  store i32 452, i32* %r465
  %r466 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 23
  store i32 279, i32* %r466
  %r467 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 24
  store i32 58, i32* %r467
  %r468 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 25
  store i32 87, i32* %r468
  %r469 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 26
  store i32 96, i32* %r469
  %r470 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 27
  store i32 36, i32* %r470
  %r471 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 28
  store i32 39, i32* %r471
  %r472 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 29
  store i32 28, i32* %r472
  %r473 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 30
  store i32 1, i32* %r473
  %r474 = getelementptr [32 x i32 ], [32 x i32 ]* %r441, i32 0, i32 31
  store i32 290, i32* %r474
  %r798 = add i32 0, 0
  %r799 = call i32 @arrCopy(i32* %r441, i32* %r442)
  %r800 = add i32 %r799, 0
  %r801 = call i32 @revert(i32* %r442)
  %r802 = add i32 %r801, 0
  %r803 = add i32 0, 0
  %r804 = add i32 0, 0
  br label %bb83

bb83:
  %r805 = phi i32 [ %r804, %bb82 ], [ %r810, %bb84 ]
  %r806 = icmp slt i32 %r805, 32
  br i1 %r806, label %bb84, label %bb85

bb84:
  %r482 = getelementptr [32 x i32 ], [32 x i32 ]* %r442, i32 0, i32 %r805
  %r807 = load i32, i32* %r482
  %r808 = add i32 %r807, 0
  call void @putint(i32 %r808)
  %r809 = add i32 %r805, 1
  %r810 = add i32 %r809, 0
  br label %bb83

bb85:
  %r811 = call i32 @bubblesort(i32* %r442)
  %r812 = add i32 %r811, 0
  %r813 = add i32 0, 0
  br label %bb86

bb86:
  %r814 = phi i32 [ %r813, %bb85 ], [ %r819, %bb87 ]
  %r815 = icmp slt i32 %r814, 32
  br i1 %r815, label %bb87, label %bb88

bb87:
  %r491 = getelementptr [32 x i32 ], [32 x i32 ]* %r442, i32 0, i32 %r814
  %r816 = load i32, i32* %r491
  %r817 = add i32 %r816, 0
  call void @putint(i32 %r817)
  %r818 = add i32 %r814, 1
  %r819 = add i32 %r818, 0
  br label %bb86

bb88:
  %r820 = call i32 @getMid(i32* %r442)
  %r821 = add i32 %r820, 0
  call void @putint(i32 %r821)
  %r822 = call i32 @getMost(i32* %r442)
  %r823 = add i32 %r822, 0
  call void @putint(i32 %r823)
  %r824 = call i32 @arrCopy(i32* %r441, i32* %r442)
  %r825 = add i32 %r824, 0
  %r826 = call i32 @bubblesort(i32* %r442)
  %r827 = add i32 %r826, 0
  %r828 = add i32 0, 0
  br label %bb89

bb89:
  %r829 = phi i32 [ %r828, %bb88 ], [ %r834, %bb90 ]
  %r830 = icmp slt i32 %r829, 32
  br i1 %r830, label %bb90, label %bb91

bb90:
  %r505 = getelementptr [32 x i32 ], [32 x i32 ]* %r442, i32 0, i32 %r829
  %r831 = load i32, i32* %r505
  %r832 = add i32 %r831, 0
  call void @putint(i32 %r832)
  %r833 = add i32 %r829, 1
  %r834 = add i32 %r833, 0
  br label %bb89

bb91:
  %r835 = call i32 @arrCopy(i32* %r441, i32* %r442)
  %r836 = add i32 %r835, 0
  %r837 = call i32 @insertsort(i32* %r442)
  %r838 = add i32 %r837, 0
  %r839 = add i32 0, 0
  br label %bb92

bb92:
  %r840 = phi i32 [ %r839, %bb91 ], [ %r845, %bb93 ]
  %r841 = icmp slt i32 %r840, 32
  br i1 %r841, label %bb93, label %bb94

bb93:
  %r515 = getelementptr [32 x i32 ], [32 x i32 ]* %r442, i32 0, i32 %r840
  %r842 = load i32, i32* %r515
  %r843 = add i32 %r842, 0
  call void @putint(i32 %r843)
  %r844 = add i32 %r840, 1
  %r845 = add i32 %r844, 0
  br label %bb92

bb94:
  %r846 = call i32 @arrCopy(i32* %r441, i32* %r442)
  %r847 = add i32 %r846, 0
  %r848 = add i32 0, 0
  %r849 = add i32 31, 0
  %r850 = call i32 @QuickSort(i32* %r442, i32 %r848, i32 %r849)
  %r851 = add i32 %r850, 0
  br label %bb95

bb95:
  %r852 = phi i32 [ %r848, %bb94 ], [ %r857, %bb96 ]
  %r853 = icmp slt i32 %r852, 32
  br i1 %r853, label %bb96, label %bb97

bb96:
  %r527 = getelementptr [32 x i32 ], [32 x i32 ]* %r442, i32 0, i32 %r852
  %r854 = load i32, i32* %r527
  %r855 = add i32 %r854, 0
  call void @putint(i32 %r855)
  %r856 = add i32 %r852, 1
  %r857 = add i32 %r856, 0
  br label %bb95

bb97:
  %r858 = call i32 @arrCopy(i32* %r441, i32* %r442)
  %r859 = add i32 %r858, 0
  %r860 = call i32 @calSum(i32* %r442, i32 4)
  %r861 = add i32 %r860, 0
  %r862 = add i32 0, 0
  br label %bb98

bb98:
  %r863 = phi i32 [ %r862, %bb97 ], [ %r868, %bb99 ]
  %r864 = icmp slt i32 %r863, 32
  br i1 %r864, label %bb99, label %bb100

bb99:
  %r537 = getelementptr [32 x i32 ], [32 x i32 ]* %r442, i32 0, i32 %r863
  %r865 = load i32, i32* %r537
  %r866 = add i32 %r865, 0
  call void @putint(i32 %r866)
  %r867 = add i32 %r863, 1
  %r868 = add i32 %r867, 0
  br label %bb98

bb100:
  %r869 = call i32 @arrCopy(i32* %r441, i32* %r442)
  %r870 = add i32 %r869, 0
  %r871 = call i32 @avgPooling(i32* %r442, i32 3)
  %r872 = add i32 %r871, 0
  %r873 = add i32 0, 0
  br label %bb101

bb101:
  %r874 = phi i32 [ %r873, %bb100 ], [ %r879, %bb102 ]
  %r875 = icmp slt i32 %r874, 32
  br i1 %r875, label %bb102, label %bb103

bb102:
  %r547 = getelementptr [32 x i32 ], [32 x i32 ]* %r442, i32 0, i32 %r874
  %r876 = load i32, i32* %r547
  %r877 = add i32 %r876, 0
  call void @putint(i32 %r877)
  %r878 = add i32 %r874, 1
  %r879 = add i32 %r878, 0
  br label %bb101

bb103:
  call void @_sysy_stoptime(i32 312)
  ret i32 0
}

