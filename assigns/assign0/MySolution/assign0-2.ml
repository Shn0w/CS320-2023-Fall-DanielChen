(*`#use "./../assign0.ml";; *)

let isPrime(n0: int): bool = 
  let rec 
  solve(n0: int) (x: int) : bool =
    if x=n0-1 then true 
    else if n0 mod (n0-x) = 0 
      then false 
    else solve (n0) (x+1)
  in 
  solve n0 1
;;