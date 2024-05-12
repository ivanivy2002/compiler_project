declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@TAPE_LEN = global i32 65536
@BUFFER_LEN = global i32 32768
@tape = global [ 65536 x i32 ] zeroinitializer
@program = global [ 32768 x i32 ] zeroinitializer
@ptr = global i32 0
define void @read_program( ) {
bb4:
  %r100 = alloca i32
  %r101 = alloca i32
  br label %bb1

bb1:
  store i32 0, i32* %r100
  %r102 = call i32 @getint()
  store i32 %r102, i32* %r101
  br label %bb_while__17_3_cond

bb_while__17_3_cond:
  %r103 = load i32, i32* %r100
  %r104 = load i32, i32* %r101
  %r105 = icmp slt i32 %r103, %r104
  br i1 %r105, label %bb_while__17_3_whilestms, label %bb_while__17_3_bre

bb_while__17_3_whilestms:
  %r106 = load i32, i32* %r100
  %r107 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32 0, i32 %r106
  %r108 = call i32 @getch()
  store i32 %r108, i32* %r107
  %r109 = load i32, i32* %r100
  %r110 = add i32 %r109, 1
  store i32 %r110, i32* %r100
  br label %bb_while__17_3_cond

bb_while__17_3_bre:
  %r111 = load i32, i32* %r100
  %r112 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32 0, i32 %r111
  store i32 0, i32* %r112
  ret void
}

