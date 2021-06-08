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
(func $print_array
  (param $a i32)
  (result i32)
  (local $_temp i32)
  (local $first i32)
  (local $i i32)
  (local $n i32)
  i32.const 1
  local.set $first
  i32.const 39
  call $printc
  i32.const 0
  local.set $i
  local.get $a
  call $size
  local.set $n
block $00000
  loop $00001
  local.get $i
  local.get $n
  i32.lt_s
  i32.eqz
  br_if $00000
  local.get $first
  if
  i32.const 0
  local.set $first
  else
  i32.const 0
  call $new
  local.set $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  local.get $_temp
  i32.const 34
  call $add
  drop

  i32.const 44
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 34
  call $add
  drop


  call $prints
  end
  local.get $a
  local.get $i
  call $get
  call $printi
  local.get $i
  i32.const 1
  i32.add
  local.set $i
  br $00001
  end
end
  i32.const 39
  call $printc
)
(func $sum_array
  (param $a i32)
  (result i32)
  (local $_temp i32)
  (local $sum i32)
  (local $i i32)
  (local $n i32)
  i32.const 0
  local.set $sum
  i32.const 0
  local.set $i
  local.get $a
  call $size
  local.set $n
block $00002
  loop $00003
  local.get $i
  local.get $n
  i32.lt_s
  i32.eqz
  br_if $00002
  local.get $sum
  local.get $a
  local.get $i
  call $get
  i32.add
  local.set $sum
  local.get $i
  i32.const 1
  i32.add
  local.set $i
  br $00003
  end
end
  local.get $sum
  return
)
(func $max_array
  (param $a i32)
  (result i32)
  (local $_temp i32)
  (local $max i32)
  (local $i i32)
  (local $n i32)
  (local $x i32)
  local.get $a
  i32.const 0
  call $get
  local.set $max
  i32.const 0
  local.set $i
  local.get $a
  call $size
  local.set $n
block $00004
  loop $00005
  local.get $i
  local.get $n
  i32.lt_s
  i32.eqz
  br_if $00004
  local.get $a
  local.get $i
  call $get
  local.set $x
  local.get $x
  local.get $max
  i32.gt_s
  if
  local.get $x
  local.set $max
  end
  local.get $i
  i32.const 1
  i32.add
  local.set $i
  br $00005
  end
end
  local.get $max
  return
)
(func $sort_array
  (param $a i32)
  (result i32)
  (local $_temp i32)
  (local $i i32)
  (local $j i32)
  (local $t i32)
  (local $n i32)
  (local $swap i32)
  local.get $a
  call $size
  local.set $n
  i32.const 0
  local.set $i
block $00006
  loop $00007
  local.get $i
  local.get $n
  i32.const 1
  i32.sub
  i32.lt_s
  i32.eqz
  br_if $00006
  i32.const 0
  local.set $j
  i32.const 0
  local.set $swap
block $00008
  loop $00009
  local.get $j
  local.get $n
  local.get $i
  i32.sub
  i32.const 1
  i32.sub
  i32.lt_s
  i32.eqz
  br_if $00008
  local.get $a
  local.get $j
  call $get
  local.get $a
  local.get $j
  i32.const 1
  i32.add
  call $get
  i32.gt_s
  if
  local.get $a
  local.get $j
  call $get
  local.set $t
  local.get $a
  local.get $j
  local.get $a
  local.get $j
  i32.const 1
  i32.add
  call $get
  call $set
  local.get $a
  local.get $j
  i32.const 1
  i32.add
  local.get $t
  call $set
  i32.const 1
  local.set $swap
  end
  local.get $j
  i32.const 1
  i32.add
  local.set $j
  br $00009
  end
end
  local.get $swap
  i32.eqz
  if
  br $00006
  end
  local.get $i
  i32.const 1
  i32.add
  local.set $i
  br $00007
  end
end
)
(func $main
  (export "main")  (result i32)
  (local $_temp i32)
  (local $array i32)
  (local $sum i32)
  (local $max i32)
  i32.const 0
  call $new
  local.set $_temp
  local.get $_temp
  i32.const 73
  i32.const 77
  i32.const 56
  i32.const 10
  i32.const 14
  i32.const 54
  i32.const 75
  i32.const 62
  i32.const 71
  i32.const 10
  i32.const 3
  i32.const 71
  i32.const 16
  i32.const 49
  i32.const 66
  i32.const 91
  i32.const 69
  i32.const 62
  i32.const 25
  i32.const 65

  local.set $array
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
  i32.const 34
  call $add
  drop

  i32.const 79
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 103
  call $add
  drop

  i32.const 105
  call $add
  drop

  i32.const 110
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

  i32.const 97
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 97
  call $add
  drop

  i32.const 121
  call $add
  drop

  i32.const 58
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 34
  call $add
  drop


  call $prints
  local.get $array
  call $print_array
  call $println
  local.get $array
  call $sum_array
  local.set $sum
  local.get $array
  call $max_array
  local.set $max
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
  i32.const 34
  call $add
  drop

  i32.const 83
  call $add
  drop

  i32.const 117
  call $add
  drop

  i32.const 109
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 102
  call $add
  drop

  i32.const 32
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

  i32.const 97
  call $add
  drop

  i32.const 121
  call $add
  drop

  i32.const 58
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 34
  call $add
  drop


  call $prints
  local.get $sum
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
  local.get $_temp
  local.get $_temp
  local.get $_temp
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

  i32.const 77
  call $add
  drop

  i32.const 97
  call $add
  drop

  i32.const 120
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 102
  call $add
  drop

  i32.const 32
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

  i32.const 97
  call $add
  drop

  i32.const 121
  call $add
  drop

  i32.const 58
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 34
  call $add
  drop


  call $prints
  local.get $max
  call $printi
  call $println
  local.get $array
  call $sort_array
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
  i32.const 34
  call $add
  drop

  i32.const 83
  call $add
  drop

  i32.const 111
  call $add
  drop

  i32.const 114
  call $add
  drop

  i32.const 116
  call $add
  drop

  i32.const 101
  call $add
  drop

  i32.const 100
  call $add
  drop

  i32.const 32
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

  i32.const 97
  call $add
  drop

  i32.const 121
  call $add
  drop

  i32.const 58
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 32
  call $add
  drop

  i32.const 34
  call $add
  drop


  call $prints
  local.get $array
  call $print_array
  call $println
)
)
