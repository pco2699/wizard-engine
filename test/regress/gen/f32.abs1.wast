(module
  (func (export "m0") (param ) (result f32)
    (f32.abs (f32.const -0x1.600000p2))
  )
  (func (export "m1") (param ) (result f32)
    (f32.abs (f32.const 0x1.AAAAAAp43))
  )
  (func (export "m2") (param ) (result f32)
    (f32.abs (f32.const 0))
  )
)
(assert_return (invoke "m0" ) (f32.const 0x1.600000p2))
(assert_return (invoke "m1" ) (f32.const 0x1.AAAAAAp43))
(assert_return (invoke "m2" ) (f32.const 0))
