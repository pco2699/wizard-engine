(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7c\03\88\80\80\80\00\07\00\00\00\00\00\00"
  "\00\07\a4\80\80\80\00\07\02\6d\30\00\00\02\6d\31"
  "\00\01\02\6d\32\00\02\02\6d\33\00\03\02\6d\34\00"
  "\04\02\6d\35\00\05\02\6d\36\00\06\0a\b7\81\80\80"
  "\00\07\95\80\80\80\00\00\44\00\00\00\00\00\00\00"
  "\00\44\00\00\00\00\00\00\e0\41\a4\0b\95\80\80\80"
  "\00\00\44\00\00\00\00\00\00\e0\41\44\00\00\00\00"
  "\00\00\00\00\a4\0b\95\80\80\80\00\00\44\00\00\00"
  "\00\00\00\e0\c1\44\00\00\00\00\00\00\e0\41\a4\0b"
  "\95\80\80\80\00\00\44\00\00\00\00\00\00\00\00\44"
  "\00\00\00\00\00\00\00\80\a4\0b\95\80\80\80\00\00"
  "\44\00\00\00\00\00\00\00\80\44\00\00\00\00\00\00"
  "\00\00\a4\0b\95\80\80\80\00\00\44\00\00\14\21\00"
  "\00\08\00\44\00\00\00\00\00\00\f8\7f\a4\0b\95\80"
  "\80\80\00\00\44\00\00\00\00\00\00\f8\7f\44\00\00"
  "\14\21\00\00\08\00\a4\0b"
)
(assert_return (invoke "m0") (f64.const 0x0p+0))
(assert_return (invoke "m1") (f64.const 0x0p+0))
(assert_return (invoke "m2") (f64.const -0x1p+31))
(assert_return (invoke "m3") (f64.const -0x0p+0))
(assert_return (invoke "m4") (f64.const -0x0p+0))
(assert_return (invoke "m5") (f64.const nan:0x8_0000_0000_0000))
(assert_return (invoke "m6") (f64.const nan:0x8_0000_0000_0000))
