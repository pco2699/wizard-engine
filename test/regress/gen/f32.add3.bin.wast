(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7d\03\83\80\80\80\00\02\00\00\07\8b\80\80"
  "\80\00\02\02\6d\30\00\00\02\6d\31\00\01\0a\a5\80"
  "\80\80\00\02\8d\80\80\80\00\00\43\00\00\b0\40\43"
  "\00\00\60\c0\92\0b\8d\80\80\80\00\00\43\00\00\00"
  "\00\43\00\00\00\00\92\0b"
)
(assert_return (invoke "m0") (f32.const 0x1p+1))
(assert_return (invoke "m1") (f32.const 0x0p+0))
