(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7d\7d\01\7d\03\82\80\80\80\00\01\00\07\86\80"
  "\80\80\00\01\02\6d\30\00\00\0a\8d\80\80\80\00\01"
  "\87\80\80\80\00\00\20\00\20\01\95\0b"
)
(assert_return
  (invoke "m0" (f32.const 0x1.6p+2) (f32.const -0x1.cp+1))
  (f32.const -0x1.9249_24p+0)
)
(assert_return
  (invoke "m0" (f32.const 0x1.1p-119) (f32.const 0x0p+0))
  (f32.const inf)
)
