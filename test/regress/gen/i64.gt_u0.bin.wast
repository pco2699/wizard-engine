(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7e\7e\01\7f\03\82\80\80\80\00\01\00\07\86\80"
  "\80\80\00\01\02\6d\30\00\00\0a\8d\80\80\80\00\01"
  "\87\80\80\80\00\00\20\00\20\01\56\0b"
)
(assert_return
  (invoke "m0" (i64.const 0xc_e21f_a955) (i64.const 0xc_a684_df55))
  (i32.const 0x1)
)
(assert_return
  (invoke "m0" (i64.const 0xc_e21f_a955) (i64.const 0xc_e21f_a955))
  (i32.const 0x0)
)
(assert_return
  (invoke "m0" (i64.const 0xc_e21f_a955) (i64.const 0xd_1dba_7355))
  (i32.const 0x0)
)
(assert_return
  (invoke "m0"
    (i64.const 0xffff_fff2_e245_8cab)
    (i64.const 0xffff_fff3_1de0_56ab)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "m0" (i64.const 0xffff_fff3_1de0_56ab) (i64.const 0xd_1dba_7355))
  (i32.const 0x1)
)
