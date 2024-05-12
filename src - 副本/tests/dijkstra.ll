declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@INF = global i32 65535
%array2D = type { [16 x i32 ] }
@e = global [ 16 x %array2D ] zeroinitializer
@book = global [ 16 x i32 ] zeroinitializer
@dis = global [ 16 x i32 ] zeroinitializer
@n = global i32 0
@m = global i32 0
@v1 = global i32 0
@v2 = global i32 0
@w = global i32 0
define void @Dijkstra( ) {
bb3:
  %r100 = alloca i32
  %r120 = alloca i32
  %r122 = alloca i32
  %r123 = alloca i32
  %r144 = alloca i32
  br label %bb1

bb1:
  store i32 1, i32* %r100
  br label %bb_while__18_5_cond

bb_while__18_5_cond:
  %r101 = load i32, i32* %r100
  %r102 = load i32, i32* @n
  %r103 = icmp sle i32 %r101, %r102
  br i1 %r103, label %bb_while__18_5_whilestms, label %bb_while__18_5_bre

bb_while__18_5_whilestms:
  %r104 = load i32, i32* %r100
  %r105 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r104
  %r106 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 1
  %r107 = getelementptr %array2D, %array2D* %r106, i32 0, i32 0
  %r108 = load i32, i32* %r100
  %r109 = getelementptr [16 x i32 ], [16 x i32 ]* %r107, i32 0, i32 %r108
  %r110 = load i32, i32* %r109
  store i32 %r110, i32* %r105
  %r111 = load i32, i32* %r100
  %r112 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 %r111
  store i32 0, i32* %r112
  %r113 = load i32, i32* %r100
  %r114 = add i32 %r113, 1
  store i32 %r114, i32* %r100
  br label %bb_while__18_5_cond

bb_while__18_5_bre:
  %r115 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 1
  store i32 1, i32* %r115
  store i32 1, i32* %r100
  br label %bb_while__26_5_cond

bb_while__26_5_cond:
  %r116 = load i32, i32* %r100
  %r117 = load i32, i32* @n
  %r118 = sub i32 %r117, 1
  %r119 = icmp sle i32 %r116, %r118
  br i1 %r119, label %bb_while__26_5_whilestms, label %bb_while__26_5_bre

bb_while__26_5_whilestms:
  %r121 = load i32, i32* @INF
  store i32 %r121, i32* %r120
  store i32 0, i32* %r122
  store i32 1, i32* %r123
  br label %bb_while__30_9_cond

bb_while__30_9_cond:
  %r124 = load i32, i32* %r123
  %r125 = load i32, i32* @n
  %r126 = icmp sle i32 %r124, %r125
  br i1 %r126, label %bb_while__30_9_whilestms, label %bb_while__30_9_bre

bb_while__30_9_whilestms:
  %r127 = load i32, i32* %r120
  %r128 = load i32, i32* %r123
  %r129 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r128
  %r130 = load i32, i32* %r129
  %r131 = icmp sgt i32 %r127, %r130
  br i1 %r131, label %bb_31_37checksecond, label %bb_if__31_13_false

bb_31_37checksecond:
  %r132 = load i32, i32* %r123
  %r133 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 %r132
  %r134 = load i32, i32* %r133
  %r135 = icmp eq i32 %r134, 0
  br i1 %r135, label %bb_if__31_13_true, label %bb_if__31_13_false

bb_if__31_13_true:
  %r136 = load i32, i32* %r123
  %r137 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r136
  %r138 = load i32, i32* %r137
  store i32 %r138, i32* %r120
  %r139 = load i32, i32* %r123
  store i32 %r139, i32* %r122
  br label %bb_if__31_13_end

bb_if__31_13_false:
  br label %bb_if__31_13_end

bb_if__31_13_end:
  %r140 = load i32, i32* %r123
  %r141 = add i32 %r140, 1
  store i32 %r141, i32* %r123
  br label %bb_while__30_9_cond

bb_while__30_9_bre:
  %r142 = load i32, i32* %r122
  %r143 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 %r142
  store i32 1, i32* %r143
  store i32 1, i32* %r144
  br label %bb_while__39_9_cond

bb_while__39_9_cond:
  %r145 = load i32, i32* %r144
  %r146 = load i32, i32* @n
  %r147 = icmp sle i32 %r145, %r146
  br i1 %r147, label %bb_while__39_9_whilestms, label %bb_while__39_9_bre

bb_while__39_9_whilestms:
  %r148 = load i32, i32* %r122
  %r149 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r148
  %r150 = getelementptr %array2D, %array2D* %r149, i32 0, i32 0
  %r151 = load i32, i32* %r144
  %r152 = getelementptr [16 x i32 ], [16 x i32 ]* %r150, i32 0, i32 %r151
  %r153 = load i32, i32* %r152
  %r154 = load i32, i32* @INF
  %r155 = icmp slt i32 %r153, %r154
  br i1 %r155, label %bb_if__40_13_true, label %bb_if__40_13_false

bb_if__40_13_true:
  %r156 = load i32, i32* %r144
  %r157 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r156
  %r158 = load i32, i32* %r157
  %r159 = load i32, i32* %r122
  %r160 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r159
  %r161 = load i32, i32* %r160
  %r162 = load i32, i32* %r122
  %r163 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r162
  %r164 = getelementptr %array2D, %array2D* %r163, i32 0, i32 0
  %r165 = load i32, i32* %r144
  %r166 = getelementptr [16 x i32 ], [16 x i32 ]* %r164, i32 0, i32 %r165
  %r167 = load i32, i32* %r166
  %r168 = add i32 %r161, %r167
  %r169 = icmp sgt i32 %r158, %r168
  br i1 %r169, label %bb_if__41_17_true, label %bb_if__41_17_false

bb_if__41_17_true:
  %r170 = load i32, i32* %r144
  %r171 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r170
  %r172 = load i32, i32* %r122
  %r173 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r172
  %r174 = load i32, i32* %r173
  %r175 = load i32, i32* %r122
  %r176 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r175
  %r177 = getelementptr %array2D, %array2D* %r176, i32 0, i32 0
  %r178 = load i32, i32* %r144
  %r179 = getelementptr [16 x i32 ], [16 x i32 ]* %r177, i32 0, i32 %r178
  %r180 = load i32, i32* %r179
  %r181 = add i32 %r174, %r180
  store i32 %r181, i32* %r171
  br label %bb_if__41_17_end

bb_if__41_17_false:
  br label %bb_if__41_17_end

bb_if__41_17_end:
  br label %bb_if__40_13_end

bb_if__40_13_false:
  br label %bb_if__40_13_end

bb_if__40_13_end:
  %r182 = load i32, i32* %r144
  %r183 = add i32 %r182, 1
  store i32 %r183, i32* %r144
  br label %bb_while__39_9_cond

bb_while__39_9_bre:
  %r184 = load i32, i32* %r100
  %r185 = add i32 %r184, 1
  store i32 %r185, i32* %r100
  br label %bb_while__26_5_cond

bb_while__26_5_bre:
  ret void
}

