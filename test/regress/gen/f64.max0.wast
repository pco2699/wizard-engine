(module
  (func (export "m0") (param f64 f64) (result f64)
    (f64.max (local.get 0)(local.get 1))
  )
)
(assert_return (invoke "m0" (f64.const 0)(f64.const 0x1.0000000000000p31)) (f64.const 0x1.0000000000000p31))
(assert_return (invoke "m0" (f64.const 0x1.0000000000000p31)(f64.const 0)) (f64.const 0x1.0000000000000p31))
(assert_return (invoke "m0" (f64.const -0x1.0000000000000p31)(f64.const 0x1.0000000000000p31)) (f64.const 0x1.0000000000000p31))
(assert_return (invoke "m0" (f64.const 0)(f64.const -0)) (f64.const 0))
(assert_return (invoke "m0" (f64.const -0)(f64.const 0)) (f64.const 0))
(assert_return (invoke "m0" (f64.const 0x1.0000042280000p-1023)(f64.const nan)) (f64.const nan))
(assert_return (invoke "m0" (f64.const nan)(f64.const 0x1.0000042280000p-1023)) (f64.const nan))
