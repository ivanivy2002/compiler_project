declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
%my_struct_1 = type { [7 x i32 ] }
%my_struct_2 = type { [8 x %my_struct_1 ] }
%my_struct_3 = type { [5 x %my_struct_2 ] }
%my_struct_4 = type { [4 x %my_struct_3 ] }
%my_struct_5 = type { [3 x %my_struct_4 ] }
%my_struct_6 = type { [2 x %my_struct_5 ] }
@arr1 = global [ 10 x %my_struct_6 ] zeroinitializer
@arr2 = global [ 10 x %my_struct_6 ] zeroinitializer
define i32 @loop1( i32 %r100, i32 %r102 ) {
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

bb2:
  %r404 = phi i32 [ %r403, %bb1 ], [ %r446, %bb8 ]
  %r405 = icmp slt i32 %r404, %r393
  br i1 %r405, label %bb5, label %bb4

bb5:
  %r406 = icmp slt i32 %r404, %r395
  br i1 %r406, label %bb3, label %bb4

bb3:
  %r407 = add i32 0, 0
  br label %bb6

bb6:
  %r408 = phi i32 [ %r407, %bb3 ], [ %r444, %bb11 ]
  %r409 = icmp slt i32 %r408, 2
  br i1 %r409, label %bb7, label %bb8

bb7:
  %r410 = add i32 0, 0
  br label %bb9

bb9:
  %r411 = phi i32 [ %r410, %bb7 ], [ %r442, %bb14 ]
  %r412 = icmp slt i32 %r411, 3
  br i1 %r412, label %bb10, label %bb11

bb10:
  %r413 = add i32 0, 0
  br label %bb12

bb12:
  %r414 = phi i32 [ %r413, %bb10 ], [ %r440, %bb17 ]
  %r415 = icmp slt i32 %r414, 4
  br i1 %r415, label %bb13, label %bb14

bb13:
  %r416 = add i32 0, 0
  br label %bb15

bb15:
  %r417 = phi i32 [ %r416, %bb13 ], [ %r438, %bb20 ]
  %r418 = icmp slt i32 %r417, 5
  br i1 %r418, label %bb16, label %bb17

bb16:
  %r419 = add i32 0, 0
  br label %bb18

bb18:
  %r420 = phi i32 [ %r419, %bb16 ], [ %r436, %bb23 ]
  %r421 = icmp slt i32 %r420, 6
  br i1 %r421, label %bb19, label %bb20

bb19:
  %r422 = add i32 0, 0
  br label %bb21

bb21:
  %r423 = phi i32 [ %r422, %bb19 ], [ %r434, %bb22 ]
  %r424 = icmp slt i32 %r423, 2
  br i1 %r424, label %bb22, label %bb23

bb22:
  %r425 = add i32 %r404, %r408
  %r426 = add i32 %r425, %r411
  %r427 = add i32 %r426, %r414
  %r428 = add i32 %r427, %r417
  %r429 = add i32 %r428, %r420
  %r430 = add i32 %r429, %r423
  %r431 = add i32 %r430, %r393
  %r432 = add i32 %r431, %r395
  %r147 = getelementptr [10 x %my_struct_6 ], [10 x %my_struct_6 ]* @arr1, i32 0, i32 %r404
  %r148 = getelementptr %my_struct_6, %my_struct_6* %r147, i32 0, i32 0
  %r150 = getelementptr [2 x %my_struct_5 ], [2 x %my_struct_5 ]* %r148, i32 0, i32 %r408
  %r151 = getelementptr %my_struct_5, %my_struct_5* %r150, i32 0, i32 0
  %r153 = getelementptr [3 x %my_struct_4 ], [3 x %my_struct_4 ]* %r151, i32 0, i32 %r411
  %r154 = getelementptr %my_struct_4, %my_struct_4* %r153, i32 0, i32 0
  %r156 = getelementptr [4 x %my_struct_3 ], [4 x %my_struct_3 ]* %r154, i32 0, i32 %r414
  %r157 = getelementptr %my_struct_3, %my_struct_3* %r156, i32 0, i32 0
  %r159 = getelementptr [5 x %my_struct_2 ], [5 x %my_struct_2 ]* %r157, i32 0, i32 %r417
  %r160 = getelementptr %my_struct_2, %my_struct_2* %r159, i32 0, i32 0
  %r162 = getelementptr [8 x %my_struct_1 ], [8 x %my_struct_1 ]* %r160, i32 0, i32 %r420
  %r163 = getelementptr %my_struct_1, %my_struct_1* %r162, i32 0, i32 0
  %r165 = getelementptr [7 x i32 ], [7 x i32 ]* %r163, i32 0, i32 %r423
  store i32 %r432, i32* %r165
  %r433 = add i32 %r423, 1
  %r434 = add i32 %r433, 0
  br label %bb21

bb23:
  %r435 = add i32 %r420, 1
  %r436 = add i32 %r435, 0
  br label %bb18

bb20:
  %r437 = add i32 %r417, 1
  %r438 = add i32 %r437, 0
  br label %bb15

bb17:
  %r439 = add i32 %r414, 1
  %r440 = add i32 %r439, 0
  br label %bb12

bb14:
  %r441 = add i32 %r411, 1
  %r442 = add i32 %r441, 0
  br label %bb9

bb11:
  %r443 = add i32 %r408, 1
  %r444 = add i32 %r443, 0
  br label %bb6

bb8:
  %r445 = add i32 %r404, 1
  %r446 = add i32 %r445, 0
  br label %bb2

bb4:
  ret i32 0
}