define void @interpret( i32* %r113 ) {
bb5:
  %r114 = alloca i32
  %r115 = alloca i32
  %r116 = alloca i32
  br label %bb2

bb2:
  store i32 0, i32* %r116
  br label %bb_while__29_3_cond

bb_while__29_3_cond:
  %r117 = load i32, i32* %r116
  %r118 = getelementptr [65536 x i32 ], [65536 x i32 ]* %r113, i32 0, i32 %r117
  %r119 = load i32, i32* %r118
  %r120 = icmp ne i32 %r119, 0
  br i1 %r120, label %bb_while__29_3_whilestms, label %bb_while__29_3_bre

bb_while__29_3_whilestms:
  %r121 = load i32, i32* %r116
  %r122 = getelementptr [65536 x i32 ], [65536 x i32 ]* %r113, i32 0, i32 %r121
  %r123 = load i32, i32* %r122
  store i32 %r123, i32* %r114
  %r124 = load i32, i32* %r114
  %r125 = icmp eq i32 %r124, 62
  br i1 %r125, label %bb_if__31_5_true, label %bb_if__31_5_false

bb_if__31_5_true:
  %r126 = load i32, i32* @ptr
  %r127 = add i32 %r126, 1
  store i32 %r127, i32* @ptr
  br label %bb_if__31_5_end

bb_if__31_5_false:
  br label %bb_if__31_5_end

bb_if__31_5_end:
  %r128 = load i32, i32* %r114
  %r129 = icmp eq i32 %r128, 60
  br i1 %r129, label %bb_if__35_5_true, label %bb_if__35_5_false

bb_if__35_5_true:
  %r130 = load i32, i32* @ptr
  %r131 = sub i32 %r130, 1
  store i32 %r131, i32* @ptr
  br label %bb_if__35_5_end

bb_if__35_5_false:
  br label %bb_if__35_5_end

bb_if__35_5_end:
  %r132 = load i32, i32* %r114
  %r133 = icmp eq i32 %r132, 43
  br i1 %r133, label %bb_if__39_5_true, label %bb_if__39_5_false

bb_if__39_5_true:
  %r134 = load i32, i32* @ptr
  %r135 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r134
  %r136 = load i32, i32* @ptr
  %r137 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r136
  %r138 = load i32, i32* %r137
  %r139 = add i32 %r138, 1
  store i32 %r139, i32* %r135
  br label %bb_if__39_5_end

bb_if__39_5_false:
  br label %bb_if__39_5_end

bb_if__39_5_end:
  %r140 = load i32, i32* %r114
  %r141 = icmp eq i32 %r140, 45
  br i1 %r141, label %bb_if__43_5_true, label %bb_if__43_5_false

bb_if__43_5_true:
  %r142 = load i32, i32* @ptr
  %r143 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r142
  %r144 = load i32, i32* @ptr
  %r145 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r144
  %r146 = load i32, i32* %r145
  %r147 = sub i32 %r146, 1
  store i32 %r147, i32* %r143
  br label %bb_if__43_5_end

bb_if__43_5_false:
  br label %bb_if__43_5_end

bb_if__43_5_end:
  %r148 = load i32, i32* %r114
  %r149 = icmp eq i32 %r148, 46
  br i1 %r149, label %bb_if__47_5_true, label %bb_if__47_5_false

bb_if__47_5_true:
  %r150 = load i32, i32* @ptr
  %r151 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r150
  %r152 = load i32, i32* %r151
  call void @putch(i32 %r152)
  br label %bb_if__47_5_end

bb_if__47_5_false:
  br label %bb_if__47_5_end

bb_if__47_5_end:
  %r153 = load i32, i32* %r114
  %r154 = icmp eq i32 %r153, 44
  br i1 %r154, label %bb_if__51_5_true, label %bb_if__51_5_false

bb_if__51_5_true:
  %r155 = load i32, i32* @ptr
  %r156 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r155
  %r157 = call i32 @getch()
  store i32 %r157, i32* %r156
  br label %bb_if__51_5_end

bb_if__51_5_false:
  br label %bb_if__51_5_end

bb_if__51_5_end:
  %r158 = load i32, i32* %r114
  %r159 = icmp eq i32 %r158, 93
  br i1 %r159, label %bb_55_27checksecond, label %bb_if__55_5_false

bb_55_27checksecond:
  %r160 = load i32, i32* @ptr
  %r161 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r160
  %r162 = load i32, i32* %r161
  %r163 = icmp ne i32 %r162, 0
  br i1 %r163, label %bb_if__55_5_true, label %bb_if__55_5_false

bb_if__55_5_true:
  store i32 1, i32* %r115
  br label %bb_while__58_7_cond

bb_while__58_7_cond:
  %r164 = load i32, i32* %r115
  %r165 = icmp sgt i32 %r164, 0
  br i1 %r165, label %bb_while__58_7_whilestms, label %bb_while__58_7_bre

bb_while__58_7_whilestms:
  %r166 = load i32, i32* %r116
  %r167 = sub i32 %r166, 1
  store i32 %r167, i32* %r116
  %r168 = load i32, i32* %r116
  %r169 = getelementptr [65536 x i32 ], [65536 x i32 ]* %r113, i32 0, i32 %r168
  %r170 = load i32, i32* %r169
  store i32 %r170, i32* %r114
  %r171 = load i32, i32* %r114
  %r172 = icmp eq i32 %r171, 91
  br i1 %r172, label %bb_if__61_9_true, label %bb_if__61_9_false

bb_if__61_9_true:
  %r173 = load i32, i32* %r115
  %r174 = sub i32 %r173, 1
  store i32 %r174, i32* %r115
  br label %bb_if__61_9_end

bb_if__61_9_false:
  br label %bb_if__61_9_end

bb_if__61_9_end:
  %r175 = load i32, i32* %r114
  %r176 = icmp eq i32 %r175, 93
  br i1 %r176, label %bb_if__65_9_true, label %bb_if__65_9_false

bb_if__65_9_true:
  %r177 = load i32, i32* %r115
  %r178 = add i32 %r177, 1
  store i32 %r178, i32* %r115
  br label %bb_if__65_9_end

bb_if__65_9_false:
  br label %bb_if__65_9_end

bb_if__65_9_end:
  br label %bb_while__58_7_cond

bb_while__58_7_bre:
  br label %bb_if__55_5_end

bb_if__55_5_false:
  br label %bb_if__55_5_end

bb_if__55_5_end:
  %r179 = load i32, i32* %r116
  %r180 = add i32 %r179, 1
  store i32 %r180, i32* %r116
  br label %bb_while__29_3_cond

bb_while__29_3_bre:
  ret void
}

define i32 @main( ) {
bb6:
  br label %bb3

bb3:
  call void @read_program()
  %r181 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32 0, i32 0
  call void @interpret(i32* %r181)
  call void @putch(i32 10)
  ret i32 0
}

