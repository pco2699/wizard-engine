(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\03\84\80\80\80\00\03\00\00\00\07\90\80"
  "\80\80\00\03\02\6d\30\00\00\02\6d\31\00\01\02\6d"
  "\32\00\02\0a\b3\80\80\80\00\03\89\80\80\80\00\00"
  "\41\e3\00\41\e3\00\47\0b\8d\80\80\80\00\00\41\ad"
  "\bd\bb\57\41\ad\bd\bb\56\47\0b\8d\80\80\80\00\00"
  "\41\ce\d5\bb\56\41\ce\d5\bb\56\47\0b"
)
(assert_return (invoke "m0") (i32.const 0x0))
(assert_return (invoke "m1") (i32.const 0x1))
(assert_return (invoke "m2") (i32.const 0x0))
