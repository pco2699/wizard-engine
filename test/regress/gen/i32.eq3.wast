(module
  (func (export "m0") (param ) (result i32)
    (i32.eq (i32.const 0)(i32.const 0))
  )
  (func (export "m1") (param ) (result i32)
    (i32.eq (i32.const 4207861421)(i32.const 4207861421))
  )
  (func (export "m2") (param ) (result i32)
    (i32.eq (i32.const 3939429070)(i32.const 4207864526))
  )
)
(assert_return (invoke "m0" ) (i32.const 1))
(assert_return (invoke "m1" ) (i32.const 1))
(assert_return (invoke "m2" ) (i32.const 0))
