(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7e\03\89\80\80\80\00\08\00\00\00\00\00\00"
  "\00\00\07\a9\80\80\80\00\08\02\6d\30\00\00\02\6d"
  "\31\00\01\02\6d\32\00\02\02\6d\33\00\03\02\6d\34"
  "\00\04\02\6d\35\00\05\02\6d\36\00\06\02\6d\37\00"
  "\07\0a\91\81\80\80\00\08\8d\80\80\80\00\00\44\00"
  "\00\00\00\00\00\00\00\fc\07\0b\8d\80\80\80\00\00"
  "\44\00\00\00\00\00\00\e0\41\fc\07\0b\8d\80\80\80"
  "\00\00\44\00\00\00\00\00\00\f0\41\fc\07\0b\8d\80"
  "\80\80\00\00\44\00\00\00\00\00\00\e0\43\fc\07\0b"
  "\8d\80\80\80\00\00\44\00\00\00\00\00\00\f0\43\fc"
  "\07\0b\8d\80\80\80\00\00\44\00\00\00\00\00\00\f8"
  "\7f\fc\07\0b\8d\80\80\80\00\00\44\00\00\00\00\00"
  "\00\e0\c3\fc\07\0b\8d\80\80\80\00\00\44\00\00\03"
  "\20\00\01\e0\c3\fc\07\0b"
)
(assert_return (invoke "m0") (i64.const 0x0))
(assert_return (invoke "m1") (i64.const 0x8000_0000))
(assert_return (invoke "m2") (i64.const 0x1_0000_0000))
(assert_return (invoke "m3") (i64.const 0x8000_0000_0000_0000))
(assert_return (invoke "m4") (i64.const 0xffff_ffff_ffff_ffff))
(assert_return (invoke "m5") (i64.const 0x0))
(assert_return (invoke "m6") (i64.const 0x0))
(assert_return (invoke "m7") (i64.const 0x0))
