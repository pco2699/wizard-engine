(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7e\01\7d\03\82\80\80\80\00\01\00\07\86\80\80"
  "\80\00\01\02\6d\30\00\00\0a\8b\80\80\80\00\01\85"
  "\80\80\80\00\00\20\00\b4\0b"
)
(assert_return
  (invoke "m0" (i64.const 0xffff_ffff_ffff_e890))
  (f32.const -0x1.77p+12)
)
(assert_return
  (invoke "m0" (i64.const 0xffff_ffff_8000_0000))
  (f32.const -0x1p+31)
)
(assert_return
  (invoke "m0" (i64.const 0x7fff_ffff_ffff_fffa))
  (f32.const 0x1p+63)
)
