(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\85\80\80\80\00\04\00\00\00\00\07"
  "\95\80\80\80\00\04\02\6d\30\00\00\02\6d\31\00\01"
  "\02\6d\32\00\02\02\6d\33\00\03\0a\b1\80\80\80\00"
  "\04\87\80\80\80\00\00\20\00\41\03\6e\0b\87\80\80"
  "\80\00\00\20\00\41\7d\6e\0b\87\80\80\80\00\00\20"
  "\00\41\00\6e\0b\87\80\80\80\00\00\20\00\41\7f\6e"
  "\0b"
)
(assert_return (invoke "m0" (i32.const 0x63)) (i32.const 0x21))
(assert_return (invoke "m1" (i32.const 0x63)) (i32.const 0x0))
(assert_trap (invoke "m2" (i32.const 0x1)) "")
(assert_return (invoke "m3" (i32.const 0x8000_0000)) (i32.const 0x0))
