(module binary
  "\00\61\73\6d\01\00\00\00\01\90\80\80\80\00\03\60"
  "\00\00\60\01\7f\02\7f\7f\60\00\03\7f\7e\7f\03\83"
  "\80\80\80\00\02\00\01\07\89\80\80\80\00\01\05\6d"
  "\75\6c\74\69\00\01\0a\af\80\80\80\00\02\82\80\80"
  "\80\00\00\0b\a2\80\80\80\00\00\20\00\04\7f\41\08"
  "\05\41\09\0b\20\00\04\02\41\01\42\02\10\00\41\03"
  "\05\41\7f\42\7e\41\7d\0b\1a\1a\0b"
)
(assert_return
  (invoke "multi" (i32.const 0x0))
  (i32.const 0x9)
  (i32.const 0xffff_ffff)
)
(assert_return (invoke "multi" (i32.const 0x1)) (i32.const 0x8) (i32.const 0x1))
(assert_return (invoke "multi" (i32.const 0xd)) (i32.const 0x8) (i32.const 0x1))
(assert_return
  (invoke "multi" (i32.const 0xffff_fffb))
  (i32.const 0x8)
  (i32.const 0x1)
)