define i32 @loop2( ) {
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

bb25:
  %r455 = phi i32 [ %r454, %bb24 ], [ %r491, %bb30 ]
  %r456 = icmp slt i32 %r455, 10
  br i1 %r456, label %bb26, label %bb27

bb26:
  %r457 = add i32 0, 0
  br label %bb28

bb28:
  %r458 = phi i32 [ %r457, %bb26 ], [ %r489, %bb33 ]
  %r459 = icmp slt i32 %r458, 2
  br i1 %r459, label %bb29, label %bb30

bb29:
  %r460 = add i32 0, 0
  br label %bb31

bb31:
  %r461 = phi i32 [ %r460, %bb29 ], [ %r487, %bb36 ]
  %r462 = icmp slt i32 %r461, 3
  br i1 %r462, label %bb32, label %bb33

bb32:
  %r463 = add i32 0, 0
  br label %bb34

bb34:
  %r464 = phi i32 [ %r463, %bb32 ], [ %r485, %bb39 ]
  %r465 = icmp slt i32 %r464, 2
  br i1 %r465, label %bb35, label %bb36

bb35:
  %r466 = add i32 0, 0
  br label %bb37

bb37:
  %r467 = phi i32 [ %r466, %bb35 ], [ %r483, %bb42 ]
  %r468 = icmp slt i32 %r467, 4
  br i1 %r468, label %bb38, label %bb39

bb38:
  %r469 = add i32 0, 0
  br label %bb40

bb40:
  %r470 = phi i32 [ %r469, %bb38 ], [ %r481, %bb45 ]
  %r471 = icmp slt i32 %r470, 8
  br i1 %r471, label %bb41, label %bb42

bb41:
  %r472 = add i32 0, 0
  br label %bb43

bb43:
  %r473 = phi i32 [ %r472, %bb41 ], [ %r479, %bb44 ]
  %r474 = icmp slt i32 %r473, 7
  br i1 %r474, label %bb44, label %bb45

bb44:
  %r475 = add i32 %r455, %r458
  %r476 = add i32 %r475, %r464
  %r477 = add i32 %r476, %r473
  %r209 = getelementptr [10 x %my_struct_6 ], [10 x %my_struct_6 ]* @arr2, i32 0, i32 %r455
  %r210 = getelementptr %my_struct_6, %my_struct_6* %r209, i32 0, i32 0
  %r212 = getelementptr [2 x %my_struct_5 ], [2 x %my_struct_5 ]* %r210, i32 0, i32 %r458
  %r213 = getelementptr %my_struct_5, %my_struct_5* %r212, i32 0, i32 0
  %r215 = getelementptr [3 x %my_struct_4 ], [3 x %my_struct_4 ]* %r213, i32 0, i32 %r461
  %r216 = getelementptr %my_struct_4, %my_struct_4* %r215, i32 0, i32 0
  %r218 = getelementptr [4 x %my_struct_3 ], [4 x %my_struct_3 ]* %r216, i32 0, i32 %r464
  %r219 = getelementptr %my_struct_3, %my_struct_3* %r218, i32 0, i32 0
  %r221 = getelementptr [5 x %my_struct_2 ], [5 x %my_struct_2 ]* %r219, i32 0, i32 %r467
  %r222 = getelementptr %my_struct_2, %my_struct_2* %r221, i32 0, i32 0
  %r224 = getelementptr [8 x %my_struct_1 ], [8 x %my_struct_1 ]* %r222, i32 0, i32 %r470
  %r225 = getelementptr %my_struct_1, %my_struct_1* %r224, i32 0, i32 0
  %r227 = getelementptr [7 x i32 ], [7 x i32 ]* %r225, i32 0, i32 %r473
  store i32 %r477, i32* %r227
  %r478 = add i32 %r473, 1
  %r479 = add i32 %r478, 0
  br label %bb43

bb45:
  %r480 = add i32 %r470, 1
  %r481 = add i32 %r480, 0
  br label %bb40

bb42:
  %r482 = add i32 %r467, 1
  %r483 = add i32 %r482, 0
  br label %bb37

bb39:
  %r484 = add i32 %r464, 1
  %r485 = add i32 %r484, 0
  br label %bb34

bb36:
  %r486 = add i32 %r461, 1
  %r487 = add i32 %r486, 0
  br label %bb31

bb33:
  %r488 = add i32 %r458, 1
  %r489 = add i32 %r488, 0
  br label %bb28

bb30:
  %r490 = add i32 %r455, 1
  %r491 = add i32 %r490, 0
  br label %bb25

bb27:
  ret i32 0
}

