(module
  (func (export "m0") (param i32) (result i64)
    (i64.extend_i32_u (local.get 0))
  )
)
(assert_return (invoke "m0" (i32.const 1)) (i64.const 1))
(assert_return (invoke "m0" (i32.const 4207861421)) (i64.const 4207861421))
(assert_return (invoke "m0" (i32.const 2060377773)) (i64.const 2060377773))
(assert_return (invoke "m0" (i32.const 4294967295)) (i64.const 4294967295))
(assert_return (invoke "m0" (i32.const 99889988)) (i64.const 99889988))
