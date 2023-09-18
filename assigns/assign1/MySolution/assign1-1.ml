let rec findLen(i: int): int =
  if i = 0 then 0 else findLen(i/10) + 1
;;

let intrev10(n : int): int =
  let rec solve(i: int)(count: int)(sum: int): int =
    if i = 0 then sum else solve(i/10)(count-1)(sum + i mod 10 * int_of_float(10. ** float_of_int(count)))
  in solve n (findLen n -1) (0)
;;