(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\01\7f\02\7f\7e\03\82\80\80\80\00\01\00\07\97\80"
  "\80\80\00\01\13\62\72\65\61\6b\2d\62\72\5f\69\66"
  "\2d\6e\75\6d\2d\6e\75\6d\00\00\0a\96\80\80\80\00"
  "\01\90\80\80\80\00\00\41\32\42\33\20\00\0d\00\1a"
  "\1a\41\33\42\34\0b"
)
(assert_return
  (invoke "break-br_if-num-num" (i32.const 0x0))
  (i32.const 0x33)
  (i64.const 0x34)
)
(assert_return
  (invoke "break-br_if-num-num" (i32.const 0x1))
  (i32.const 0x32)
  (i64.const 0x33)
)
