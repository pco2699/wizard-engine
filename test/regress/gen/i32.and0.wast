(module
  (func (export "m0") (param i32 i32) (result i32)
    (i32.and (local.get 0)(local.get 1))
  )
)
(assert_return (invoke "m0" (i32.const 4294963200)(i32.const 1048575)) (i32.const 1044480))
