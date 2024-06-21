declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@a = global i32 0
@b = global i32 0
@d = global i32 0
define i32 @set_a( i32 %r100 ) {
bb1:
  %r176 = add i32 0, 0
  %r177 = add i32 %r100, 0
  store i32 %r177, i32* @a
  %r178 = load i32, i32* @a
  ret i32 %r178
}

define i32 @set_b( i32 %r104 ) {
bb2:
  %r179 = add i32 0, 0
  %r180 = add i32 %r104, 0
  store i32 %r180, i32* @b
  %r181 = load i32, i32* @b
  ret i32 %r181
}

define i32 @set_d( i32 %r108 ) {
bb3:
  %r182 = add i32 0, 0
  %r183 = add i32 %r108, 0
  store i32 %r183, i32* @d
  %r184 = load i32, i32* @d
  ret i32 %r184
}

define i32 @main( ) {
bb4:
  %r185 = add i32 0, 0
  %r186 = add i32 0, 0
  %r187 = add i32 0, 0
  %r188 = add i32 0, 0
  %r189 = add i32 0, 0
  %r190 = add i32 0, 0
  call void @_sysy_starttime(i32 97)
  store i32 2, i32* @a
  store i32 3, i32* @b
  %r191 = call i32 @set_a(i32 0)
  %r192 = icmp ne i32 %r191, 0
  br i1 %r192, label %bb8, label %bb6

bb8:
  %r193 = call i32 @set_b(i32 1)
  %r194 = icmp ne i32 %r193, 0
  br i1 %r194, label %bb5, label %bb6

bb5:
  br label %bb7

bb6:
  br label %bb7

bb7:
  %r195 = load i32, i32* @a
  call void @putint(i32 %r195)
  call void @putch(i32 32)
  %r196 = load i32, i32* @b
  call void @putint(i32 %r196)
  call void @putch(i32 32)
  store i32 2, i32* @a
  store i32 3, i32* @b
  %r197 = call i32 @set_a(i32 0)
  %r198 = icmp ne i32 %r197, 0
  br i1 %r198, label %bb12, label %bb10

bb12:
  %r199 = call i32 @set_b(i32 1)
  %r200 = icmp ne i32 %r199, 0
  br i1 %r200, label %bb9, label %bb10

bb9:
  br label %bb11

bb10:
  br label %bb11

bb11:
  %r201 = load i32, i32* @a
  call void @putint(i32 %r201)
  call void @putch(i32 32)
  %r202 = load i32, i32* @b
  call void @putint(i32 %r202)
  call void @putch(i32 10)
  %r203 = add i32 1, 0
  store i32 2, i32* @d
  %r204 = icmp sge i32 %r203, 1
  br i1 %r204, label %bb16, label %bb14

bb16:
  %r205 = call i32 @set_d(i32 3)
  %r206 = icmp ne i32 %r205, 0
  br i1 %r206, label %bb13, label %bb14

bb13:
  br label %bb15

bb14:
  br label %bb15

bb15:
  %r207 = load i32, i32* @d
  call void @putint(i32 %r207)
  call void @putch(i32 32)
  %r208 = icmp sle i32 %r203, 1
  br i1 %r208, label %bb17, label %bb20

bb20:
  %r209 = call i32 @set_d(i32 4)
  %r210 = icmp ne i32 %r209, 0
  br i1 %r210, label %bb17, label %bb18

bb17:
  br label %bb19

bb18:
  br label %bb19

bb19:
  %r211 = load i32, i32* @d
  call void @putint(i32 %r211)
  call void @putch(i32 10)
  call void @putch(i32 10)
  %r212 = add i32 0, 0
  %r213 = add i32 1, 0
  %r214 = add i32 2, 0
  %r215 = add i32 3, 0
  %r216 = add i32 4, 0
  br label %bb21

bb21:
  %r217 = icmp ne i32 %r212, 0
  br i1 %r217, label %bb24, label %bb23

bb24:
  %r218 = icmp ne i32 %r213, 0
  br i1 %r218, label %bb22, label %bb23

bb22:
  call void @putch(i32 32)
  br label %bb21

bb23:
  %r219 = icmp ne i32 %r212, 0
  br i1 %r219, label %bb25, label %bb28

bb28:
  %r220 = icmp ne i32 %r213, 0
  br i1 %r220, label %bb25, label %bb26

bb25:
  call void @putch(i32 67)
  br label %bb27

bb26:
  br label %bb27

bb27:
  %r221 = icmp sge i32 %r212, %r213
  br i1 %r221, label %bb29, label %bb32

bb32:
  %r222 = icmp sle i32 %r213, %r212
  br i1 %r222, label %bb29, label %bb30

bb29:
  call void @putch(i32 72)
  br label %bb31

bb30:
  br label %bb31

bb31:
  %r223 = icmp sge i32 %r214, %r213
  br i1 %r223, label %bb36, label %bb34

bb36:
  %r224 = icmp ne i32 %r216, %r215
  br i1 %r224, label %bb33, label %bb34

bb33:
  call void @putch(i32 73)
  br label %bb35

bb34:
  br label %bb35

bb35:
  %r225 = icmp ne i32 %r213, 0
  br i1 %r225, label %bb38, label %bb40

bb40:
  %r226 = icmp slt i32 %r215, %r215
  br i1 %r226, label %bb37, label %bb41

bb41:
  %r227 = icmp sge i32 %r216, %r216
  br i1 %r227, label %bb37, label %bb38

bb37:
  call void @putch(i32 74)
  br label %bb39

bb38:
  br label %bb39

bb39:
  %r228 = icmp ne i32 %r213, 0
  br i1 %r228, label %bb45, label %bb42

bb45:
  %r229 = icmp slt i32 %r215, %r215
  br i1 %r229, label %bb46, label %bb43

bb46:
  %r230 = icmp sge i32 %r216, %r216
  br i1 %r230, label %bb42, label %bb43

bb42:
  call void @putch(i32 75)
  br label %bb44

bb43:
  br label %bb44

bb44:
  call void @putch(i32 10)
  call void @_sysy_stoptime(i32 117)
  ret i32 0
}

