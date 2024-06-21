declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@M = global i32 0
@L = global i32 0
@N = global i32 0
define i32 @mul( i32* %r100, i32* %r101, i32* %r102, i32* %r103, i32* %r104, i32* %r105, i32* %r106, i32* %r107, i32* %r108 ) {
bb1:
  %r337 = add i32 0, 0
  %r338 = add i32 0, 0
  %r110 = getelementptr i32, i32* %r100, i32 0
  %r339 = load i32, i32* %r110
  %r112 = getelementptr i32, i32* %r103, i32 0
  %r340 = load i32, i32* %r112
  %r341 = mul i32 %r339, %r340
  %r115 = getelementptr i32, i32* %r100, i32 1
  %r342 = load i32, i32* %r115
  %r117 = getelementptr i32, i32* %r104, i32 0
  %r343 = load i32, i32* %r117
  %r344 = mul i32 %r342, %r343
  %r345 = add i32 %r341, %r344
  %r121 = getelementptr i32, i32* %r100, i32 2
  %r346 = load i32, i32* %r121
  %r123 = getelementptr i32, i32* %r105, i32 0
  %r347 = load i32, i32* %r123
  %r348 = mul i32 %r346, %r347
  %r349 = add i32 %r345, %r348
  %r127 = getelementptr i32, i32* %r106, i32 0
  store i32 %r349, i32* %r127
  %r128 = getelementptr i32, i32* %r100, i32 0
  %r350 = load i32, i32* %r128
  %r130 = getelementptr i32, i32* %r103, i32 1
  %r351 = load i32, i32* %r130
  %r352 = mul i32 %r350, %r351
  %r133 = getelementptr i32, i32* %r100, i32 1
  %r353 = load i32, i32* %r133
  %r135 = getelementptr i32, i32* %r104, i32 1
  %r354 = load i32, i32* %r135
  %r355 = mul i32 %r353, %r354
  %r356 = add i32 %r352, %r355
  %r139 = getelementptr i32, i32* %r100, i32 2
  %r357 = load i32, i32* %r139
  %r141 = getelementptr i32, i32* %r105, i32 1
  %r358 = load i32, i32* %r141
  %r359 = mul i32 %r357, %r358
  %r360 = add i32 %r356, %r359
  %r145 = getelementptr i32, i32* %r106, i32 1
  store i32 %r360, i32* %r145
  %r146 = getelementptr i32, i32* %r100, i32 0
  %r361 = load i32, i32* %r146
  %r148 = getelementptr i32, i32* %r103, i32 2
  %r362 = load i32, i32* %r148
  %r363 = mul i32 %r361, %r362
  %r151 = getelementptr i32, i32* %r100, i32 1
  %r364 = load i32, i32* %r151
  %r153 = getelementptr i32, i32* %r104, i32 2
  %r365 = load i32, i32* %r153
  %r366 = mul i32 %r364, %r365
  %r367 = add i32 %r363, %r366
  %r157 = getelementptr i32, i32* %r100, i32 2
  %r368 = load i32, i32* %r157
  %r159 = getelementptr i32, i32* %r105, i32 2
  %r369 = load i32, i32* %r159
  %r370 = mul i32 %r368, %r369
  %r371 = add i32 %r367, %r370
  %r163 = getelementptr i32, i32* %r106, i32 2
  store i32 %r371, i32* %r163
  %r164 = getelementptr i32, i32* %r101, i32 0
  %r372 = load i32, i32* %r164
  %r166 = getelementptr i32, i32* %r103, i32 0
  %r373 = load i32, i32* %r166
  %r374 = mul i32 %r372, %r373
  %r169 = getelementptr i32, i32* %r101, i32 1
  %r375 = load i32, i32* %r169
  %r171 = getelementptr i32, i32* %r104, i32 0
  %r376 = load i32, i32* %r171
  %r377 = mul i32 %r375, %r376
  %r378 = add i32 %r374, %r377
  %r175 = getelementptr i32, i32* %r101, i32 2
  %r379 = load i32, i32* %r175
  %r177 = getelementptr i32, i32* %r105, i32 0
  %r380 = load i32, i32* %r177
  %r381 = mul i32 %r379, %r380
  %r382 = add i32 %r378, %r381
  %r181 = getelementptr i32, i32* %r107, i32 0
  store i32 %r382, i32* %r181
  %r182 = getelementptr i32, i32* %r101, i32 0
  %r383 = load i32, i32* %r182
  %r184 = getelementptr i32, i32* %r103, i32 1
  %r384 = load i32, i32* %r184
  %r385 = mul i32 %r383, %r384
  %r187 = getelementptr i32, i32* %r101, i32 1
  %r386 = load i32, i32* %r187
  %r189 = getelementptr i32, i32* %r104, i32 1
  %r387 = load i32, i32* %r189
  %r388 = mul i32 %r386, %r387
  %r389 = add i32 %r385, %r388
  %r193 = getelementptr i32, i32* %r101, i32 2
  %r390 = load i32, i32* %r193
  %r195 = getelementptr i32, i32* %r105, i32 1
  %r391 = load i32, i32* %r195
  %r392 = mul i32 %r390, %r391
  %r393 = add i32 %r389, %r392
  %r199 = getelementptr i32, i32* %r107, i32 1
  store i32 %r393, i32* %r199
  %r200 = getelementptr i32, i32* %r101, i32 0
  %r394 = load i32, i32* %r200
  %r202 = getelementptr i32, i32* %r103, i32 2
  %r395 = load i32, i32* %r202
  %r396 = mul i32 %r394, %r395
  %r205 = getelementptr i32, i32* %r101, i32 1
  %r397 = load i32, i32* %r205
  %r207 = getelementptr i32, i32* %r104, i32 2
  %r398 = load i32, i32* %r207
  %r399 = mul i32 %r397, %r398
  %r400 = add i32 %r396, %r399
  %r211 = getelementptr i32, i32* %r101, i32 2
  %r401 = load i32, i32* %r211
  %r213 = getelementptr i32, i32* %r105, i32 2
  %r402 = load i32, i32* %r213
  %r403 = mul i32 %r401, %r402
  %r404 = add i32 %r400, %r403
  %r217 = getelementptr i32, i32* %r107, i32 2
  store i32 %r404, i32* %r217
  %r218 = getelementptr i32, i32* %r102, i32 0
  %r405 = load i32, i32* %r218
  %r220 = getelementptr i32, i32* %r103, i32 0
  %r406 = load i32, i32* %r220
  %r407 = mul i32 %r405, %r406
  %r223 = getelementptr i32, i32* %r102, i32 1
  %r408 = load i32, i32* %r223
  %r225 = getelementptr i32, i32* %r104, i32 0
  %r409 = load i32, i32* %r225
  %r410 = mul i32 %r408, %r409
  %r411 = add i32 %r407, %r410
  %r229 = getelementptr i32, i32* %r102, i32 2
  %r412 = load i32, i32* %r229
  %r231 = getelementptr i32, i32* %r105, i32 0
  %r413 = load i32, i32* %r231
  %r414 = mul i32 %r412, %r413
  %r415 = add i32 %r411, %r414
  %r235 = getelementptr i32, i32* %r108, i32 0
  store i32 %r415, i32* %r235
  %r236 = getelementptr i32, i32* %r102, i32 0
  %r416 = load i32, i32* %r236
  %r238 = getelementptr i32, i32* %r103, i32 1
  %r417 = load i32, i32* %r238
  %r418 = mul i32 %r416, %r417
  %r241 = getelementptr i32, i32* %r102, i32 1
  %r419 = load i32, i32* %r241
  %r243 = getelementptr i32, i32* %r104, i32 1
  %r420 = load i32, i32* %r243
  %r421 = mul i32 %r419, %r420
  %r422 = add i32 %r418, %r421
  %r247 = getelementptr i32, i32* %r102, i32 2
  %r423 = load i32, i32* %r247
  %r249 = getelementptr i32, i32* %r105, i32 1
  %r424 = load i32, i32* %r249
  %r425 = mul i32 %r423, %r424
  %r426 = add i32 %r422, %r425
  %r253 = getelementptr i32, i32* %r108, i32 1
  store i32 %r426, i32* %r253
  %r254 = getelementptr i32, i32* %r102, i32 0
  %r427 = load i32, i32* %r254
  %r256 = getelementptr i32, i32* %r103, i32 2
  %r428 = load i32, i32* %r256
  %r429 = mul i32 %r427, %r428
  %r259 = getelementptr i32, i32* %r102, i32 1
  %r430 = load i32, i32* %r259
  %r261 = getelementptr i32, i32* %r104, i32 2
  %r431 = load i32, i32* %r261
  %r432 = mul i32 %r430, %r431
  %r433 = add i32 %r429, %r432
  %r265 = getelementptr i32, i32* %r102, i32 2
  %r434 = load i32, i32* %r265
  %r267 = getelementptr i32, i32* %r105, i32 2
  %r435 = load i32, i32* %r267
  %r436 = mul i32 %r434, %r435
  %r437 = add i32 %r433, %r436
  %r271 = getelementptr i32, i32* %r108, i32 2
  store i32 %r437, i32* %r271
  ret i32 0
}

