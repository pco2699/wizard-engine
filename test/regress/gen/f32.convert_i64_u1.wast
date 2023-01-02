(module
  (func (export "m0") (param ) (result f32)
    (f32.convert_i64_u (i64.const 0))
  )
  (func (export "m1") (param ) (result f32)
    (f32.convert_i64_u (i64.const 2147483647))
  )
  (func (export "m2") (param ) (result f32)
    (f32.convert_i64_u (i64.const 4294967295))
  )
  (func (export "m3") (param ) (result f32)
    (f32.convert_i64_u (i64.const 8589934591))
  )
  (func (export "m4") (param ) (result f32)
    (f32.convert_i64_u (i64.const 9223372036854775807))
  )
  (func (export "m5") (param ) (result f32)
    (f32.convert_i64_u (i64.const 18446744073709551615))
  )
)
(assert_return (invoke "m0" ) (f32.const 0))
(assert_return (invoke "m1" ) (f32.const 0x1.000000p31))
(assert_return (invoke "m2" ) (f32.const 0x1.000000p32))
(assert_return (invoke "m3" ) (f32.const 0x1.000000p33))
(assert_return (invoke "m4" ) (f32.const 0x1.000000p63))
(assert_return (invoke "m5" ) (f32.const 0x1.000000p64))
