(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7d\03\88\80\80\80\00\07\00\00\00\00\00\00"
  "\00\07\a4\80\80\80\00\07\02\6d\30\00\00\02\6d\31"
  "\00\01\02\6d\32\00\02\02\6d\33\00\03\02\6d\34\00"
  "\04\02\6d\35\00\05\02\6d\36\00\06\0a\ff\80\80\80"
  "\00\07\8d\80\80\80\00\00\43\00\00\00\00\43\00\00"
  "\00\4f\97\0b\8d\80\80\80\00\00\43\00\00\00\4f\43"
  "\00\00\00\00\97\0b\8d\80\80\80\00\00\43\00\00\00"
  "\cf\43\00\00\00\4f\97\0b\8d\80\80\80\00\00\43\00"
  "\00\00\00\43\00\00\00\80\97\0b\8d\80\80\80\00\00"
  "\43\00\00\00\80\43\00\00\00\00\97\0b\8d\80\80\80"
  "\00\00\43\00\00\28\42\43\00\00\c0\7f\97\0b\8d\80"
  "\80\80\00\00\43\00\00\c0\7f\43\00\00\28\42\97\0b"
)
(assert_return (invoke "m0") (f32.const 0x1p+31))
(assert_return (invoke "m1") (f32.const 0x1p+31))
(assert_return (invoke "m2") (f32.const 0x1p+31))
(assert_return (invoke "m3") (f32.const 0x0p+0))
(assert_return (invoke "m4") (f32.const 0x0p+0))
(assert_return (invoke "m5") (f32.const nan:0x40_0000))
(assert_return (invoke "m6") (f32.const nan:0x40_0000))
