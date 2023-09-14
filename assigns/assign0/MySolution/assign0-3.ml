let string_init = String.init
let string_length = String.length
let chr = Char.chr
let ord = Char.code

let rec findLen (n:int) : int =
  if n / 10 = 0 then 1 else 1 + findLen (n/10)
;;

(*let f i: char =
  match i with
  | 0 -> 'H'
  | 1 -> 'e'
;;*)

(*let rec solve n: int = 
  string_init 5 (f)
  string_init 2 (fun i -> f(i+2))
  if n/10 = 0 then *)

let int2str(i0: int): string =
  let a = findLen i0
  in 
  let rec solve (i0: int): string =
    (* string_init 26 (fun i -> chr(ord('a') + i)) *)
    if i0 / 10 = 0 then string_init (a)(fun a -> chr(i0 mod 10))
    else string_init (a) (fun i -> chr((i0/i*10) mod 10))
  in solve i0
;;  
