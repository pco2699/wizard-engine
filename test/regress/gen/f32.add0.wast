(module
  (func (export "m0") (param f32 f32) (result f32)
    (f32.add (local.get 0)(local.get 1))
  )
)
(assert_return (invoke "m0" (f32.const 0x1.600000p2)(f32.const -0x1.C00000p1)) (f32.const 0x1.000000p1))
(assert_return (invoke "m0" (f32.const 0)(f32.const 0)) (f32.const 0))
