(module
  (func (export "m0") (param ) (result f32)
    (f32.mul (f32.const 0x1.600000p2)(f32.const -0x1.C00000p1))
  )
  (func (export "m1") (param ) (result f32)
    (f32.mul (f32.const 0)(f32.const 0))
  )
)
(assert_return (invoke "m0" ) (f32.const -0x1.340000p4))
(assert_return (invoke "m1" ) (f32.const 0))
