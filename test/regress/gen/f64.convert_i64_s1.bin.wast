(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7c\03\84\80\80\80\00\03\00\00\00\07\90\80"
  "\80\80\00\03\02\6d\30\00\00\02\6d\31\00\01\02\6d"
  "\32\00\02\0a\ad\80\80\80\00\03\86\80\80\80\00\00"
  "\42\90\51\b9\0b\89\80\80\80\00\00\42\80\80\80\80"
  "\78\b9\0b\8e\80\80\80\00\00\42\fa\ff\ff\ff\ff\ff"
  "\ff\ff\ff\00\b9\0b"
)
(assert_return (invoke "m0") (f64.const -0x1.77p+12))
(assert_return (invoke "m1") (f64.const -0x1p+31))
(assert_return (invoke "m2") (f64.const 0x1p+63))