define i32 @main( ) {
bb2:
  %r438 = add i32 0, 0
  call void @_sysy_starttime(i32 97)
  store i32 3, i32* @N
  store i32 3, i32* @M
  store i32 3, i32* @L
  %r272 = alloca [ 3 x i32 ]
  %r273 = alloca [ 3 x i32 ]
  %r274 = alloca [ 3 x i32 ]
  %r275 = alloca [ 3 x i32 ]
  %r276 = alloca [ 3 x i32 ]
  %r277 = alloca [ 3 x i32 ]
  %r278 = alloca [ 6 x i32 ]
  %r279 = alloca [ 3 x i32 ]
  %r280 = alloca [ 3 x i32 ]
  %r439 = add i32 0, 0
  %r440 = add i32 0, 0
  br label %bb3

bb3:
  %r441 = phi i32 [ %r440, %bb2 ], [ %r445, %bb4 ]
  %r442 = load i32, i32* @M
  %r443 = icmp slt i32 %r441, %r442
  br i1 %r443, label %bb4, label %bb5

bb4:
  %r287 = getelementptr [3 x i32 ], [3 x i32 ]* %r272, i32 0, i32 %r441
  store i32 %r441, i32* %r287
  %r290 = getelementptr [3 x i32 ], [3 x i32 ]* %r273, i32 0, i32 %r441
  store i32 %r441, i32* %r290
  %r293 = getelementptr [3 x i32 ], [3 x i32 ]* %r274, i32 0, i32 %r441
  store i32 %r441, i32* %r293
  %r296 = getelementptr [3 x i32 ], [3 x i32 ]* %r275, i32 0, i32 %r441
  store i32 %r441, i32* %r296
  %r299 = getelementptr [3 x i32 ], [3 x i32 ]* %r276, i32 0, i32 %r441
  store i32 %r441, i32* %r299
  %r302 = getelementptr [3 x i32 ], [3 x i32 ]* %r277, i32 0, i32 %r441
  store i32 %r441, i32* %r302
  %r444 = add i32 %r441, 1
  %r445 = add i32 %r444, 0
  br label %bb3

bb5:
  %r446 = call i32 @mul(i32* %r272, i32* %r273, i32* %r274, i32* %r275, i32* %r276, i32* %r277, i32* %r278, i32* %r279, i32* %r280)
  %r447 = add i32 %r446, 0
  br label %bb6

bb6:
  %r448 = phi i32 [ %r447, %bb5 ], [ %r454, %bb7 ]
  %r449 = load i32, i32* @N
  %r450 = icmp slt i32 %r448, %r449
  br i1 %r450, label %bb7, label %bb8

bb7:
  %r311 = getelementptr [6 x i32 ], [6 x i32 ]* %r278, i32 0, i32 %r448
  %r451 = load i32, i32* %r311
  %r452 = add i32 %r451, 0
  call void @putint(i32 %r452)
  %r453 = add i32 %r448, 1
  %r454 = add i32 %r453, 0
  br label %bb6

bb8:
  %r455 = add i32 10, 0
  %r456 = add i32 0, 0
  call void @putch(i32 %r455)
  br label %bb9

bb9:
  %r457 = phi i32 [ %r456, %bb8 ], [ %r463, %bb10 ]
  %r458 = load i32, i32* @N
  %r459 = icmp slt i32 %r457, %r458
  br i1 %r459, label %bb10, label %bb11

bb10:
  %r321 = getelementptr [3 x i32 ], [3 x i32 ]* %r279, i32 0, i32 %r457
  %r460 = load i32, i32* %r321
  %r461 = add i32 %r460, 0
  call void @putint(i32 %r461)
  %r462 = add i32 %r457, 1
  %r463 = add i32 %r462, 0
  br label %bb9

bb11:
  %r464 = add i32 10, 0
  %r465 = add i32 0, 0
  call void @putch(i32 %r464)
  br label %bb12

bb12:
  %r466 = phi i32 [ %r465, %bb11 ], [ %r472, %bb13 ]
  %r467 = load i32, i32* @N
  %r468 = icmp slt i32 %r466, %r467
  br i1 %r468, label %bb13, label %bb14

bb13:
  %r331 = getelementptr [3 x i32 ], [3 x i32 ]* %r280, i32 0, i32 %r466
  %r469 = load i32, i32* %r331
  %r470 = add i32 %r469, 0
  call void @putint(i32 %r470)
  %r471 = add i32 %r466, 1
  %r472 = add i32 %r471, 0
  br label %bb12

bb14:
  %r473 = add i32 10, 0
  call void @putch(i32 %r473)
  call void @_sysy_stoptime(i32 117)
  ret i32 0
}

