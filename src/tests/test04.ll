declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@a = global i32 1
define i32 @foo( i32 %r100 ) {
bb3:
  %r101 = alloca i32
  br label %bb1

bb1:
  store i32 %r100, i32* %r101
  %r102 = load i32, i32* %r101
  store i32 %r102, i32* @a
  ret i32 1
}

define i32 @main( ) {
bb4:
  %r103 = alloca i32
  br label %bb2

bb2:
  call void @_sysy_starttime(i32 9)
  store i32 1, i32* %r103
  %r104 = call i32 @foo(i32 2)
  %r105 = icmp sgt i32 %r104, 0
  br i1 %r105, label %bb_if_5_11_true, label %bb22_11checksecond

bb22_11checksecond:
  %r106 = call i32 @foo(i32 3)
  %r107 = icmp sgt i32 %r106, 0
  br i1 %r107, label %bb_if_5_11_true, label %bb_if_5_11_false

bb_if_5_11_true:
  store i32 2, i32* %r103
  br label %bb_if_5_11_end

bb_if_5_11_false:
  br label %bb_if_5_11_end

bb_if_5_11_end:
  %r108 = load i32, i32* @a
  call void @putint(i32 %r108)
  %r109 = load i32, i32* %r103
  call void @putint(i32 %r109)
  call void @_sysy_stoptime(i32 17)
  ret i32 0
}

