(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7e\03\85\80\80\80\00\04\00\00\00\00\07\95"
  "\80\80\80\00\04\02\6d\30\00\00\02\6d\31\00\01\02"
  "\6d\32\00\02\02\6d\33\00\03\0a\bc\80\80\80\00\04"
  "\88\80\80\80\00\00\42\e3\00\42\03\80\0b\88\80\80"
  "\80\00\00\42\e3\00\42\7d\80\0b\87\80\80\80\00\00"
  "\42\01\42\00\80\0b\90\80\80\80\00\00\42\80\80\80"
  "\80\80\80\80\80\80\7f\42\7f\80\0b"
)
(assert_return (invoke "m0") (i64.const 0x21))
(assert_return (invoke "m1") (i64.const 0x0))
(assert_trap (invoke "m2") "")
(assert_return (invoke "m3") (i64.const 0x0))