define i32 @main( ) {
bb4:
  %r186 = alloca i32
  %r192 = alloca i32
  %r217 = alloca i32
  %r219 = alloca i32
  br label %bb2

bb2:
  %r187 = call i32 @getint()
  store i32 %r187, i32* @n
  %r188 = call i32 @getint()
  store i32 %r188, i32* @m
  store i32 1, i32* %r186
  br label %bb_while__58_5_cond

bb_while__58_5_cond:
  %r189 = load i32, i32* %r186
  %r190 = load i32, i32* @n
  %r191 = icmp sle i32 %r189, %r190
  br i1 %r191, label %bb_while__58_5_whilestms, label %bb_while__58_5_bre

bb_while__58_5_whilestms:
  store i32 1, i32* %r192
  br label %bb_while__60_9_cond

bb_while__60_9_cond:
  %r193 = load i32, i32* %r192
  %r194 = load i32, i32* @n
  %r195 = icmp sle i32 %r193, %r194
  br i1 %r195, label %bb_while__60_9_whilestms, label %bb_while__60_9_bre

bb_while__60_9_whilestms:
  %r196 = load i32, i32* %r186
  %r197 = load i32, i32* %r192
  %r198 = icmp eq i32 %r196, %r197
  br i1 %r198, label %bb_if__61_13_true, label %bb_if__61_13_false

bb_if__61_13_true:
  %r199 = load i32, i32* %r186
  %r200 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r199
  %r201 = getelementptr %array2D, %array2D* %r200, i32 0, i32 0
  %r202 = load i32, i32* %r192
  %r203 = getelementptr [16 x i32 ], [16 x i32 ]* %r201, i32 0, i32 %r202
  store i32 0, i32* %r203
  br label %bb_if__61_13_end

bb_if__61_13_false:
  %r204 = load i32, i32* %r186
  %r205 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r204
  %r206 = getelementptr %array2D, %array2D* %r205, i32 0, i32 0
  %r207 = load i32, i32* %r192
  %r208 = getelementptr [16 x i32 ], [16 x i32 ]* %r206, i32 0, i32 %r207
  %r209 = load i32, i32* @INF
  store i32 %r209, i32* %r208
  br label %bb_if__61_13_end

bb_if__61_13_end:
  %r210 = load i32, i32* %r192
  %r211 = add i32 %r210, 1
  store i32 %r211, i32* %r192
  br label %bb_while__60_9_cond

bb_while__60_9_bre:
  %r212 = load i32, i32* %r186
  %r213 = add i32 %r212, 1
  store i32 %r213, i32* %r186
  br label %bb_while__58_5_cond

bb_while__58_5_bre:
  store i32 1, i32* %r186
  br label %bb_while__75_5_cond

bb_while__75_5_cond:
  %r214 = load i32, i32* %r186
  %r215 = load i32, i32* @m
  %r216 = icmp sle i32 %r214, %r215
  br i1 %r216, label %bb_while__75_5_whilestms, label %bb_while__75_5_bre

bb_while__75_5_whilestms:
  %r218 = call i32 @getint()
  store i32 %r218, i32* %r217
  %r220 = call i32 @getint()
  store i32 %r220, i32* %r219
  %r221 = load i32, i32* %r217
  %r222 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r221
  %r223 = getelementptr %array2D, %array2D* %r222, i32 0, i32 0
  %r224 = load i32, i32* %r219
  %r225 = getelementptr [16 x i32 ], [16 x i32 ]* %r223, i32 0, i32 %r224
  %r226 = call i32 @getint()
  store i32 %r226, i32* %r225
  %r227 = load i32, i32* %r186
  %r228 = add i32 %r227, 1
  store i32 %r228, i32* %r186
  br label %bb_while__75_5_cond

bb_while__75_5_bre:
  call void @Dijkstra()
  store i32 1, i32* %r186
  br label %bb_while__85_5_cond

bb_while__85_5_cond:
  %r229 = load i32, i32* %r186
  %r230 = load i32, i32* @n
  %r231 = icmp sle i32 %r229, %r230
  br i1 %r231, label %bb_while__85_5_whilestms, label %bb_while__85_5_bre

bb_while__85_5_whilestms:
  %r232 = load i32, i32* %r186
  %r233 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r232
  %r234 = load i32, i32* %r233
  call void @putint(i32 %r234)
  call void @putch(i32 32)
  %r235 = load i32, i32* %r186
  %r236 = add i32 %r235, 1
  store i32 %r236, i32* %r186
  br label %bb_while__85_5_cond

bb_while__85_5_bre:
  call void @putch(i32 10)
  ret i32 0
}

