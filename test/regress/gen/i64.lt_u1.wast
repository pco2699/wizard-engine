(module
  (func (export "m0") (param i64) (result i32)
    (i64.lt_u (i64.const 55111111111)(local.get 0))
  )
  (func (export "m1") (param i64) (result i32)
    (i64.lt_u (i64.const 55111111111)(local.get 0))
  )
  (func (export "m2") (param i64) (result i32)
    (i64.lt_u (i64.const 55111111111)(local.get 0))
  )
  (func (export "m3") (param i64) (result i32)
    (i64.lt_u (i64.const 18446744017598440505)(local.get 0))
  )
  (func (export "m4") (param i64) (result i32)
    (i64.lt_u (i64.const 18446744018598440505)(local.get 0))
  )
)
(assert_return (invoke "m0" (i64.const 54111111111)) (i32.const 0))
(assert_return (invoke "m1" (i64.const 55111111111)) (i32.const 0))
(assert_return (invoke "m2" (i64.const 56111111111)) (i32.const 1))
(assert_return (invoke "m3" (i64.const 18446744018598440505)) (i32.const 1))
(assert_return (invoke "m4" (i64.const 56111111111)) (i32.const 0))
