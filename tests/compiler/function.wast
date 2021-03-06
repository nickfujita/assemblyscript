(module
 (type $v (func))
 (type $i (func (result i32)))
 (type $I (func (result i64)))
 (type $f (func (result f32)))
 (type $F (func (result f64)))
 (type $iv (func (param i32)))
 (type $ii (func (param i32) (result i32)))
 (type $II (func (param i64) (result i64)))
 (type $ff (func (param f32) (result f32)))
 (type $FF (func (param f64) (result f64)))
 (type $iiv (func (param i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $IiI (func (param i64 i32) (result i64)))
 (type $fff (func (param f32 f32) (result f32)))
 (type $FFF (func (param f64 f64) (result f64)))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $function/v (; 0 ;) (type $v)
 )
 (func $function/i (; 1 ;) (type $i) (result i32)
  (return
   (i32.const 0)
  )
 )
 (func $function/I (; 2 ;) (type $I) (result i64)
  (return
   (i64.const 0)
  )
 )
 (func $function/f (; 3 ;) (type $f) (result f32)
  (return
   (f32.const 0)
  )
 )
 (func $function/F (; 4 ;) (type $F) (result f64)
  (return
   (f64.const 0)
  )
 )
 (func $function/iv (; 5 ;) (type $iv) (param $0 i32)
 )
 (func $function/ii (; 6 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (get_local $0)
  )
 )
 (func $function/II (; 7 ;) (type $II) (param $0 i64) (result i64)
  (return
   (get_local $0)
  )
 )
 (func $function/ff (; 8 ;) (type $ff) (param $0 f32) (result f32)
  (return
   (get_local $0)
  )
 )
 (func $function/FF (; 9 ;) (type $FF) (param $0 f64) (result f64)
  (return
   (get_local $0)
  )
 )
 (func $function/iiv (; 10 ;) (type $iiv) (param $0 i32) (param $1 i32)
 )
 (func $function/iii (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (i32.add
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $function/III (; 12 ;) (type $IiI) (param $0 i64) (param $1 i32) (result i64)
  (return
   (i64.add
    (get_local $0)
    (i64.extend_s/i32
     (get_local $1)
    )
   )
  )
 )
 (func $function/fff (; 13 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  (return
   (f32.add
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $function/FFF (; 14 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (return
   (f64.add
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $start (; 15 ;) (type $v)
  (call $function/v)
  (drop
   (call $function/i)
  )
  (drop
   (call $function/I)
  )
  (drop
   (call $function/f)
  )
  (drop
   (call $function/F)
  )
  (call $function/iv
   (i32.const 0)
  )
  (drop
   (call $function/ii
    (i32.const 0)
   )
  )
  (drop
   (call $function/II
    (i64.const 0)
   )
  )
  (drop
   (call $function/ff
    (f32.const 0)
   )
  )
  (drop
   (call $function/FF
    (f64.const 0)
   )
  )
  (call $function/iiv
   (i32.const 1)
   (i32.const 2)
  )
  (drop
   (call $function/iii
    (i32.const 1)
    (i32.const 2)
   )
  )
  (drop
   (call $function/III
    (i64.const 1)
    (i32.const 2)
   )
  )
  (drop
   (call $function/fff
    (f32.const 1)
    (f32.const 2)
   )
  )
  (drop
   (call $function/FFF
    (f64.const 1)
    (f64.const 2)
   )
  )
 )
)
(;
[program.elements]
  GLOBAL: NaN
  GLOBAL: Infinity
  FUNCTION_PROTOTYPE: isNaN
  FUNCTION_PROTOTYPE: isFinite
  FUNCTION_PROTOTYPE: clz
  FUNCTION_PROTOTYPE: ctz
  FUNCTION_PROTOTYPE: popcnt
  FUNCTION_PROTOTYPE: rotl
  FUNCTION_PROTOTYPE: rotr
  FUNCTION_PROTOTYPE: abs
  FUNCTION_PROTOTYPE: max
  FUNCTION_PROTOTYPE: min
  FUNCTION_PROTOTYPE: ceil
  FUNCTION_PROTOTYPE: floor
  FUNCTION_PROTOTYPE: copysign
  FUNCTION_PROTOTYPE: nearest
  FUNCTION_PROTOTYPE: reinterpret
  FUNCTION_PROTOTYPE: sqrt
  FUNCTION_PROTOTYPE: trunc
  FUNCTION_PROTOTYPE: load
  FUNCTION_PROTOTYPE: store
  FUNCTION_PROTOTYPE: sizeof
  FUNCTION_PROTOTYPE: select
  FUNCTION_PROTOTYPE: unreachable
  FUNCTION_PROTOTYPE: current_memory
  FUNCTION_PROTOTYPE: grow_memory
  FUNCTION_PROTOTYPE: changetype
  FUNCTION_PROTOTYPE: assert
  FUNCTION_PROTOTYPE: i8
  FUNCTION_PROTOTYPE: i16
  FUNCTION_PROTOTYPE: i32
  FUNCTION_PROTOTYPE: i64
  FUNCTION_PROTOTYPE: u8
  FUNCTION_PROTOTYPE: u16
  FUNCTION_PROTOTYPE: u32
  FUNCTION_PROTOTYPE: u64
  FUNCTION_PROTOTYPE: bool
  FUNCTION_PROTOTYPE: f32
  FUNCTION_PROTOTYPE: f64
  FUNCTION_PROTOTYPE: isize
  FUNCTION_PROTOTYPE: usize
  GLOBAL: HEAP_BASE
  FUNCTION_PROTOTYPE: function/v
  FUNCTION_PROTOTYPE: function/i
  FUNCTION_PROTOTYPE: function/I
  FUNCTION_PROTOTYPE: function/f
  FUNCTION_PROTOTYPE: function/F
  FUNCTION_PROTOTYPE: function/iv
  FUNCTION_PROTOTYPE: function/ii
  FUNCTION_PROTOTYPE: function/II
  FUNCTION_PROTOTYPE: function/ff
  FUNCTION_PROTOTYPE: function/FF
  FUNCTION_PROTOTYPE: function/iiv
  FUNCTION_PROTOTYPE: function/iii
  FUNCTION_PROTOTYPE: function/III
  FUNCTION_PROTOTYPE: function/fff
  FUNCTION_PROTOTYPE: function/FFF
[program.exports]
  
;)
