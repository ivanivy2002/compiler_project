declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @mod( i32 %r100, i32 %r102 ) {
bb4:
  %r101 = alloca i32
  %r103 = alloca i32
  br label %bb1

bb1:
  store i32 %r100, i32* %r101
  store i32 %r102, i32* %r103
  %r104 = load i32, i32* %r101
  %r105 = load i32, i32* %r101
  %r106 = load i32, i32* %r103
  %r107 = sdiv i32 %r105, %r106
  %r108 = load i32, i32* %r103
  %r109 = mul i32 %r107, %r108
  %r110 = sub i32 %r104, %r109
  ret i32 %r110
}

define i32 @palindrome( i32 %r111 ) {
bb5:
  %r112 = alloca i32
  %r113 = alloca [ 4 x i32 ]
  %r114 = alloca i32
  %r115 = alloca i32
  br label %bb2

bb2:
  store i32 %r111, i32* %r112
  store i32 0, i32* %r114
  br label %bb_while__12_5_cond

bb_while__12_5_cond:
  %r116 = load i32, i32* %r114
  %r117 = icmp slt i32 %r116, 4
  br i1 %r117, label %bb_while__12_5_whilestms, label %bb_while__12_5_bre

bb_while__12_5_whilestms:
  %r118 = load i32, i32* %r114
  %r119 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 %r118
  %r120 = load i32, i32* %r112
  %r121 = call i32 @mod(i32 %r120, i32 10)
  store i32 %r121, i32* %r119
  %r122 = load i32, i32* %r112
  %r123 = sdiv i32 %r122, 10
  store i32 %r123, i32* %r112
  %r124 = load i32, i32* %r114
  %r125 = add i32 %r124, 1
  store i32 %r125, i32* %r114
  br label %bb_while__12_5_cond

bb_while__12_5_bre:
  %r126 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 0
  %r127 = load i32, i32* %r126
  %r128 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 3
  %r129 = load i32, i32* %r128
  %r130 = icmp eq i32 %r127, %r129
  br i1 %r130, label %bb_19_22checksecond, label %bb_if__19_5_false

bb_19_22checksecond:
  %r131 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 1
  %r132 = load i32, i32* %r131
  %r133 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 2
  %r134 = load i32, i32* %r133
  %r135 = icmp eq i32 %r132, %r134
  br i1 %r135, label %bb_if__19_5_true, label %bb_if__19_5_false

bb_if__19_5_true:
  store i32 1, i32* %r115
  br label %bb_if__19_5_end

bb_if__19_5_false:
  store i32 0, i32* %r115
  br label %bb_if__19_5_end

bb_if__19_5_end:
  %r136 = load i32, i32* %r115
  ret i32 %r136
}

define i32 @main( ) {
bb6:
  %r137 = alloca i32
  %r138 = alloca i32
  br label %bb3

bb3:
  store i32 1221, i32* %r137
  %r139 = load i32, i32* %r137
  %r140 = call i32 @palindrome(i32 %r139)
  store i32 %r140, i32* %r138
  %r141 = load i32, i32* %r138
  %r142 = icmp eq i32 %r141, 1
  br i1 %r142, label %bb_if__34_5_true, label %bb_if__34_5_false

bb_if__34_5_true:
  %r143 = load i32, i32* %r137
  call void @putint(i32 %r143)
  br label %bb_if__34_5_end

bb_if__34_5_false:
  store i32 0, i32* %r138
  %r144 = load i32, i32* %r138
  call void @putint(i32 %r144)
  br label %bb_if__34_5_end

bb_if__34_5_end:
  store i32 10, i32* %r138
  %r145 = load i32, i32* %r138
  call void @putch(i32 %r145)
  ret i32 0
}

