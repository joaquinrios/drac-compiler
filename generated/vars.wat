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
(global $a (mut i32) (i32.const 0))
(global $b (mut i32) (i32.const 0))
(global $c (mut i32) (i32.const 0))
(func $x
  (param $b i32)
  (result i32)
  (local $_temp i32)
  (local $c i32)
  i32.const 5
  local.set $c
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
  i32.const 34
  call $add
  drop

  i32.const 70
  call $add
  drop

  i32.const 117
  call $add
  drop

  i32.const 110
  call $add
  drop

  i32.const 99
  call $add
  drop

  i32.const 116
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 110
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 120
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
  i32.const 34
  call $add
  drop

  i32.const 97
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 61
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 34
  call $add
  drop


  call $prints
  global.get $a
  call $printi
  call $println
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
  i32.const 34
  call $add
  drop

  i32.const 98
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 61
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 34
  call $add
  drop


  call $prints
  local.get $b
  call $printi
  call $println
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
  i32.const 34
  call $add
  drop

  i32.const 99
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 61
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 34
  call $add
  drop


  call $prints
  local.get $c
  call $printi
  call $println
)
(func $main
  (export "main")  (result i32)
  (local $_temp i32)
  (local $x i32)
  i32.const 1
  global.set $a
  i32.const 2
  global.set $b
  i32.const 3
  global.set $c
  i32.const 4
  local.set $x
  local.get $x
  call $x
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
  i32.const 34
  call $add
  drop

  i32.const 70
  call $add
  drop

  i32.const 117
  call $add
  drop

  i32.const 110
  call $add
  drop

  i32.const 99
  call $add
  drop

  i32.const 116
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 110
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 109
  call $add
  drop

  i32.const 97
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 110
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
  i32.const 34
  call $add
  drop

  i32.const 97
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 61
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 34
  call $add
  drop


  call $prints
  global.get $a
  call $printi
  call $println
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
  i32.const 34
  call $add
  drop

  i32.const 98
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 61
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 34
  call $add
  drop


  call $prints
  global.get $b
  call $printi
  call $println
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
  i32.const 34
  call $add
  drop

  i32.const 99
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 61
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 34
  call $add
  drop


  call $prints
  global.get $c
  call $printi
  call $println
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
  i32.const 34
  call $add
  drop

  i32.const 120
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 61
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 34
  call $add
  drop


  call $prints
  local.get $x
  call $printi
  call $println
)
)
