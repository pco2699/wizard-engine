(module
  (func (export "m0") (param i32 ) (result i32)
    (i32.sub (local.get 0)(i32.const 7623891))
  )
  (func (export "m1") (param i32 ) (result i32)
    (i32.sub (local.get 0)(i32.const 1))
  )
  (func (export "m2") (param i32 ) (result i32)
    (i32.sub (local.get 0)(i32.const 444))
  )
)
(assert_return (invoke "m0" (i32.const 76324872)) (i32.const 68700981))
(assert_return (invoke "m1" (i32.const 0)) (i32.const 4294967295))
(assert_return (invoke "m2" (i32.const 444)) (i32.const 0))
