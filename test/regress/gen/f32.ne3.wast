(module
  (func (export "m0") (param ) (result i32)
    (f32.ne (f32.const 0)(f32.const 0))
  )
  (func (export "m1") (param ) (result i32)
    (f32.ne (f32.const 0x1.000000p31)(f32.const -0x1.000000p31))
  )
  (func (export "m2") (param ) (result i32)
    (f32.ne (f32.const -0)(f32.const 0))
  )
  (func (export "m3") (param ) (result i32)
    (f32.ne (f32.const nan)(f32.const 0))
  )
)
(assert_return (invoke "m0" ) (i32.const 0))
(assert_return (invoke "m1" ) (i32.const 1))
(assert_return (invoke "m2" ) (i32.const 0))
(assert_return (invoke "m3" ) (i32.const 1))
