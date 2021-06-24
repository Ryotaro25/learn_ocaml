(* int listは
  -[] 空リスト、あるいは
  -first :: rest 最初の要素がfirstで残りのリストがrest
                 (restが自己参照のケース)
    という形 *)

(* 目的:initから初めてlstの要素を右から順にfに流しこむ *)
(* fold_right : ('a -> 'b -> 'b) -> 'a list -> 'b -> 'b *)

let rec fold_right f lst init = match lst with
  [] -> init
  | first :: rest -> f first (fold_right f rest init)
