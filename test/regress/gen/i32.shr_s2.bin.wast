(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\86\80\80\80\00\05\00\00\00\00\00"
  "\07\9a\80\80\80\00\05\02\6d\30\00\00\02\6d\31\00"
  "\01\02\6d\32\00\02\02\6d\33\00\03\02\6d\34\00\04"
  "\0a\bd\80\80\80\00\05\87\80\80\80\00\00\20\00\41"
  "\00\75\0b\87\80\80\80\00\00\20\00\41\20\75\0b\87"
  "\80\80\80\00\00\20\00\41\1b\75\0b\87\80\80\80\00"
  "\00\20\00\41\04\75\0b\87\80\80\80\00\00\20\00\41"
  "\24\75\0b"
)
(assert_return (invoke "m0" (i32.const 0xf_f000)) (i32.const 0xf_f000))
(assert_return (invoke "m1" (i32.const 0xf_f000)) (i32.const 0xf_f000))
(assert_return (invoke "m2" (i32.const 0xfff_ffff)) (i32.const 0x1))
(assert_return (invoke "m3" (i32.const 0xffff_ff00)) (i32.const 0xffff_fff0))
(assert_return (invoke "m4" (i32.const 0xf_f000)) (i32.const 0xff00))
