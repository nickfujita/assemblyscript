(module
 (type $v (func))
 (global $for/i (mut i32) (i32.const 0))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (set_global $for/i
   (i32.const 0)
  )
  (loop $continue|0
   (if
    (i32.lt_s
     (get_global $for/i)
     (i32.const 10)
    )
    (block
     (set_global $for/i
      (i32.add
       (get_global $for/i)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (if
   (i32.ne
    (get_global $for/i)
    (i32.const 10)
   )
   (unreachable)
  )
  (loop $continue|1
   (if
    (i32.lt_s
     (get_local $0)
     (i32.const 10)
    )
    (block
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $continue|1)
    )
   )
  )
  (loop $continue|2
   (if
    (i32.gt_s
     (get_global $for/i)
     (i32.const 0)
    )
    (block
     (set_global $for/i
      (i32.sub
       (get_global $for/i)
       (i32.const 1)
      )
     )
     (br $continue|2)
    )
   )
  )
  (if
   (get_global $for/i)
   (unreachable)
  )
  (block $break|3
   (loop $continue|3
    (br_if $break|3
     (i32.eq
      (get_global $for/i)
      (i32.const 10)
     )
    )
    (set_global $for/i
     (i32.add
      (get_global $for/i)
      (i32.const 1)
     )
    )
    (br $continue|3)
   )
  )
  (loop $continue|4
   (set_global $for/i
    (i32.sub
     (get_global $for/i)
     (i32.const 1)
    )
   )
   (br_if $continue|4
    (get_global $for/i)
   )
  )
 )
)
