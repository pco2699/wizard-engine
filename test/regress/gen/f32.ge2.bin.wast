(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7d\01\7f\03\86\80\80\80\00\05\00\00\00\00\00"
  "\07\9a\80\80\80\00\05\02\6d\30\00\00\02\6d\31\00"
  "\01\02\6d\32\00\02\02\6d\33\00\03\02\6d\34\00\04"
  "\0a\cc\80\80\80\00\05\8a\80\80\80\00\00\20\00\43"
  "\00\00\00\00\60\0b\8a\80\80\80\00\00\20\00\43\00"
  "\00\00\cf\60\0b\8a\80\80\80\00\00\20\00\43\00\00"
  "\00\4f\60\0b\8a\80\80\80\00\00\20\00\43\00\00\00"
  "\00\60\0b\8a\80\80\80\00\00\20\00\43\00\00\00\00"
  "\60\0b"
)
(assert_return (invoke "m0" (f32.const 0x0p+0)) (i32.const 0x1))
(assert_return (invoke "m1" (f32.const 0x1p+31)) (i32.const 0x1))
(assert_return (invoke "m2" (f32.const -0x1p+31)) (i32.const 0x0))
(assert_return (invoke "m3" (f32.const -0x0p+0)) (i32.const 0x1))
(assert_return (invoke "m4" (f32.const nan:0x40_0000)) (i32.const 0x0))
