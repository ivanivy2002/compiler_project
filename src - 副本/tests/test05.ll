declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@N = global i32 0
@newline = global i32 0
define i32 @factor( i32 %r100 ) {
bb3:
  %r101 = alloca i32
  %r102 = alloca i32
  %r103 = alloca i32
  br label %bb1

bb1:
  store i32 %r100, i32* %r101
  store i32 0, i32* %r103
  store i32 1, i32* %r102
  br label %bb_while__11_5_cond

bb_while__11_5_cond:
  %r104 = load i32, i32* %r102
  %r105 = load i32, i32* %r101
  %r106 = add i32 %r105, 1
  %r107 = icmp slt i32 %r104, %r106
  br i1 %r107, label %bb_while__11_5_whilestms, label %bb_while__11_5_bre

bb_while__11_5_whilestms:
  %r108 = load i32, i32* %r101
  %r109 = load i32, i32* %r102
  %r110 = sdiv i32 %r108, %r109
  %r111 = load i32, i32* %r102
  %r112 = mul i32 %r110, %r111
  %r113 = load i32, i32* %r101
  %r114 = icmp eq i32 %r112, %r113
  br i1 %r114, label %bb_if__13_9_true, label %bb_if__13_9_false

bb_if__13_9_true:
  %r115 = load i32, i32* %r103
  %r116 = load i32, i32* %r102
  %r117 = add i32 %r115, %r116
  store i32 %r117, i32* %r103
  br label %bb_if__13_9_end

bb_if__13_9_false:
  br label %bb_if__13_9_end

bb_if__13_9_end:
  %r118 = load i32, i32* %r102
  %r119 = add i32 %r118, 1
  store i32 %r119, i32* %r102
  br label %bb_while__11_5_cond

bb_while__11_5_bre:
  %r120 = load i32, i32* %r103
  ret i32 %r120
}

define i32 @main( ) {
bb4:
  %r121 = alloca i32
  %r122 = alloca i32
  %r123 = alloca i32
  br label %bb2

bb2:
  call void @_sysy_starttime(i32 24)
  store i32 4, i32* @N
  store i32 10, i32* @newline
  store i32 1478, i32* %r122
  call void @_sysy_stoptime(i32 31)
  %r124 = load i32, i32* %r122
  %r125 = call i32 @factor(i32 %r124)
  ret i32 %r125
}

