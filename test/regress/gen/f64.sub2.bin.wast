(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7c\01\7c\03\83\80\80\80\00\02\00\00\07\8b\80"
  "\80\80\00\02\02\6d\30\00\00\02\6d\31\00\01\0a\a7"
  "\80\80\80\00\02\8e\80\80\80\00\00\20\00\44\00\00"
  "\00\00\00\80\26\40\a1\0b\8e\80\80\80\00\00\20\00"
  "\44\00\00\00\00\00\00\00\00\a1\0b"
)
(assert_return (invoke "m0" (f64.const 0x1.ap+2)) (f64.const -0x1.3p+2))
(assert_return (invoke "m1" (f64.const 0x0p+0)) (f64.const 0x0p+0))
