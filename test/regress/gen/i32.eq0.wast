(module
  (func (export "m0") (param i32 i32) (result i32)
    (i32.eq (local.get 0)(local.get 1))
  )
)
(assert_return (invoke "m0" (i32.const 0)(i32.const 0)) (i32.const 1))
(assert_return (invoke "m0" (i32.const 4207861421)(i32.const 4207861421)) (i32.const 1))
(assert_return (invoke "m0" (i32.const 3939429070)(i32.const 4207864526)) (i32.const 0))
