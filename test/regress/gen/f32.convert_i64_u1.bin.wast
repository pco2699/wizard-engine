(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7d\03\87\80\80\80\00\06\00\00\00\00\00\00"
  "\07\9f\80\80\80\00\06\02\6d\30\00\00\02\6d\31\00"
  "\01\02\6d\32\00\02\02\6d\33\00\03\02\6d\34\00\04"
  "\02\6d\35\00\05\0a\d2\80\80\80\00\06\85\80\80\80"
  "\00\00\42\00\b5\0b\89\80\80\80\00\00\42\ff\ff\ff"
  "\ff\07\b5\0b\89\80\80\80\00\00\42\ff\ff\ff\ff\0f"
  "\b5\0b\89\80\80\80\00\00\42\ff\ff\ff\ff\1f\b5\0b"
  "\8e\80\80\80\00\00\42\ff\ff\ff\ff\ff\ff\ff\ff\ff"
  "\00\b5\0b\85\80\80\80\00\00\42\7f\b5\0b"
)
(assert_return (invoke "m0") (f32.const 0x0p+0))
(assert_return (invoke "m1") (f32.const 0x1p+31))
(assert_return (invoke "m2") (f32.const 0x1p+32))
(assert_return (invoke "m3") (f32.const 0x1p+33))
(assert_return (invoke "m4") (f32.const 0x1p+63))
(assert_return (invoke "m5") (f32.const 0x1p+64))
