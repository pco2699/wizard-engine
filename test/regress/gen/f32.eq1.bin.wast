(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7d\01\7f\03\85\80\80\80\00\04\00\00\00\00\07"
  "\95\80\80\80\00\04\02\6d\30\00\00\02\6d\31\00\01"
  "\02\6d\32\00\02\02\6d\33\00\03\0a\bd\80\80\80\00"
  "\04\8a\80\80\80\00\00\43\00\00\00\00\20\00\5b\0b"
  "\8a\80\80\80\00\00\43\00\00\00\4f\20\00\5b\0b\8a"
  "\80\80\80\00\00\43\00\00\00\80\20\00\5b\0b\8a\80"
  "\80\80\00\00\43\00\00\c0\7f\20\00\5b\0b"
)
(assert_return (invoke "m0" (f32.const 0x0p+0)) (i32.const 0x1))
(assert_return (invoke "m1" (f32.const -0x1p+31)) (i32.const 0x0))
(assert_return (invoke "m2" (f32.const 0x0p+0)) (i32.const 0x1))
(assert_return (invoke "m3" (f32.const 0x0p+0)) (i32.const 0x0))
