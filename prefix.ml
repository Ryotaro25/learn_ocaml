(* 目的: 受け取ったlstの要素をそれぞれの先頭にnをつける *)
(* add_to_each : int -> int list list -> int list list *)
let rec add_to_each n lst = match lst with
  [] -> []
| first::rest -> (n::first) :: add_to_each n rest (*add_to_each n rest *)

(* test *)
let test4 = add_to_each 1 [[2; 3]] = [[1; 2; 3]]

(* 目的: 受け取ったlstの接頭語のリストを求める *)
(* prefix : int list-> int list list *)
let rec prefix lst = match lst with
  [] -> []
  |  first::rest -> [first] :: add_to_each first (* prefix rest *)