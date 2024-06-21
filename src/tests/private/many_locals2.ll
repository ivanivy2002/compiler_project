declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@n = global i32 0
define i32 @main( ) {
bb1:
  %r230 = add i32 0, 0
  %r231 = add i32 0, 0
  call void @_sysy_starttime(i32 4)
  %r232 = add i32 0, 0
  %r233 = add i32 0, 0
  %r234 = add i32 0, 0
  %r235 = add i32 0, 0
  %r236 = add i32 0, 0
  %r237 = add i32 0, 0
  %r238 = add i32 0, 0
  %r239 = add i32 0, 0
  %r240 = add i32 0, 0
  %r241 = add i32 0, 0
  %r242 = add i32 0, 0
  %r243 = add i32 0, 0
  %r244 = add i32 0, 0
  %r245 = add i32 0, 0
  %r246 = add i32 0, 0
  %r247 = add i32 0, 0
  %r248 = add i32 0, 0
  %r249 = add i32 0, 0
  %r250 = add i32 0, 0
  %r251 = add i32 0, 0
  %r252 = add i32 0, 0
  %r253 = add i32 0, 0
  %r254 = add i32 0, 0
  %r255 = add i32 0, 0
  %r256 = add i32 0, 0
  %r257 = add i32 0, 0
  %r258 = add i32 0, 0
  %r259 = add i32 0, 0
  %r260 = add i32 0, 0
  %r261 = add i32 0, 0
  %r262 = add i32 0, 0
  %r263 = call i32 @getint()
  %r264 = add i32 %r263, 0
  br label %bb2

bb2:
  %r265 = phi i32 [ %r264, %bb1 ], [ %r268, %bb3 ]
  %r266 = icmp eq i32 %r265, 5
  br i1 %r266, label %bb3, label %bb4

bb3:
  %r267 = add i32 %r265, 1
  %r268 = add i32 %r267, 0
  br label %bb2

bb4:
  %r269 = add i32 0, 0
  %r270 = add i32 %r269, 1
  %r271 = add i32 %r270, 0
  %r272 = add i32 %r271, 1
  %r273 = add i32 %r272, 0
  %r274 = add i32 %r273, 1
  %r275 = add i32 %r274, 0
  %r276 = add i32 %r275, 1
  %r277 = add i32 %r276, 0
  %r278 = add i32 %r277, 1
  %r279 = add i32 %r278, 0
  %r280 = add i32 %r279, 1
  %r281 = add i32 %r280, 0
  %r282 = add i32 %r281, 1
  %r283 = add i32 %r282, 0
  %r284 = add i32 %r283, 1
  %r285 = add i32 %r284, 0
  %r286 = add i32 %r285, 1
  %r287 = add i32 %r286, 0
  %r288 = add i32 %r287, 1
  %r289 = add i32 %r288, 0
  %r290 = add i32 %r289, 1
  %r291 = add i32 %r290, 0
  %r292 = add i32 %r291, 1
  %r293 = add i32 %r292, 0
  %r294 = add i32 %r293, 1
  %r295 = add i32 %r294, 0
  %r296 = add i32 %r295, 1
  %r297 = add i32 %r296, 0
  %r298 = add i32 %r297, 1
  %r299 = add i32 %r298, 0
  %r300 = add i32 %r299, 1
  %r301 = add i32 %r300, 0
  %r302 = add i32 %r301, 1
  %r303 = add i32 %r302, 0
  %r304 = add i32 %r303, 1
  %r305 = add i32 %r304, 0
  %r306 = add i32 %r305, 1
  %r307 = add i32 %r306, 0
  %r308 = add i32 %r307, 1
  %r309 = add i32 %r308, 0
  %r310 = add i32 %r309, 1
  %r311 = add i32 %r310, 0
  %r312 = add i32 %r311, 1
  %r313 = add i32 %r312, 0
  %r314 = add i32 %r313, 1
  %r315 = add i32 %r314, 0
  %r316 = add i32 %r315, 1
  %r317 = add i32 %r316, 0
  %r318 = add i32 %r317, 1
  %r319 = add i32 %r318, 0
  %r320 = add i32 %r319, 1
  %r321 = add i32 %r320, 0
  %r322 = add i32 %r321, 1
  %r323 = add i32 %r322, 0
  %r324 = add i32 %r323, 1
  %r325 = add i32 %r324, 0
  %r326 = add i32 %r325, 1
  %r327 = add i32 %r326, 0
  call void @putint(i32 %r269)
  call void @putint(i32 %r271)
  call void @putint(i32 %r273)
  call void @putint(i32 %r275)
  call void @putint(i32 %r277)
  call void @putint(i32 %r279)
  call void @putint(i32 %r281)
  call void @putint(i32 %r283)
  call void @putint(i32 %r285)
  call void @putint(i32 %r287)
  call void @putint(i32 %r289)
  call void @putint(i32 %r291)
  call void @putint(i32 %r293)
  call void @putint(i32 %r295)
  call void @putint(i32 %r297)
  call void @putint(i32 %r299)
  call void @putint(i32 %r301)
  call void @putint(i32 %r303)
  call void @putint(i32 %r305)
  call void @putint(i32 %r307)
  call void @putint(i32 %r309)
  call void @putint(i32 %r311)
  call void @putint(i32 %r313)
  call void @putint(i32 %r315)
  call void @putint(i32 %r317)
  call void @putint(i32 %r319)
  call void @putint(i32 %r321)
  call void @putint(i32 %r323)
  call void @putint(i32 %r325)
  call void @putint(i32 %r327)
  %r328 = add i32 10, 0
  call void @putch(i32 %r328)
  call void @putint(i32 %r265)
  call void @putch(i32 %r328)
  call void @_sysy_stoptime(i32 312)
  ret i32 %r319
}

