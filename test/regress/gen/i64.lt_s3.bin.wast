(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\03\86\80\80\80\00\05\00\00\00\00\00\07"
  "\9a\80\80\80\00\05\02\6d\30\00\00\02\6d\31\00\01"
  "\02\6d\32\00\02\02\6d\33\00\03\02\6d\34\00\04\0a"
  "\ef\80\80\80\00\05\91\80\80\80\00\00\42\80\cc\85"
  "\f2\cc\01\42\80\b8\9a\95\c9\01\53\0b\91\80\80\80"
  "\00\00\42\80\cc\85\f2\cc\01\42\80\cc\85\f2\cc\01"
  "\53\0b\91\80\80\80\00\00\42\80\cc\85\f2\cc\01\42"
  "\80\e0\f0\ce\d0\01\53\0b\91\80\80\80\00\00\42\80"
  "\a0\8f\b1\af\7e\42\80\b4\fa\8d\b3\7e\53\0b\91\80"
  "\80\80\00\00\42\80\b4\fa\8d\b3\7e\42\80\e0\f0\ce"
  "\d0\01\53\0b"
)
(assert_return (invoke "m0") (i32.const 0x0))
(assert_return (invoke "m1") (i32.const 0x0))
(assert_return (invoke "m2") (i32.const 0x1))
(assert_return (invoke "m3") (i32.const 0x1))
(assert_return (invoke "m4") (i32.const 0x1))
