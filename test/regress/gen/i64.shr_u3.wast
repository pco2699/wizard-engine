(module
  (func (export "m0") (param ) (result i64)
    (i64.shr_u (i64.const 1044480)(i64.const 0))
  )
  (func (export "m1") (param ) (result i64)
    (i64.shr_u (i64.const 4486007728780100)(i64.const 32))
  )
  (func (export "m2") (param ) (result i64)
    (i64.shr_u (i64.const 1044480)(i64.const 64))
  )
  (func (export "m3") (param ) (result i64)
    (i64.shr_u (i64.const 18446744073709551615)(i64.const 63))
  )
  (func (export "m4") (param ) (result i64)
    (i64.shr_u (i64.const 1044480)(i64.const 68))
  )
)
(assert_return (invoke "m0" ) (i64.const 1044480))
(assert_return (invoke "m1" ) (i64.const 1044480))
(assert_return (invoke "m2" ) (i64.const 1044480))
(assert_return (invoke "m3" ) (i64.const 1))
(assert_return (invoke "m4" ) (i64.const 65280))
