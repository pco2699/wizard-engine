(module
  (func (export "m0") (param ) (result f64)
    (f64.trunc (f64.const 0x1.8000000000000p0))
  )
  (func (export "m1") (param ) (result f64)
    (f64.trunc (f64.const -0x1.B333333333333p0))
  )
  (func (export "m2") (param ) (result f64)
    (f64.trunc (f64.const -0x1.8000000000000p0))
  )
  (func (export "m3") (param ) (result f64)
    (f64.trunc (f64.const 0x1.B333333333333p0))
  )
)
(assert_return (invoke "m0" ) (f64.const 0x1.0000000000000p0))
(assert_return (invoke "m1" ) (f64.const -0x1.0000000000000p0))
(assert_return (invoke "m2" ) (f64.const -0x1.0000000000000p0))
(assert_return (invoke "m3" ) (f64.const 0x1.0000000000000p0))
