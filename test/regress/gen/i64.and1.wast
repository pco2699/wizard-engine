(module
  (func (export "m0") (param i64) (result i64)
    (i64.and (i64.const 18446744073692839680)(local.get 0))
  )
)
(assert_return (invoke "m0" (i64.const 18374966859431673855)) (i64.const 18374966859414961920))
