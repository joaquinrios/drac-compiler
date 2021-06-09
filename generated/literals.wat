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
(global $fails (mut i32) (i32.const 0))
(func $assert
  (param $value1 i32)
  (param $value2 i32)
  (param $message i32)
  (result i32)
  (local $_temp i32)
  local.get $value1
  local.get $value2
  i32.ne
  if
  global.get $fails
  i32.const 1
  i32.add
  global.set $fails
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
  i32.const 65
  call $add
  drop

  i32.const 115
  call $add
  drop

  i32.const 115
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 114
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

  i32.const 102
  call $add
  drop

  i32.const 97
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 108
  call $add
  drop

  i32.const 117
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 58
  call $add
  drop

  i32.const 32
  call $add
  drop


  call $prints
  drop
  local.get $message
  call $prints
  drop
  call $println
  drop
  end
  i32.const 0
  return
)
(func $main
  (export "main")  (result i32)
  (local $_temp i32)
  (local $s i32)
  (local $a i32)
  (local $i i32)
  (local $n i32)
  i32.const 0
  global.set $fails
  i32.const 10
  i32.const 10
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
  i32.const 101
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 110
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 110
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 119
  call $add
  drop

  i32.const 108
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

  i32.const 32
  call $add
  drop

  i32.const 108
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 116
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 97
  call $add
  drop

  i32.const 108
  call $add
  drop


  call $assert
  drop
  i32.const 13
  i32.const 13
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
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  i32.const 101
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 110
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 99
  call $add
  drop

  i32.const 97
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 97
  call $add
  drop

  i32.const 103
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 116
  call $add
  drop

  i32.const 117
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 110
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 108
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 116
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 97
  call $add
  drop

  i32.const 108
  call $add
  drop


  call $assert
  drop
  i32.const 9
  i32.const 9
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
  i32.const 101
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 110
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 116
  call $add
  drop

  i32.const 97
  call $add
  drop

  i32.const 98
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 108
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 116
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 97
  call $add
  drop

  i32.const 108
  call $add
  drop


  call $assert
  drop
  i32.const 92
  i32.const 92
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
  i32.const 101
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 110
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 98
  call $add
  drop

  i32.const 97
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

  i32.const 108
  call $add
  drop

  i32.const 97
  call $add
  drop

  i32.const 115
  call $add
  drop

  i32.const 104
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 108
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 116
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 97
  call $add
  drop

  i32.const 108
  call $add
  drop


  call $assert
  drop
  i32.const 39
  i32.const 39
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
  local.get $_temp
  local.get $_temp
  i32.const 101
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 110
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 115
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 110
  call $add
  drop

  i32.const 103
  call $add
  drop

  i32.const 108
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 113
  call $add
  drop

  i32.const 117
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 116
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 108
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 116
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 97
  call $add
  drop

  i32.const 108
  call $add
  drop


  call $assert
  drop
  i32.const 34
  i32.const 34
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
  local.get $_temp
  local.get $_temp
  i32.const 101
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 110
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 100
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 117
  call $add
  drop

  i32.const 98
  call $add
  drop

  i32.const 108
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 113
  call $add
  drop

  i32.const 117
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 116
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 108
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 116
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 97
  call $add
  drop

  i32.const 108
  call $add
  drop


  call $assert
  drop
  i32.const 65
  i32.const 65
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
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  i32.const 101
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 110
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 108
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 116
  call $add
  drop

  i32.const 116
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 65
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 108
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 116
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 97
  call $add
  drop

  i32.const 108
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 99
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 100
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

  i32.const 111
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 110
  call $add
  drop

  i32.const 116
  call $add
  drop


  call $assert
  drop
  i32.const 8364
  i32.const 8364
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
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  i32.const 101
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 110
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 117
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 108
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 116
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 97
  call $add
  drop

  i32.const 108
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 99
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 100
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

  i32.const 111
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 110
  call $add
  drop

  i32.const 116
  call $add
  drop


  call $assert
  drop
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
  i32.const 161
  call $add
  drop

  i32.const 8364
  call $add
  drop

  i32.const 115
  call $add
  drop

  i32.const 116
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 110
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 241
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 8364
  call $add
  drop

  i32.const 115
  call $add
  drop

  i32.const 116
  call $add
  drop

  i32.const 225
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 98
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 110
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 209
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 241
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 33
  call $add
  drop

  i32.const 10
  call $add
  drop


  local.set $s
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
  i32.const 161
  call $add
  drop
  i32.const 8364
  call $add
  drop
  i32.const 115
  call $add
  drop
  i32.const 116
  call $add
  drop
  i32.const 101
  call $add
  drop
  i32.const 32
  call $add
  drop
  i32.const 110
  call $add
  drop
  i32.const 105
  call $add
  drop
  i32.const 241
  call $add
  drop
  i32.const 111
  call $add
  drop
  i32.const 32
  call $add
  drop
  i32.const 8364
  call $add
  drop
  i32.const 115
  call $add
  drop
  i32.const 116
  call $add
  drop
  i32.const 225
  call $add
  drop
  i32.const 32
  call $add
  drop
  i32.const 98
  call $add
  drop
  i32.const 105
  call $add
  drop
  i32.const 101
  call $add
  drop
  i32.const 110
  call $add
  drop
  i32.const 32
  call $add
  drop
  i32.const 209
  call $add
  drop
  i32.const 111
  call $add
  drop
  i32.const 241
  call $add
  drop
  i32.const 111
  call $add
  drop
  i32.const 33
  call $add
  drop
  i32.const 10
  call $add
  drop

  local.set $a
  i32.const 0
  local.set $i
  local.get $s
  call $size
  local.set $n
  local.get $a
  call $size
  call $printi
  drop
  call $println
  drop
block $00000
  loop $00001
  local.get $i
  local.get $n
  i32.lt_s
  i32.eqz
  br_if $00000
  local.get $i
  call $printi
  drop
  call $println
  drop
  local.get $a
  local.get $i
  call $get
  local.get $s
  local.get $i
  call $get
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
  i32.const 101
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 110
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 115
  call $add
  drop

  i32.const 116
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 110
  call $add
  drop

  i32.const 103
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 108
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 116
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 97
  call $add
  drop

  i32.const 108
  call $add
  drop


  call $assert
  drop
  local.get $i
  i32.const 1
  i32.add
  local.set $i
  br $00001
  end
end
  global.get $fails
  call $printi
  drop
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
  local.get $_temp
  i32.const 32
  call $add
  drop

  i32.const 97
  call $add
  drop

  i32.const 115
  call $add
  drop

  i32.const 115
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 114
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

  i32.const 102
  call $add
  drop

  i32.const 97
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 108
  call $add
  drop

  i32.const 117
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 40
  call $add
  drop

  i32.const 115
  call $add
  drop

  i32.const 41
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 102
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 117
  call $add
  drop

  i32.const 110
  call $add
  drop

  i32.const 100
  call $add
  drop

  i32.const 46
  call $add
  drop


  call $prints
  drop
  call $println
  drop
  local.get $a
  call $prints
  drop
  i32.const 0
  return
)
)
