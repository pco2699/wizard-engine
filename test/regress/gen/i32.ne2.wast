(module
  (func (export "m0") (param i32 ) (result i32)
    (i32.ne (local.get 0)(i32.const 99))
  )
  (func (export "m1") (param i32 ) (result i32)
    (i32.ne (local.get 0)(i32.const 4207861421))
  )
  (func (export "m2") (param i32 ) (result i32)
    (i32.ne (local.get 0)(i32.const 4207864526))
  )
)
(assert_return (invoke "m0" (i32.const 99)) (i32.const 0))
(assert_return (invoke "m1" (i32.const 4209958573)) (i32.const 1))
(assert_return (invoke "m2" (i32.const 4207864526)) (i32.const 0))
