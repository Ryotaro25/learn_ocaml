#use "fold_right.ml"

(* 目的: firstとrest_resultを加える *)
(* add_int : int -> int -> int *)
let add_int first rest_result = first + rest_result

(* 目的:受け取ったリストlstの各要素の和を求める *)
(* sum : int list -> int *)
let sum lst = fold_right add_int lst 0


(*　テスト *)
let test1 = sum [] = 0
let test2 = sum [2] = 2
let test3 = sum [1; 3] = 4
let test4 = sum [1; 2; 3; 4; 5; 6; 7; 8; 9; 10] = 55