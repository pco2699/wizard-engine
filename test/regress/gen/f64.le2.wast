(module
  (func (export "m0") (param f64 ) (result i32)
    (f64.le (local.get 0)(f64.const 0))
  )
  (func (export "m1") (param f64 ) (result i32)
    (f64.le (local.get 0)(f64.const -0x1.0000000000000p31))
  )
  (func (export "m2") (param f64 ) (result i32)
    (f64.le (local.get 0)(f64.const 0x1.0000000000000p31))
  )
  (func (export "m3") (param f64 ) (result i32)
    (f64.le (local.get 0)(f64.const 0))
  )
  (func (export "m4") (param f64 ) (result i32)
    (f64.le (local.get 0)(f64.const 0))
  )
)
(assert_return (invoke "m0" (f64.const 0)) (i32.const 1))
(assert_return (invoke "m1" (f64.const 0x1.0000000000000p31)) (i32.const 0))
(assert_return (invoke "m2" (f64.const -0x1.0000000000000p31)) (i32.const 1))
(assert_return (invoke "m3" (f64.const -0)) (i32.const 1))
(assert_return (invoke "m4" (f64.const nan)) (i32.const 0))
