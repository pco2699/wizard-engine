(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7d\03\84\80\80\80\00\03\00\00\00\07\90\80"
  "\80\80\00\03\02\6d\30\00\00\02\6d\31\00\01\02\6d"
  "\32\00\02\0a\a7\80\80\80\00\03\85\80\80\80\00\00"
  "\41\00\be\0b\89\80\80\80\00\00\41\80\80\80\80\7f"
  "\be\0b\89\80\80\80\00\00\41\e7\e8\c8\80\01\be\0b"
)
(assert_return (invoke "m0") (f32.const 0x0p+0))
(assert_return (invoke "m1") (f32.const -0x1p+97))
(assert_return (invoke "m2") (f32.const 0x1.2468_cep-95))
