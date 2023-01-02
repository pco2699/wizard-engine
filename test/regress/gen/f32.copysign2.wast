(module
  (func (export "m0") (param f32 ) (result f32)
    (f32.copysign (local.get 0)(f32.const 0))
  )
  (func (export "m1") (param f32 ) (result f32)
    (f32.copysign (local.get 0)(f32.const 0x1.CCCCCCp-115))
  )
  (func (export "m2") (param f32 ) (result f32)
    (f32.copysign (local.get 0)(f32.const -0x1.CCCCCCp-51))
  )
)
(assert_return (invoke "m0" (f32.const nan)) (f32.const nan))
(assert_return (invoke "m1" (f32.const -0x1.CA8642p-113)) (f32.const 0x1.CA8642p-113))
(assert_return (invoke "m2" (f32.const 0x1.CA8642p-113)) (f32.const -0x1.CA8642p-113))
