(module
  (func (export "m0") (param ) (result i32)
    (i32.ge_s (i32.const 55)(i32.const 54))
  )
  (func (export "m1") (param ) (result i32)
    (i32.ge_s (i32.const 55)(i32.const 55))
  )
  (func (export "m2") (param ) (result i32)
    (i32.ge_s (i32.const 55)(i32.const 56))
  )
  (func (export "m3") (param ) (result i32)
    (i32.ge_s (i32.const 4294967240)(i32.const 4294967241))
  )
  (func (export "m4") (param ) (result i32)
    (i32.ge_s (i32.const 4294967241)(i32.const 56))
  )
)
(assert_return (invoke "m0" ) (i32.const 1))
(assert_return (invoke "m1" ) (i32.const 1))
(assert_return (invoke "m2" ) (i32.const 0))
(assert_return (invoke "m3" ) (i32.const 0))
(assert_return (invoke "m4" ) (i32.const 0))
