(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7e\03\8b\80\80\80\00\0a\00\00\00\00\00\00"
  "\00\00\00\00\07\b3\80\80\80\00\0a\02\6d\30\00\00"
  "\02\6d\31\00\01\02\6d\32\00\02\02\6d\33\00\03\02"
  "\6d\34\00\04\02\6d\35\00\05\02\6d\36\00\06\02\6d"
  "\37\00\07\02\6d\38\00\08\02\6d\39\00\09\0a\83\81"
  "\80\80\00\0a\88\80\80\80\00\00\43\00\00\00\00\af"
  "\0b\88\80\80\80\00\00\43\00\80\9c\44\af\0b\88\80"
  "\80\80\00\00\43\00\00\00\cf\af\0b\88\80\80\80\00"
  "\00\43\00\00\80\cf\af\0b\88\80\80\80\00\00\43\00"
  "\00\00\d0\af\0b\88\80\80\80\00\00\43\00\00\00\4f"
  "\af\0b\88\80\80\80\00\00\43\00\00\80\4f\af\0b\88"
  "\80\80\80\00\00\43\00\00\00\50\af\0b\88\80\80\80"
  "\00\00\43\00\00\00\5f\af\0b\88\80\80\80\00\00\43"
  "\00\00\80\5f\af\0b"
)
(assert_return (invoke "m0") (i64.const 0x0))
(assert_return (invoke "m1") (i64.const 0x4e4))
(assert_trap (invoke "m2") "")
(assert_trap (invoke "m3") "")
(assert_trap (invoke "m4") "")
(assert_return (invoke "m5") (i64.const 0x8000_0000))
(assert_return (invoke "m6") (i64.const 0x1_0000_0000))
(assert_return (invoke "m7") (i64.const 0x2_0000_0000))
(assert_return (invoke "m8") (i64.const 0x8000_0000_0000_0000))
(assert_trap (invoke "m9") "")
