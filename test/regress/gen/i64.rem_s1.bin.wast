(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7e\01\7e\03\88\80\80\80\00\07\00\00\00\00\00"
  "\00\00\07\a4\80\80\80\00\07\02\6d\30\00\00\02\6d"
  "\31\00\01\02\6d\32\00\02\02\6d\33\00\03\02\6d\34"
  "\00\04\02\6d\35\00\05\02\6d\36\00\06\0a\e5\80\80"
  "\80\00\07\88\80\80\80\00\00\42\e3\00\20\00\81\0b"
  "\88\80\80\80\00\00\42\eb\00\20\00\81\0b\88\80\80"
  "\80\00\00\42\95\7f\20\00\81\0b\88\80\80\80\00\00"
  "\42\95\7f\20\00\81\0b\87\80\80\80\00\00\42\01\20"
  "\00\81\0b\8a\80\80\80\00\00\42\8f\ac\d3\02\20\00"
  "\81\0b\90\80\80\80\00\00\42\80\80\80\80\80\80\80"
  "\80\80\7f\20\00\81\0b"
)
(assert_return (invoke "m0" (i64.const 0xa)) (i64.const 0x9))
(assert_return (invoke "m1" (i64.const 0xffff_ffff_ffff_fff6)) (i64.const 0x7))
(assert_return
  (invoke "m2" (i64.const 0xffff_ffff_ffff_fff6))
  (i64.const 0xffff_ffff_ffff_fff9)
)
(assert_return (invoke "m3" (i64.const 0xa)) (i64.const 0xffff_ffff_ffff_fff9))
(assert_trap (invoke "m4" (i64.const 0x0)) "")
(assert_return (invoke "m5" (i64.const 0x1)) (i64.const 0x0))
(assert_return (invoke "m6" (i64.const 0xffff_ffff_ffff_ffff)) (i64.const 0x0))
