(module
  (func (export "m0") (param f32) (result i32)
    (i32.trunc_sat_f32_s (local.get 0))
  )
)
(assert_return (invoke "m0" (f32.const 0)) (i32.const 0))
(assert_return (invoke "m0" (f32.const 0x1.000000p31)) (i32.const 2147483647))
(assert_return (invoke "m0" (f32.const nan)) (i32.const 0))
(assert_return (invoke "m0" (f32.const -0x1.000000p31)) (i32.const 2147483648))
(assert_return (invoke "m0" (f32.const -0x1.65A0BCp31)) (i32.const 2147483648))
