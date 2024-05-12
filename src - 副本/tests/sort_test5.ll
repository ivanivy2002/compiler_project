declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@n = global i32 0
define i32 @swap( i32* %r100, i32 %r101, i32 %r103 ) {
bb5:
  %r102 = alloca i32
  %r104 = alloca i32
  %r105 = alloca i32
  br label %bb1

bb1:
  store i32 %r101, i32* %r102
  store i32 %r103, i32* %r104
  %r106 = load i32, i32* %r102
  %r107 = getelementptr [10 x i32 ], [10 x i32 ]* %r100, i32 0, i32 %r106
  %r108 = load i32, i32* %r107
  store i32 %r108, i32* %r105
  %r109 = load i32, i32* %r102
  %r110 = getelementptr [10 x i32 ], [10 x i32 ]* %r100, i32 0, i32 %r109
  %r111 = load i32, i32* %r104
  %r112 = getelementptr [10 x i32 ], [10 x i32 ]* %r100, i32 0, i32 %r111
  %r113 = load i32, i32* %r112
  store i32 %r113, i32* %r110
  %r114 = load i32, i32* %r104
  %r115 = getelementptr [10 x i32 ], [10 x i32 ]* %r100, i32 0, i32 %r114
  %r116 = load i32, i32* %r105
  store i32 %r116, i32* %r115
  ret i32 0
}

define i32 @heap_ajust( i32* %r117, i32 %r118, i32 %r120 ) {
bb6:
  %r119 = alloca i32
  %r121 = alloca i32
  %r122 = alloca i32
  %r124 = alloca i32
  %r132 = alloca i32
  br label %bb2

bb2:
  store i32 %r118, i32* %r119
  store i32 %r120, i32* %r121
  %r123 = load i32, i32* %r119
  store i32 %r123, i32* %r122
  %r125 = load i32, i32* %r122
  %r126 = mul i32 %r125, 2
  %r127 = add i32 %r126, 1
  store i32 %r127, i32* %r124
  br label %bb_while__14_5_cond

bb_while__14_5_cond:
  %r128 = load i32, i32* %r124
  %r129 = load i32, i32* %r121
  %r130 = add i32 %r129, 1
  %r131 = icmp slt i32 %r128, %r130
  br i1 %r131, label %bb_while__14_5_whilestms, label %bb_while__14_5_bre

bb_while__14_5_whilestms:
  %r133 = load i32, i32* %r124
  %r134 = add i32 %r133, 1
  store i32 %r134, i32* %r132
  %r135 = load i32, i32* %r124
  %r136 = load i32, i32* %r121
  %r137 = icmp slt i32 %r135, %r136
  br i1 %r137, label %bb_16_26checksecond, label %bb_if__16_9_false

bb_16_26checksecond:
  %r138 = load i32, i32* %r124
  %r139 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r138
  %r140 = load i32, i32* %r139
  %r141 = load i32, i32* %r132
  %r142 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r141
  %r143 = load i32, i32* %r142
  %r144 = icmp slt i32 %r140, %r143
  br i1 %r144, label %bb_if__16_9_true, label %bb_if__16_9_false

bb_if__16_9_true:
  %r145 = load i32, i32* %r124
  %r146 = add i32 %r145, 1
  store i32 %r146, i32* %r124
  br label %bb_if__16_9_end

bb_if__16_9_false:
  br label %bb_if__16_9_end

bb_if__16_9_end:
  %r147 = load i32, i32* %r122
  %r148 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r147
  %r149 = load i32, i32* %r148
  %r150 = load i32, i32* %r124
  %r151 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r150
  %r152 = load i32, i32* %r151
  %r153 = icmp sgt i32 %r149, %r152
  br i1 %r153, label %bb_if__18_9_true, label %bb_if__18_9_false

bb_if__18_9_true:
  ret i32 0
bb_if__18_9_false:
  %r154 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 0
  %r155 = load i32, i32* %r122
  %r156 = load i32, i32* %r124
  %r157 = call i32 @swap(i32* %r154, i32 %r155, i32 %r156)
  store i32 %r157, i32* %r122
  %r158 = load i32, i32* %r124
  store i32 %r158, i32* %r122
  %r159 = load i32, i32* %r122
  %r160 = mul i32 %r159, 2
  %r161 = add i32 %r160, 1
  store i32 %r161, i32* %r124
  br label %bb_if__18_9_end

bb_if__18_9_end:
  br label %bb_while__14_5_cond

bb_while__14_5_bre:
  ret i32 0
}

