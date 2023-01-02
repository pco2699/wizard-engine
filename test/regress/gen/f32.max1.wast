(module
  (func (export "m0") (param f32) (result f32)
    (f32.max (f32.const 0)(local.get 0))
  )
  (func (export "m1") (param f32) (result f32)
    (f32.max (f32.const 0x1.000000p31)(local.get 0))
  )
  (func (export "m2") (param f32) (result f32)
    (f32.max (f32.const -0x1.000000p31)(local.get 0))
  )
  (func (export "m3") (param f32) (result f32)
    (f32.max (f32.const 0)(local.get 0))
  )
  (func (export "m4") (param f32) (result f32)
    (f32.max (f32.const -0)(local.get 0))
  )
  (func (export "m5") (param f32) (result f32)
    (f32.max (f32.const 0x1.500000p5)(local.get 0))
  )
  (func (export "m6") (param f32) (result f32)
    (f32.max (f32.const nan)(local.get 0))
  )
)
(assert_return (invoke "m0" (f32.const 0x1.000000p31)) (f32.const 0x1.000000p31))
(assert_return (invoke "m1" (f32.const 0)) (f32.const 0x1.000000p31))
(assert_return (invoke "m2" (f32.const 0x1.000000p31)) (f32.const 0x1.000000p31))
(assert_return (invoke "m3" (f32.const -0)) (f32.const 0))
(assert_return (invoke "m4" (f32.const 0)) (f32.const 0))
(assert_return (invoke "m5" (f32.const nan)) (f32.const nan))
(assert_return (invoke "m6" (f32.const 0x1.500000p5)) (f32.const nan))
