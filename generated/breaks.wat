;; WebAssembly text format code generated by the drac compiler.

(module
  (import "drac" "printi" (func $printi (param i32) (result i32)))
  (import "drac" "printc" (func $printc (param i32) (result i32)))
  (import "drac" "prints" (func $prints (param i32) (result i32)))
  (import "drac" "println" (func $println (result i32)))
  (import "drac" "readi" (func $readi (result i32)))
  (import "drac" "reads" (func $reads (result i32)))
  (import "drac" "new" (func $new (param i32) (result i32)))
  (import "drac" "size" (func $size (param i32) (result i32)))
  (import "drac" "add" (func $add (param i32 i32) (result i32)))
  (import "drac" "get" (func $get (param i32 i32) (result i32)))
  (import "drac" "set" (func $set (param i32 i32 i32) (result i32)))
(func $sqr
  (param $x i32)
  (result i32)
  (local $_temp i32)
  local.get $x
  local.get $x
  i32.mul
  return
  i32.const 0
  return
)
(func $main
  (export "main")  (result i32)
  (local $_temp i32)
  (local $array i32)
  (local $sum i32)
  (local $i i32)
  (local $j i32)
  (local $x i32)
  i32.const 0
  call $new
  local.set $_temp
  local.get $_temp
  i32.const 1
  i32.const 1
  i32.add
  call $add
  drop
  i32.const 2
  i32.const 3
  i32.mul
  i32.const 2
  i32.mul
  call $add
  drop
  i32.const 2
  i32.const 3
  call $sqr
  
  i32.mul
  i32.const 2
  i32.add
  call $add
  drop
  i32.const 20
  i32.const 2
  i32.const 2
  i32.add
  i32.const 4
  i32.eq
  i32.sub
  call $add
  drop
  i32.const 5
  call $add
  drop
  i32.const 4
  i32.const 2
  i32.mul
  call $add
  drop
  i32.const 2
  i32.const 8
  i32.mul
  call $add
  drop
  i32.const 2
  i32.const 2
  i32.add
  i32.const 5
  i32.eq
  call $add
  drop
  i32.const 5
  call $sqr
  
  i32.const 2
  i32.sub
  call $add
  drop
  i32.const 5
  i32.const 2
  i32.mul
  i32.const 1
  i32.add
  call $add
  drop
  i32.const 1
  i32.const 4
  call $sqr
  
  i32.add
  call $add
  drop
  i32.const -3
  i32.const 2
  call $sqr
  
  call $sqr
  
  i32.add
  call $add
  drop
  i32.const 10
  i32.const 8
  i32.add
  call $add
  drop
  i32.const 30
  i32.const 6
  i32.sub
  i32.const 2
  i32.sub
  call $add
  drop
  i32.const 2
  i32.const 3
  i32.const 2
  i32.mul
  i32.const 1
  i32.sub
  i32.mul
  call $add
  drop
  i32.const 3
  call $sqr
  
  i32.const 5
  i32.const 2
  i32.mul
  i32.const 1
  i32.add
  i32.mul
  call $add
  drop
  i32.const 8
  i32.const 7
  i32.mul
  call $add
  drop
  i32.const 4
  call $sqr
  
  call $add
  drop
  i32.const 2
  i32.const 3
  i32.add
  i32.const 2
  i32.const 3
  i32.mul
  i32.lt_s
  call $add
  drop
  i32.const -1
  i32.const 2
  i32.const 2
  i32.mul
  i32.add
  call $add
  drop
  i32.const 2
  call $sqr
  
  call $add
  drop
  i32.const 3
  i32.const 4
  i32.add
  i32.const 2
  i32.mul
  call $add
  drop
  i32.const -10
  i32.const 17
  i32.add
  call $add
  drop
  i32.const 3
  i32.const 2
  i32.const 1
  i32.add
  i32.mul
  call $add
  drop
  i32.const 7
  i32.const 3
  i32.const 2
  call $sqr
  
  i32.mul
  i32.add
  call $add
  drop

  local.set $array
  i32.const 0
  local.set $sum
  i32.const 0
  local.set $i
block $00000
  loop $00001
  local.get $i
  local.get $array
  call $size
  
  i32.lt_s
  i32.eqz
  br_if $00000
  local.get $array
  local.get $i
  call $get
  
  local.set $x
  local.get $i
  i32.const 1
  i32.add
  local.set $i
  local.get $x
  i32.const 99
  i32.eq
  if
  br $00000
  end
  local.get $x
  i32.const 2
  i32.le_s
  if
  else
  i32.const 1
  local.set $j
block $00002
  loop $00003
  local.get $j
  i32.const 1
  i32.add
  local.set $j
  local.get $j
  local.get $x
  i32.gt_s
  if
  br $00002
  else
  local.get $x
  local.get $j
  i32.eq
    if
  local.get $sum
  local.get $x
  i32.add
  local.set $sum
  else
  local.get $x
  local.get $j
  i32.rem_s
  i32.const 0
  i32.eq
    if
  br $00002
  end
  end
  end
  i32.const 2
  i32.const 2
  i32.add
  i32.const 5
  i32.ne
  i32.eqz
  br_if $00002
  br $00003
  end
end
  end
  br $00001
  end
end
  local.get $sum
  i32.const 88
  i32.eq
  if
  i32.const 0
  call $new
  local.set $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  i32.const 34
  call $add
  drop

  i32.const 84
  call $add
  drop

  i32.const 104
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 112
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 103
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 97
  call $add
  drop

  i32.const 109
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 119
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 107
  call $add
  drop

  i32.const 115
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 102
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 110
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 33
  call $add
  drop

  i32.const 92
  call $add
  drop

  i32.const 110
  call $add
  drop

  i32.const 34
  call $add
  drop


  call $prints
  drop
  else
  i32.const 0
  call $new
  local.set $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  i32.const 34
  call $add
  drop

  i32.const 84
  call $add
  drop

  i32.const 104
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 115
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 112
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 103
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 97
  call $add
  drop

  i32.const 109
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 115
  call $add
  drop

  i32.const 117
  call $add
  drop

  i32.const 99
  call $add
  drop

  i32.const 107
  call $add
  drop

  i32.const 115
  call $add
  drop

  i32.const 33
  call $add
  drop

  i32.const 92
  call $add
  drop

  i32.const 110
  call $add
  drop

  i32.const 34
  call $add
  drop


  call $prints
  drop
  end
  i32.const 0
  return
)
)
