(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\85\80\80\80\00\04\00\00\00\00\07"
  "\95\80\80\80\00\04\02\6d\30\00\00\02\6d\31\00\01"
  "\02\6d\32\00\02\02\6d\33\00\03\0a\b9\80\80\80\00"
  "\04\89\80\80\80\00\00\20\00\41\c1\cd\00\6a\0b\89"
  "\80\80\80\00\00\20\00\41\80\80\04\6a\0b\89\80\80"
  "\80\00\00\20\00\41\80\80\04\6a\0b\89\80\80\80\00"
  "\00\20\00\41\ff\ff\03\6a\0b"
)
(assert_return (invoke "m0" (i32.const 0x10d8)) (i32.const 0x3799))
(assert_return (invoke "m1" (i32.const 0xffff_0000)) (i32.const 0x0))
(assert_return (invoke "m2" (i32.const 0xfff_0000)) (i32.const 0x1000_0000))
(assert_return (invoke "m3" (i32.const 0xffff_0000)) (i32.const 0xffff_ffff))
