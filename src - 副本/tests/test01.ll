declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@a = global [ 10 x i32 ] zeroinitializer
@b = global i32 27
@c = global i32 1
define i32 @main( ) {
bb2:
  %r100 = alloca i32
  %r101 = alloca i32
  br label %bb1

bb1:
  call void @_sysy_starttime(i32 4)
  store i32 0, i32* %r100
  store i32 0, i32* %r101
  br label %bb_while__9_5_cond

bb_while__9_5_cond:
  %r102 = load i32, i32* %r100
  %r103 = icmp slt i32 %r102, 10
  br i1 %r103, label %bb_while__9_5_whilestms, label %bb_while__9_5_bre

bb_while__9_5_whilestms:
  %r104 = load i32, i32* %r100
  %r105 = getelementptr [10 x i32 ], [10 x i32 ]* @a, i32 0, i32 %r104
  %r106 = load i32, i32* %r100
  store i32 %r106, i32* %r105
  %r107 = load i32, i32* %r100
  %r108 = add i32 %r107, 1
  store i32 %r108, i32* %r100
  br label %bb_while__9_5_cond

bb_while__9_5_bre:
  store i32 0, i32* %r100
  br label %bb_while__15_5_cond

bb_while__15_5_cond:
  %r109 = load i32, i32* %r100
  %r110 = icmp slt i32 %r109, 10
  br i1 %r110, label %bb_while__15_5_whilestms, label %bb_while__15_5_bre

bb_while__15_5_whilestms:
  %r111 = load i32, i32* %r101
  %r112 = load i32, i32* %r100
  %r113 = getelementptr [10 x i32 ], [10 x i32 ]* @a, i32 0, i32 %r112
  %r114 = load i32, i32* %r113
  %r115 = add i32 %r111, %r114
  store i32 %r115, i32* %r101
  %r116 = load i32, i32* %r100
  %r117 = add i32 %r116, 1
  store i32 %r117, i32* %r100
  br label %bb_while__15_5_cond

bb_while__15_5_bre:
  %r118 = load i32, i32* @b
  call void @putint(i32 %r118)
  %r119 = load i32, i32* @c
  call void @putint(i32 %r119)
  %r120 = load i32, i32* %r101
  call void @putint(i32 %r120)
  call void @_sysy_stoptime(i32 19)
  ret i32 0
}

