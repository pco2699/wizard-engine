(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\85\80\80\80\00\04\00\00\00\00\07"
  "\95\80\80\80\00\04\02\6d\30\00\00\02\6d\31\00\01"
  "\02\6d\32\00\02\02\6d\33\00\03\0a\b7\80\80\80\00"
  "\04\88\80\80\80\00\00\41\e3\00\20\00\6e\0b\88\80"
  "\80\80\00\00\41\e3\00\20\00\6e\0b\87\80\80\80\00"
  "\00\41\01\20\00\6e\0b\8b\80\80\80\00\00\41\80\80"
  "\80\80\78\20\00\6e\0b"
)
(assert_return (invoke "m0" (i32.const 0x3)) (i32.const 0x21))
(assert_return (invoke "m1" (i32.const 0xffff_fffd)) (i32.const 0x0))
(assert_trap (invoke "m2" (i32.const 0x0)) "")
(assert_return (invoke "m3" (i32.const 0xffff_ffff)) (i32.const 0x0))
