(module
  (func (export "m0") (param f64 f64) (result f64)
    (f64.add (local.get 0)(local.get 1))
  )
)
(assert_return (invoke "m0" (f64.const 0x1.A000000000000p2)(f64.const 0x1.6800000000000p3)) (f64.const 0x1.1C00000000000p4))
(assert_return (invoke "m0" (f64.const 0)(f64.const 0)) (f64.const 0))
