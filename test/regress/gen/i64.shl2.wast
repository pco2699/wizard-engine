(module
  (func (export "m0") (param i64 ) (result i64)
    (i64.shl (local.get 0)(i64.const 0))
  )
  (func (export "m1") (param i64 ) (result i64)
    (i64.shl (local.get 0)(i64.const 64))
  )
  (func (export "m2") (param i64 ) (result i64)
    (i64.shl (local.get 0)(i64.const 32))
  )
  (func (export "m3") (param i64 ) (result i64)
    (i64.shl (local.get 0)(i64.const 31))
  )
  (func (export "m4") (param i64 ) (result i64)
    (i64.shl (local.get 0)(i64.const 68))
  )
  (func (export "m5") (param i64 ) (result i64)
    (i64.shl (local.get 0)(i64.const 36))
  )
)
(assert_return (invoke "m0" (i64.const 1044480)) (i64.const 1044480))
(assert_return (invoke "m1" (i64.const 1044480)) (i64.const 1044480))
(assert_return (invoke "m2" (i64.const 1044480)) (i64.const 4486007441326080))
(assert_return (invoke "m3" (i64.const 4294967295)) (i64.const 9223372034707292160))
(assert_return (invoke "m4" (i64.const 1044480)) (i64.const 16711680))
(assert_return (invoke "m5" (i64.const 1044480)) (i64.const 71776119061217280))
