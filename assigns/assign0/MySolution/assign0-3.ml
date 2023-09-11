let string_init = String.init
let string_length = String.length

let int2str(i0: int): string =
  let rec
  solve : string =
    if i0 / 10 = 0 then string_of_int(i0 mod 10) else string_init((8 solve i0) + (1 string_of_int(i0 mod 10)))

in solve
;;  