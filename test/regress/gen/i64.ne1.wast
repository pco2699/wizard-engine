(module
  (func (export "m0") (param i64) (result i32)
    (i64.ne (i64.const 99)(local.get 0))
  )
  (func (export "m1") (param i64) (result i32)
    (i64.ne (i64.const 1077749394773)(local.get 0))
  )
  (func (export "m2") (param i64) (result i32)
    (i64.ne (i64.const 18072640525455995716)(local.get 0))
  )
)
(assert_return (invoke "m0" (i64.const 99)) (i32.const 0))
(assert_return (invoke "m1" (i64.const 1077212523861)) (i32.const 1))
(assert_return (invoke "m2" (i64.const 18072640525455995716)) (i32.const 0))
