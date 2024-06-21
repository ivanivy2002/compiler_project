declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@base = global i32 16
@a = global [ 30000010 x i32 ] zeroinitializer
@ans = global i32 0
define i32 @getMaxNum( i32 %r100, i32* %r102 ) {
bb1:
  %r375 = add i32 0, 0
  %r376 = add i32 %r100, 0
  %r377 = add i32 0, 0
  %r378 = add i32 0, 0
  %r379 = add i32 0, 0
  %r380 = add i32 0, 0
  br label %bb2

bb2:
  %r381 = phi i32 [ %r380, %bb1 ], [ %r390, %bb7 ]
  %r382 = phi i32 [ %r378, %bb1 ], [ %r388, %bb7 ]
  %r383 = icmp slt i32 %r381, %r376
  br i1 %r383, label %bb3, label %bb4

bb3:
  %r109 = getelementptr i32, i32* %r102, i32 %r381
  %r384 = load i32, i32* %r109
  %r385 = icmp sgt i32 %r384, %r382
  br i1 %r385, label %bb5, label %bb6

bb5:
  %r114 = getelementptr i32, i32* %r102, i32 %r381
  %r386 = load i32, i32* %r114
  %r387 = add i32 %r386, 0
  br label %bb7

bb6:
  br label %bb7

bb7:
  %r388 = phi i32 [ %r387, %bb5 ], [ %r382, %bb6 ]
  %r389 = add i32 %r381, 1
  %r390 = add i32 %r389, 0
  br label %bb2

bb4:
  ret i32 %r382
}

define i32 @getNumPos( i32 %r119, i32 %r121 ) {
bb8:
  %r391 = add i32 0, 0
  %r392 = add i32 %r119, 0
  %r393 = add i32 0, 0
  %r394 = add i32 %r121, 0
  %r395 = add i32 0, 0
  %r396 = add i32 1, 0
  %r397 = add i32 0, 0
  %r398 = add i32 0, 0
  br label %bb9

bb9:
  %r399 = phi i32 [ %r392, %bb8 ], [ %r404, %bb10 ]
  %r400 = phi i32 [ %r398, %bb8 ], [ %r406, %bb10 ]
  %r401 = icmp slt i32 %r400, %r394
  br i1 %r401, label %bb10, label %bb11

bb10:
  %r402 = load i32, i32* @base
  %r403 = sdiv i32 %r399, %r402
  %r404 = add i32 %r403, 0
  %r405 = add i32 %r400, 1
  %r406 = add i32 %r405, 0
  br label %bb9

bb11:
  %r407 = load i32, i32* @base
  %r408 = sdiv i32 %r399, %r407
  %r409 = load i32, i32* @base
  %r410 = mul i32 %r408, %r409
  %r411 = sub i32 %r399, %r410
  ret i32 %r411
}

