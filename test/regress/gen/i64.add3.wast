(module
  (func (export "m0") (param ) (result i64)
    (i64.add (i64.const 4312000111000)(i64.const 9921111000111))
  )
  (func (export "m1") (param ) (result i64)
    (i64.add (i64.const 4294901760)(i64.const 65536))
  )
  (func (export "m2") (param ) (result i64)
    (i64.add (i64.const 268369920)(i64.const 65536))
  )
  (func (export "m3") (param ) (result i64)
    (i64.add (i64.const 4294901760)(i64.const 65535))
  )
)
(assert_return (invoke "m0" ) (i64.const 14233111111111))
(assert_return (invoke "m1" ) (i64.const 4294967296))
(assert_return (invoke "m2" ) (i64.const 268435456))
(assert_return (invoke "m3" ) (i64.const 4294967295))
