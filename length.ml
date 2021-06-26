#use "fold_right.ml"
(* int listは
  -[] 空リスト、あるいは
  -first :: rest 最初の要素がfirstで残りのリストがrest
    という形 *)

(* 目的:firstは無視してrest_resultに1を加える *)
(* add_one : int -> int -> int*)
let add_one first rest_result = 1 + rest_result

(* 目的:受け取ったリストlstの長さを返す *)
(* length : int list -> string *)
let length lst = fold_right add_one lst 0

(*　テスト *)
let test1 = length [] = 0
let test2 = length [2; 1; 6; 4; 7] = 5
let test3 = length [2; 2; 3] = 3
