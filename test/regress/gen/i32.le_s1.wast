(module
  (func (export "m0") (param i32) (result i32)
    (i32.le_s (i32.const 55)(local.get 0))
  )
  (func (export "m1") (param i32) (result i32)
    (i32.le_s (i32.const 55)(local.get 0))
  )
  (func (export "m2") (param i32) (result i32)
    (i32.le_s (i32.const 55)(local.get 0))
  )
  (func (export "m3") (param i32) (result i32)
    (i32.le_s (i32.const 4294967240)(local.get 0))
  )
  (func (export "m4") (param i32) (result i32)
    (i32.le_s (i32.const 4294967241)(local.get 0))
  )
)
(assert_return (invoke "m0" (i32.const 54)) (i32.const 0))
(assert_return (invoke "m1" (i32.const 55)) (i32.const 1))
(assert_return (invoke "m2" (i32.const 56)) (i32.const 1))
(assert_return (invoke "m3" (i32.const 4294967241)) (i32.const 1))
(assert_return (invoke "m4" (i32.const 56)) (i32.const 1))
