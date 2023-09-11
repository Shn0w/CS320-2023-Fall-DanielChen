#use "./../assign0.ml";;

let rec
fact(x: int): int =
  if x > 0 then fact(x-1) * x  else 1
;;

let rec
me(x: int): int =
  if fact(x) = 0 then x else me(x+1)
;;

let myans = me(0)
;;