define i32 @loop3( i32 %r242, i32 %r244, i32 %r246, i32 %r248, i32 %r250, i32 %r252, i32 %r254 ) {
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

bb47:
  %r516 = phi i32 [ %r514, %bb46 ], [ %r574, %bb88 ]
  %r517 = phi i32 [ %r515, %bb46 ], [ %r576, %bb88 ]
  %r518 = icmp slt i32 %r517, 10
  br i1 %r518, label %bb48, label %bb49

bb48:
  %r519 = add i32 0, 0
  br label %bb50

bb50:
  %r520 = phi i32 [ %r516, %bb48 ], [ %r570, %bb85 ]
  %r521 = phi i32 [ %r519, %bb48 ], [ %r572, %bb85 ]
  %r522 = icmp slt i32 %r521, 100
  br i1 %r522, label %bb51, label %bb52

bb51:
  %r523 = add i32 0, 0
  br label %bb53

bb53:
  %r524 = phi i32 [ %r520, %bb51 ], [ %r566, %bb82 ]
  %r525 = phi i32 [ %r523, %bb51 ], [ %r568, %bb82 ]
  %r526 = icmp slt i32 %r525, 1000
  br i1 %r526, label %bb54, label %bb55

bb54:
  %r527 = add i32 0, 0
  br label %bb56

bb56:
  %r528 = phi i32 [ %r524, %bb54 ], [ %r562, %bb79 ]
  %r529 = phi i32 [ %r527, %bb54 ], [ %r564, %bb79 ]
  %r530 = icmp slt i32 %r529, 10000
  br i1 %r530, label %bb57, label %bb58

bb57:
  %r531 = add i32 0, 0
  br label %bb59

bb59:
  %r532 = phi i32 [ %r528, %bb57 ], [ %r558, %bb76 ]
  %r533 = phi i32 [ %r531, %bb57 ], [ %r560, %bb76 ]
  %r534 = icmp slt i32 %r533, 100000
  br i1 %r534, label %bb60, label %bb61

bb60:
  %r535 = add i32 0, 0
  br label %bb62

bb62:
  %r536 = phi i32 [ %r532, %bb60 ], [ %r554, %bb73 ]
  %r537 = phi i32 [ %r535, %bb60 ], [ %r556, %bb73 ]
  %r538 = icmp slt i32 %r537, 1000000
  br i1 %r538, label %bb63, label %bb64

bb63:
  %r539 = add i32 0, 0
  br label %bb65

bb65:
  %r540 = phi i32 [ %r536, %bb63 ], [ %r550, %bb70 ]
  %r541 = phi i32 [ %r539, %bb63 ], [ %r552, %bb70 ]
  %r542 = icmp slt i32 %r541, 10000000
  br i1 %r542, label %bb66, label %bb67

bb66:
  %r543 = sdiv i32 %r540, 817
  %r544 = mul i32 %r543, 817
  %r545 = sub i32 %r540, %r544
  %r284 = getelementptr [10 x %my_struct_6 ], [10 x %my_struct_6 ]* @arr1, i32 0, i32 %r517
  %r285 = getelementptr %my_struct_6, %my_struct_6* %r284, i32 0, i32 0
  %r287 = getelementptr [2 x %my_struct_5 ], [2 x %my_struct_5 ]* %r285, i32 0, i32 %r521
  %r288 = getelementptr %my_struct_5, %my_struct_5* %r287, i32 0, i32 0
  %r290 = getelementptr [3 x %my_struct_4 ], [3 x %my_struct_4 ]* %r288, i32 0, i32 %r525
  %r291 = getelementptr %my_struct_4, %my_struct_4* %r290, i32 0, i32 0
  %r293 = getelementptr [4 x %my_struct_3 ], [4 x %my_struct_3 ]* %r291, i32 0, i32 %r529
  %r294 = getelementptr %my_struct_3, %my_struct_3* %r293, i32 0, i32 0
  %r296 = getelementptr [5 x %my_struct_2 ], [5 x %my_struct_2 ]* %r294, i32 0, i32 %r533
  %r297 = getelementptr %my_struct_2, %my_struct_2* %r296, i32 0, i32 0
  %r299 = getelementptr [8 x %my_struct_1 ], [8 x %my_struct_1 ]* %r297, i32 0, i32 %r537
  %r300 = getelementptr %my_struct_1, %my_struct_1* %r299, i32 0, i32 0
  %r302 = getelementptr [7 x i32 ], [7 x i32 ]* %r300, i32 0, i32 %r541
  %r546 = load i32, i32* %r302
  %r547 = add i32 %r545, %r546
  %r306 = getelementptr [10 x %my_struct_6 ], [10 x %my_struct_6 ]* @arr2, i32 0, i32 %r517
  %r307 = getelementptr %my_struct_6, %my_struct_6* %r306, i32 0, i32 0
  %r309 = getelementptr [2 x %my_struct_5 ], [2 x %my_struct_5 ]* %r307, i32 0, i32 %r521
  %r310 = getelementptr %my_struct_5, %my_struct_5* %r309, i32 0, i32 0
  %r312 = getelementptr [3 x %my_struct_4 ], [3 x %my_struct_4 ]* %r310, i32 0, i32 %r525
  %r313 = getelementptr %my_struct_4, %my_struct_4* %r312, i32 0, i32 0
  %r315 = getelementptr [4 x %my_struct_3 ], [4 x %my_struct_3 ]* %r313, i32 0, i32 %r529
  %r316 = getelementptr %my_struct_3, %my_struct_3* %r315, i32 0, i32 0
  %r318 = getelementptr [5 x %my_struct_2 ], [5 x %my_struct_2 ]* %r316, i32 0, i32 %r533
  %r319 = getelementptr %my_struct_2, %my_struct_2* %r318, i32 0, i32 0
  %r321 = getelementptr [8 x %my_struct_1 ], [8 x %my_struct_1 ]* %r319, i32 0, i32 %r537
  %r322 = getelementptr %my_struct_1, %my_struct_1* %r321, i32 0, i32 0
  %r324 = getelementptr [7 x i32 ], [7 x i32 ]* %r322, i32 0, i32 %r541
  %r548 = load i32, i32* %r324
  %r549 = add i32 %r547, %r548
  %r550 = add i32 %r549, 0
  %r551 = add i32 %r541, 1
  %r552 = add i32 %r551, 0
  %r553 = icmp sge i32 %r552, %r505
  br i1 %r553, label %bb68, label %bb69

bb68:
  br label %bb67

bb69:
  br label %bb70

bb70:
  br label %bb65

bb67:
  %r554 = phi i32 [ %r540, %bb65 ], [ %r550, %bb68 ]
  %r555 = add i32 %r537, 1
  %r556 = add i32 %r555, 0
  %r557 = icmp sge i32 %r556, %r503
  br i1 %r557, label %bb71, label %bb72

bb71:
  br label %bb64

bb72:
  br label %bb73

bb73:
  br label %bb62

bb64:
  %r558 = phi i32 [ %r536, %bb62 ], [ %r554, %bb71 ]
  %r559 = add i32 %r533, 1
  %r560 = add i32 %r559, 0
  %r561 = icmp sge i32 %r560, %r501
  br i1 %r561, label %bb74, label %bb75

bb74:
  br label %bb61

bb75:
  br label %bb76

bb76:
  br label %bb59

bb61:
  %r562 = phi i32 [ %r532, %bb59 ], [ %r558, %bb74 ]
  %r563 = add i32 %r529, 1
  %r564 = add i32 %r563, 0
  %r565 = icmp sge i32 %r564, %r499
  br i1 %r565, label %bb77, label %bb78

bb77:
  br label %bb58

bb78:
  br label %bb79

bb79:
  br label %bb56

bb58:
  %r566 = phi i32 [ %r528, %bb56 ], [ %r562, %bb77 ]
  %r567 = add i32 %r525, 1
  %r568 = add i32 %r567, 0
  %r569 = icmp sge i32 %r568, %r497
  br i1 %r569, label %bb80, label %bb81

bb80:
  br label %bb55

bb81:
  br label %bb82

bb82:
  br label %bb53

bb55:
  %r570 = phi i32 [ %r524, %bb53 ], [ %r566, %bb80 ]
  %r571 = add i32 %r521, 1
  %r572 = add i32 %r571, 0
  %r573 = icmp sge i32 %r572, %r495
  br i1 %r573, label %bb83, label %bb84

bb83:
  br label %bb52

bb84:
  br label %bb85

bb85:
  br label %bb50

bb52:
  %r574 = phi i32 [ %r520, %bb50 ], [ %r570, %bb83 ]
  %r575 = add i32 %r517, 1
  %r576 = add i32 %r575, 0
  %r577 = icmp sge i32 %r576, %r493
  br i1 %r577, label %bb86, label %bb87

bb86:
  br label %bb49

bb87:
  br label %bb88

bb88:
  br label %bb47

bb49:
  %r578 = phi i32 [ %r516, %bb47 ], [ %r574, %bb86 ]
  ret i32 %r578
}

define i32 @main( ) {
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

