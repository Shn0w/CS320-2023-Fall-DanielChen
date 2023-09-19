#use "./../classlib/OCaml/MyOCaml.ml";;

let delete(cs: string): string = 
  string_init(string_length(cs) + 1)(
    fun i -> if i = string_length(cs)-1 then "" else string_get_at cs (i-1)
  )
;;

let string_merge(cs1: string)(cs2: string): string =
  let rec solve(a: string)(b: string)(out: string) string =
    if string_length(a)=0
      then string_snoc(out)(b)
    else
    if string_length(b)=0
      then string_snoc(out)(a)
    else
    if chr(string_head(a)) >= chr(string_head(b))
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
;;

(*string_merge("12")("34")*)