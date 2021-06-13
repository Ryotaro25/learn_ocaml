(* int listは
  -[] 空リスト、あるいは
  -first :: rest 最初の要素がfirstで残りのリストがrest
    という形 *)

(* 目的:受け取ったリストlstの長さを返す *)
(* length : int list -> string *)
let rec length lst = match lst with 
  [] -> 0
  | first::rest -> 1 + length rest

(*　テスト *)
let test1 = length [] = 0
let test2 = length [2; 1; 6; 4; 7] = 5
let test3 = length [2; 2; 3] = 3
