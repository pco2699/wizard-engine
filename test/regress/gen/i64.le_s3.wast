(module
  (func (export "m0") (param ) (result i32)
    (i64.le_s (i64.const 55444444444)(i64.const 54444444444))
  )
  (func (export "m1") (param ) (result i32)
    (i64.le_s (i64.const 55444444444)(i64.const 55444444444))
  )
  (func (export "m2") (param ) (result i32)
    (i64.le_s (i64.const 55444444444)(i64.const 56444444444))
  )
  (func (export "m3") (param ) (result i32)
    (i64.le_s (i64.const 18446744017265107172)(i64.const 18446744018265107172))
  )
  (func (export "m4") (param ) (result i32)
    (i64.le_s (i64.const 18446744018265107172)(i64.const 56444444444))
  )
)
(assert_return (invoke "m0" ) (i32.const 0))
(assert_return (invoke "m1" ) (i32.const 1))
(assert_return (invoke "m2" ) (i32.const 1))
(assert_return (invoke "m3" ) (i32.const 1))
(assert_return (invoke "m4" ) (i32.const 1))
