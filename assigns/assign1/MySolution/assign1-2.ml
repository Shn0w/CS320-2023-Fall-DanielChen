#use "CS320-2023-Fall-DanielChen/classlib/OCaml/MyOCaml.ml";;

let check a b: bool =
  a>b
;;

let solve cs1 cs2: string = 
  string_make_fwork
  (fun work -> 
    string_foreach cs1
    (fun a -> string_foreach cs2
    (fun b -> if check a b then work a else work b)))
;;

let string_merge(cs1: string)(cs2: string): string =
  solve cs1 cs2
;;

(*
  let rec solve(a: string)(b: string)(out: string) string =
    if string_length a=0 && string_length b = 0 
      then out
    else if string_length(a)=0
      then 
      solve(a)
      (delete(b))
      (string_snoc(out)(string_head(b)))
    else if string_length(b)=0
      then 
      solve (delete(a))
      (b)
      (string_snoc(out)(string_head(a)))
    else if string_head(a) >= string_head(b)
      then 
      solve(a)
      (delete(b))
      (*(func work -> string_foreach(out)(work); work(string_head(b))) *)
      (string_snoc(out)(string_head(b)))
    else
      solve (delete(a))
      (b)
      (string_snoc(out)(string_head(a)))
in solve cs1 cs2 ""
*)