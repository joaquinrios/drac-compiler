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
(func $main
  (export "main")  (result i32)
  (local $_temp i32)
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
  i32.const 34
  call $add
  drop

  i32.const 104
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 108
  call $add
  drop

  i32.const 108
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 44
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

  i32.const 108
  call $add
  drop

  i32.const 100
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
  i32.const 42
  return
)
)