define void @radixSort( i32 %r140, i32* %r142, i32 %r143, i32 %r145 ) {
bb12:
  %r412 = add i32 0, 0
  %r413 = add i32 0, 0
  %r414 = add i32 0, 0
  %r415 = add i32 0, 0
  %r416 = add i32 0, 0
  %r417 = add i32 0, 0
  %r418 = add i32 0, 0
  %r419 = add i32 0, 0
  %r420 = add i32 0, 0
  %r421 = add i32 0, 0
  %r422 = add i32 0, 0
  %r423 = add i32 0, 0
  %r424 = add i32 %r140, 0
  %r425 = add i32 0, 0
  %r426 = add i32 %r143, 0
  %r427 = add i32 0, 0
  %r428 = add i32 %r145, 0
  %r147 = alloca [ 16 x i32 ]
  %r148 = alloca [ 16 x i32 ]
  %r149 = alloca [ 16 x i32 ]
  %r429 = add i32 0, 0
  %r430 = add i32 0, 0
  br label %bb13

bb13:
  %r431 = phi i32 [ %r430, %bb12 ], [ %r435, %bb14 ]
  %r432 = load i32, i32* @base
  %r433 = icmp slt i32 %r431, %r432
  br i1 %r433, label %bb14, label %bb15

bb14:
  %r155 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r431
  store i32 0, i32* %r155
  %r157 = getelementptr [16 x i32 ], [16 x i32 ]* %r148, i32 0, i32 %r431
  store i32 0, i32* %r157
  %r159 = getelementptr [16 x i32 ], [16 x i32 ]* %r149, i32 0, i32 %r431
  store i32 0, i32* %r159
  %r434 = add i32 %r431, 1
  %r435 = add i32 %r434, 0
  br label %bb13

bb15:
  %r436 = sub i32 0, 1
  %r437 = icmp eq i32 %r424, %r436
  br i1 %r437, label %bb16, label %bb19

bb19:
  %r438 = add i32 %r426, 1
  %r439 = icmp sge i32 %r438, %r428
  br i1 %r439, label %bb16, label %bb17

bb16:
  ret void
bb17:
  br label %bb18

bb18:
  %r440 = add i32 %r426, 0
  br label %bb20

bb20:
  %r441 = phi i32 [ %r440, %bb18 ], [ %r452, %bb21 ]
  %r442 = icmp slt i32 %r441, %r428
  br i1 %r442, label %bb21, label %bb22

bb21:
  %r176 = getelementptr i32, i32* %r142, i32 %r441
  %r443 = load i32, i32* %r176
  %r444 = call i32 @getNumPos(i32 %r443, i32 %r424)
  %r445 = add i32 %r444, 0
  %r182 = getelementptr i32, i32* %r142, i32 %r441
  %r446 = load i32, i32* %r182
  %r447 = call i32 @getNumPos(i32 %r446, i32 %r424)
  %r448 = add i32 %r447, 0
  %r187 = getelementptr [16 x i32 ], [16 x i32 ]* %r149, i32 0, i32 %r445
  %r449 = load i32, i32* %r187
  %r450 = add i32 %r449, 1
  %r191 = getelementptr [16 x i32 ], [16 x i32 ]* %r149, i32 0, i32 %r448
  store i32 %r450, i32* %r191
  %r451 = add i32 %r441, 1
  %r452 = add i32 %r451, 0
  br label %bb20

bb22:
  %r195 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 0
  store i32 %r426, i32* %r195
  %r197 = getelementptr [16 x i32 ], [16 x i32 ]* %r149, i32 0, i32 0
  %r453 = load i32, i32* %r197
  %r454 = add i32 %r426, %r453
  %r200 = getelementptr [16 x i32 ], [16 x i32 ]* %r148, i32 0, i32 0
  store i32 %r454, i32* %r200
  %r455 = add i32 1, 0
  br label %bb23

bb23:
  %r456 = phi i32 [ %r455, %bb22 ], [ %r466, %bb24 ]
  %r457 = load i32, i32* @base
  %r458 = icmp slt i32 %r456, %r457
  br i1 %r458, label %bb24, label %bb25

bb24:
  %r459 = sub i32 %r456, 1
  %r460 = add i32 %r459, 0
  %r208 = getelementptr [16 x i32 ], [16 x i32 ]* %r148, i32 0, i32 %r460
  %r461 = load i32, i32* %r208
  %r211 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r456
  store i32 %r461, i32* %r211
  %r213 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r456
  %r462 = load i32, i32* %r213
  %r216 = getelementptr [16 x i32 ], [16 x i32 ]* %r149, i32 0, i32 %r456
  %r463 = load i32, i32* %r216
  %r464 = add i32 %r462, %r463
  %r220 = getelementptr [16 x i32 ], [16 x i32 ]* %r148, i32 0, i32 %r456
  store i32 %r464, i32* %r220
  %r465 = add i32 %r456, 1
  %r466 = add i32 %r465, 0
  br label %bb23

bb25:
  %r467 = add i32 0, 0
  br label %bb26

bb26:
  %r468 = phi i32 [ %r467, %bb25 ], [ %r503, %bb31 ]
  %r469 = load i32, i32* @base
  %r470 = icmp slt i32 %r468, %r469
  br i1 %r470, label %bb27, label %bb28

bb27:
  br label %bb29

bb29:
  %r227 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r468
  %r471 = load i32, i32* %r227
  %r230 = getelementptr [16 x i32 ], [16 x i32 ]* %r148, i32 0, i32 %r468
  %r472 = load i32, i32* %r230
  %r473 = icmp slt i32 %r471, %r472
  br i1 %r473, label %bb30, label %bb31

bb30:
  %r235 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r468
  %r474 = load i32, i32* %r235
  %r475 = add i32 %r474, 0
  %r239 = getelementptr i32, i32* %r142, i32 %r475
  %r476 = load i32, i32* %r239
  %r477 = add i32 %r476, 0
  br label %bb32

bb32:
  %r478 = phi i32 [ %r477, %bb30 ], [ %r487, %bb33 ]
  %r479 = call i32 @getNumPos(i32 %r478, i32 %r424)
  %r480 = icmp ne i32 %r479, %r468
  br i1 %r480, label %bb33, label %bb34

bb33:
  %r481 = add i32 %r478, 0
  %r482 = call i32 @getNumPos(i32 %r481, i32 %r424)
  %r483 = add i32 %r482, 0
  %r253 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r483
  %r484 = load i32, i32* %r253
  %r485 = add i32 %r484, 0
  %r256 = getelementptr i32, i32* %r142, i32 %r485
  %r486 = load i32, i32* %r256
  %r487 = add i32 %r486, 0
  %r488 = call i32 @getNumPos(i32 %r481, i32 %r424)
  %r489 = add i32 %r488, 0
  %r262 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r489
  %r490 = load i32, i32* %r262
  %r491 = add i32 %r490, 0
  %r266 = getelementptr i32, i32* %r142, i32 %r491
  store i32 %r481, i32* %r266
  %r492 = call i32 @getNumPos(i32 %r481, i32 %r424)
  %r493 = add i32 %r492, 0
  %r494 = call i32 @getNumPos(i32 %r481, i32 %r424)
  %r495 = add i32 %r494, 0
  %r275 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r493
  %r496 = load i32, i32* %r275
  %r497 = add i32 %r496, 1
  %r279 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r495
  store i32 %r497, i32* %r279
  br label %bb32

bb34:
  %r282 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r468
  %r498 = load i32, i32* %r282
  %r499 = add i32 %r498, 0
  %r286 = getelementptr i32, i32* %r142, i32 %r499
  store i32 %r478, i32* %r286
  %r288 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r468
  %r500 = load i32, i32* %r288
  %r501 = add i32 %r500, 1
  %r292 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r468
  store i32 %r501, i32* %r292
  br label %bb29

bb31:
  %r502 = add i32 %r468, 1
  %r503 = add i32 %r502, 0
  br label %bb26

bb28:
  %r504 = add i32 %r426, 0
  %r297 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 0
  store i32 %r426, i32* %r297
  %r299 = getelementptr [16 x i32 ], [16 x i32 ]* %r149, i32 0, i32 0
  %r505 = load i32, i32* %r299
  %r506 = add i32 %r426, %r505
  %r302 = getelementptr [16 x i32 ], [16 x i32 ]* %r148, i32 0, i32 0
  store i32 %r506, i32* %r302
  %r507 = add i32 0, 0
  br label %bb35

bb35:
  %r508 = phi i32 [ %r507, %bb28 ], [ %r522, %bb40 ]
  %r509 = load i32, i32* @base
  %r510 = icmp slt i32 %r508, %r509
  br i1 %r510, label %bb36, label %bb37

bb36:
  %r511 = icmp sgt i32 %r508, 0
  br i1 %r511, label %bb38, label %bb39

bb38:
  %r512 = sub i32 %r508, 1
  %r513 = add i32 %r512, 0
  %r312 = getelementptr [16 x i32 ], [16 x i32 ]* %r148, i32 0, i32 %r513
  %r514 = load i32, i32* %r312
  %r315 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r508
  store i32 %r514, i32* %r315
  %r317 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r508
  %r515 = load i32, i32* %r317
  %r320 = getelementptr [16 x i32 ], [16 x i32 ]* %r149, i32 0, i32 %r508
  %r516 = load i32, i32* %r320
  %r517 = add i32 %r515, %r516
  %r324 = getelementptr [16 x i32 ], [16 x i32 ]* %r148, i32 0, i32 %r508
  store i32 %r517, i32* %r324
  br label %bb40

bb39:
  br label %bb40

bb40:
  %r518 = sub i32 %r424, 1
  %r328 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r508
  %r519 = load i32, i32* %r328
  %r331 = getelementptr [16 x i32 ], [16 x i32 ]* %r148, i32 0, i32 %r508
  %r520 = load i32, i32* %r331
  call void @radixSort(i32 %r518, i32* %r142, i32 %r519, i32 %r520)
  %r521 = add i32 %r508, 1
  %r522 = add i32 %r521, 0
  br label %bb35

bb37:
  ret void
}

