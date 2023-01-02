(module
  (func (export "m0") (param f64) (result i32)
    (i32.trunc_f64_s (local.get 0))
  )
)
(assert_return (invoke "m0" (f64.const 0)) (i32.const 0))
(assert_return (invoke "m0" (f64.const 0x1.3900000000000p10)) (i32.const 1252))
(assert_return (invoke "m0" (f64.const -0x1.0000000000000p31)) (i32.const 2147483648))
(assert_trap (invoke "m0" (f64.const 0x1.0000000000000p31)) "")
(assert_trap (invoke "m0" (f64.const 0x1.0000000000000p32)) "")
