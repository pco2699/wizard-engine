(module
  (func (export "m0") (param i64 i64) (result i32)
    (i64.lt_s (local.get 0)(local.get 1))
  )
)
(assert_return (invoke "m0" (i64.const 55000000000)(i64.const 54000000000)) (i32.const 0))
(assert_return (invoke "m0" (i64.const 55000000000)(i64.const 55000000000)) (i32.const 0))
(assert_return (invoke "m0" (i64.const 55000000000)(i64.const 56000000000)) (i32.const 1))
(assert_return (invoke "m0" (i64.const 18446744017709551616)(i64.const 18446744018709551616)) (i32.const 1))
(assert_return (invoke "m0" (i64.const 18446744018709551616)(i64.const 56000000000)) (i32.const 1))
