(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7e\01\7e\03\86\80\80\80\00\05\00\00\00\00\00"
  "\07\9a\80\80\80\00\05\02\6d\30\00\00\02\6d\31\00"
  "\01\02\6d\32\00\02\02\6d\33\00\03\02\6d\34\00\04"
  "\0a\c5\80\80\80\00\05\89\80\80\80\00\00\42\9a\e8"
  "\00\20\00\82\0b\88\80\80\80\00\00\42\e3\00\20\00"
  "\82\0b\87\80\80\80\00\00\42\01\20\00\82\0b\88\80"
  "\80\80\00\00\42\ab\04\20\00\82\0b\8b\80\80\80\00"
  "\00\42\80\80\80\80\08\20\00\82\0b"
)
(assert_return (invoke "m0" (i64.const 0xa)) (i64.const 0x8))
(assert_return (invoke "m1" (i64.const 0xffff_ffff_ffff_fffd)) (i64.const 0x63))
(assert_trap (invoke "m2" (i64.const 0x0)) "")
(assert_return (invoke "m3" (i64.const 0x1)) (i64.const 0x0))
(assert_return
  (invoke "m4" (i64.const 0xffff_ffff_ffff_ffff))
  (i64.const 0x8000_0000)
)
