(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\03\88\80\80\80\00\07\00\00\00\00\00\00"
  "\00\07\a4\80\80\80\00\07\02\6d\30\00\00\02\6d\31"
  "\00\01\02\6d\32\00\02\02\6d\33\00\03\02\6d\34\00"
  "\04\02\6d\35\00\05\02\6d\36\00\06\0a\dc\80\80\80"
  "\00\07\88\80\80\80\00\00\43\00\00\00\00\a9\0b\88"
  "\80\80\80\00\00\43\00\00\00\80\a9\0b\88\80\80\80"
  "\00\00\43\00\00\40\80\a9\0b\88\80\80\80\00\00\43"
  "\00\80\9c\44\a9\0b\88\80\80\80\00\00\43\00\00\00"
  "\cf\a9\0b\88\80\80\80\00\00\43\00\00\00\4f\a9\0b"
  "\88\80\80\80\00\00\43\00\00\80\4f\a9\0b"
)
(assert_return (invoke "m0") (i32.const 0x0))
(assert_return (invoke "m1") (i32.const 0x0))
(assert_return (invoke "m2") (i32.const 0x0))
(assert_return (invoke "m3") (i32.const 0x4e4))
(assert_trap (invoke "m4") "")
(assert_return (invoke "m5") (i32.const 0x8000_0000))
(assert_trap (invoke "m6") "")
