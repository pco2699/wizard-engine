(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7e\01\7e\03\87\80\80\80\00\06\00\00\00\00\00"
  "\00\07\9f\80\80\80\00\06\02\6d\30\00\00\02\6d\31"
  "\00\01\02\6d\32\00\02\02\6d\33\00\03\02\6d\34\00"
  "\04\02\6d\35\00\05\0a\cb\80\80\80\00\06\87\80\80"
  "\80\00\00\20\00\42\00\87\0b\88\80\80\80\00\00\20"
  "\00\42\c0\00\87\0b\87\80\80\80\00\00\20\00\42\20"
  "\87\0b\87\80\80\80\00\00\20\00\42\1b\87\0b\87\80"
  "\80\80\00\00\20\00\42\04\87\0b\88\80\80\80\00\00"
  "\20\00\42\c4\00\87\0b"
)
(assert_return (invoke "m0" (i64.const 0xf_f000)) (i64.const 0xf_f000))
(assert_return (invoke "m1" (i64.const 0xf_f000)) (i64.const 0xf_f000))
(assert_return
  (invoke "m2" (i64.const 0xf_f000_0000_0000))
  (i64.const 0xf_f000)
)
(assert_return (invoke "m3" (i64.const 0xfff_ffff)) (i64.const 0x1))
(assert_return
  (invoke "m4" (i64.const 0xffff_ffff_ffff_ff00))
  (i64.const 0xffff_ffff_ffff_fff0)
)
(assert_return (invoke "m5" (i64.const 0xf_f000)) (i64.const 0xff00))