define i32 @heap_sort( i32* %r162, i32 %r163 ) {
bb7:
  %r164 = alloca i32
  %r165 = alloca i32
  %r166 = alloca i32
  %r185 = alloca i32
  br label %bb3

bb3:
  store i32 %r163, i32* %r164
  %r167 = load i32, i32* %r164
  %r168 = sdiv i32 %r167, 2
  %r169 = sub i32 %r168, 1
  store i32 %r169, i32* %r165
  br label %bb_while__32_5_cond

bb_while__32_5_cond:
  %r170 = load i32, i32* %r165
  %r171 = sub i32 0, 1
  %r172 = icmp sgt i32 %r170, %r171
  br i1 %r172, label %bb_while__32_5_whilestms, label %bb_while__32_5_bre

bb_while__32_5_whilestms:
  %r173 = load i32, i32* %r164
  %r174 = sub i32 %r173, 1
  store i32 %r174, i32* %r166
  %r175 = getelementptr [10 x i32 ], [10 x i32 ]* %r162, i32 0, i32 0
  %r176 = load i32, i32* %r165
  %r177 = load i32, i32* %r166
  %r178 = call i32 @heap_ajust(i32* %r175, i32 %r176, i32 %r177)
  store i32 %r178, i32* %r166
  %r179 = load i32, i32* %r165
  %r180 = sub i32 %r179, 1
  store i32 %r180, i32* %r165
  br label %bb_while__32_5_cond

bb_while__32_5_bre:
  %r181 = load i32, i32* %r164
  %r182 = sub i32 %r181, 1
  store i32 %r182, i32* %r165
  br label %bb_while__38_5_cond

bb_while__38_5_cond:
  %r183 = load i32, i32* %r165
  %r184 = icmp sgt i32 %r183, 0
  br i1 %r184, label %bb_while__38_5_whilestms, label %bb_while__38_5_bre

bb_while__38_5_whilestms:
  store i32 0, i32* %r185
  %r186 = getelementptr [10 x i32 ], [10 x i32 ]* %r162, i32 0, i32 0
  %r187 = load i32, i32* %r185
  %r188 = load i32, i32* %r165
  %r189 = call i32 @swap(i32* %r186, i32 %r187, i32 %r188)
  store i32 %r189, i32* %r166
  %r190 = load i32, i32* %r165
  %r191 = sub i32 %r190, 1
  store i32 %r191, i32* %r166
  %r192 = getelementptr [10 x i32 ], [10 x i32 ]* %r162, i32 0, i32 0
  %r193 = load i32, i32* %r185
  %r194 = load i32, i32* %r166
  %r195 = call i32 @heap_ajust(i32* %r192, i32 %r193, i32 %r194)
  store i32 %r195, i32* %r166
  %r196 = load i32, i32* %r165
  %r197 = sub i32 %r196, 1
  store i32 %r197, i32* %r165
  br label %bb_while__38_5_cond

bb_while__38_5_bre:
  ret i32 0
}

define i32 @main( ) {
bb8:
  %r198 = alloca [ 10 x i32 ]
  %r209 = alloca i32
  %r216 = alloca i32
  br label %bb4

bb4:
  store i32 10, i32* @n
  %r199 = getelementptr [10 x i32 ], [10 x i32 ]* %r198, i32 0, i32 0
  store i32 4, i32* %r199
  %r200 = getelementptr [10 x i32 ], [10 x i32 ]* %r198, i32 0, i32 1
  store i32 3, i32* %r200
  %r201 = getelementptr [10 x i32 ], [10 x i32 ]* %r198, i32 0, i32 2
  store i32 9, i32* %r201
  %r202 = getelementptr [10 x i32 ], [10 x i32 ]* %r198, i32 0, i32 3
  store i32 2, i32* %r202
  %r203 = getelementptr [10 x i32 ], [10 x i32 ]* %r198, i32 0, i32 4
  store i32 0, i32* %r203
  %r204 = getelementptr [10 x i32 ], [10 x i32 ]* %r198, i32 0, i32 5
  store i32 1, i32* %r204
  %r205 = getelementptr [10 x i32 ], [10 x i32 ]* %r198, i32 0, i32 6
  store i32 6, i32* %r205
  %r206 = getelementptr [10 x i32 ], [10 x i32 ]* %r198, i32 0, i32 7
  store i32 5, i32* %r206
  %r207 = getelementptr [10 x i32 ], [10 x i32 ]* %r198, i32 0, i32 8
  store i32 7, i32* %r207
  %r208 = getelementptr [10 x i32 ], [10 x i32 ]* %r198, i32 0, i32 9
  store i32 8, i32* %r208
  store i32 0, i32* %r209
  %r210 = getelementptr [10 x i32 ], [10 x i32 ]* %r198, i32 0, i32 0
  %r211 = load i32, i32* @n
  %r212 = call i32 @heap_sort(i32* %r210, i32 %r211)
  store i32 %r212, i32* %r209
  br label %bb_while__57_5_cond

bb_while__57_5_cond:
  %r213 = load i32, i32* %r209
  %r214 = load i32, i32* @n
  %r215 = icmp slt i32 %r213, %r214
  br i1 %r215, label %bb_while__57_5_whilestms, label %bb_while__57_5_bre

bb_while__57_5_whilestms:
  %r217 = load i32, i32* %r209
  %r218 = getelementptr [10 x i32 ], [10 x i32 ]* %r198, i32 0, i32 %r217
  %r219 = load i32, i32* %r218
  store i32 %r219, i32* %r216
  %r220 = load i32, i32* %r216
  call void @putint(i32 %r220)
  store i32 10, i32* %r216
  %r221 = load i32, i32* %r216
  call void @putch(i32 %r221)
  %r222 = load i32, i32* %r209
  %r223 = add i32 %r222, 1
  store i32 %r223, i32* %r209
  br label %bb_while__57_5_cond

bb_while__57_5_bre:
  ret i32 0
}

