(module
  (func (export "m0") (param ) (result i32)
    (i32.reinterpret_f32 (f32.const 0))
  )
  (func (export "m1") (param ) (result i32)
    (i32.reinterpret_f32 (f32.const -0x1.000000p97))
  )
  (func (export "m2") (param ) (result i32)
    (i32.reinterpret_f32 (f32.const 0x1.2468CEp-95))
  )
)
(assert_return (invoke "m0" ) (i32.const 0))
(assert_return (invoke "m1" ) (i32.const 4026531840))
(assert_return (invoke "m2" ) (i32.const 269628519))
