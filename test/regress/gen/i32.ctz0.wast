(module
  (func (export "m0") (param i32) (result i32)
    (i32.ctz (local.get 0))
  )
)
(assert_return (invoke "m0" (i32.const 0)) (i32.const 32))
(assert_return (invoke "m0" (i32.const 32768)) (i32.const 15))
(assert_return (invoke "m0" (i32.const 2147483648)) (i32.const 31))
(assert_return (invoke "m0" (i32.const 1)) (i32.const 0))
