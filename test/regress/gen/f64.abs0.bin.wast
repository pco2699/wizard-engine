(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7c\01\7c\03\82\80\80\80\00\01\00\07\86\80\80"
  "\80\00\01\02\6d\30\00\00\0a\8b\80\80\80\00\01\85"
  "\80\80\80\00\00\20\00\99\0b"
)
(assert_return
  (invoke "m0" (f64.const -0x1.0000_0123_4567_8p+12))
  (f64.const 0x1.0000_0123_4567_8p+12)
)
(assert_return
  (invoke "m0" (f64.const 0x1.5555_5987_6543_2p+342))
  (f64.const 0x1.5555_5987_6543_2p+342)
)
(assert_return (invoke "m0" (f64.const 0x0p+0)) (f64.const 0x0p+0))