define i32 @main( ) {
bb41:
  %r523 = add i32 0, 0
  %r524 = add i32 0, 0
  %r525 = call i32 @getint()
  %r526 = add i32 %r525, 0
  %r527 = add i32 0, 0
  %r528 = add i32 0, 0
  br label %bb42

bb42:
  %r529 = phi i32 [ %r528, %bb41 ], [ %r533, %bb43 ]
  %r530 = icmp slt i32 %r529, %r526
  br i1 %r530, label %bb43, label %bb44

bb43:
  %r531 = call i32 @getint()
  %r343 = getelementptr [30000010 x i32 ], [30000010 x i32 ]* @a, i32 0, i32 %r529
  store i32 %r531, i32* %r343
  %r532 = add i32 %r529, 1
  %r533 = add i32 %r532, 0
  br label %bb42

bb44:
  call void @_sysy_starttime(i32 97)
  call void @radixSort(i32 8, i32* @a, i32 0, i32 %r526)
  %r534 = add i32 0, 0
  br label %bb45

bb45:
  %r535 = phi i32 [ %r534, %bb44 ], [ %r548, %bb46 ]
  %r536 = icmp slt i32 %r535, %r526
  br i1 %r536, label %bb46, label %bb47

bb46:
  %r537 = load i32, i32* @ans
  %r354 = getelementptr [30000010 x i32 ], [30000010 x i32 ]* @a, i32 0, i32 %r535
  %r538 = load i32, i32* %r354
  %r357 = getelementptr [30000010 x i32 ], [30000010 x i32 ]* @a, i32 0, i32 %r535
  %r539 = load i32, i32* %r357
  %r540 = add i32 2, %r535
  %r541 = sdiv i32 %r539, %r540
  %r542 = add i32 2, %r535
  %r543 = mul i32 %r541, %r542
  %r544 = sub i32 %r538, %r543
  %r545 = mul i32 %r535, %r544
  %r546 = add i32 %r537, %r545
  store i32 %r546, i32* @ans
  %r547 = add i32 %r535, 1
  %r548 = add i32 %r547, 0
  br label %bb45

bb47:
  %r549 = load i32, i32* @ans
  %r550 = icmp slt i32 %r549, 0
  br i1 %r550, label %bb48, label %bb49

bb48:
  %r551 = load i32, i32* @ans
  %r552 = sub i32 0, %r551
  store i32 %r552, i32* @ans
  br label %bb50

bb49:
  br label %bb50

bb50:
  call void @_sysy_stoptime(i32 117)
  %r553 = load i32, i32* @ans
  call void @putint(i32 %r553)
  call void @putch(i32 10)
  ret i32 0
}

