(* int listは
  -[] 空リスト、あるいは
  -first :: rest 最初の要素がfirstで残りのリストがrest
    という形 *)

(* 目的:受け取ったリストlstから偶数を返す *)
(* even : int list -> list *)
let rec even lst = match lst with 
  [] -> []
| first::rest -> if first mod 2 = 0 then first::even rest
                                    else even rest

(*　テスト *)
let test1 = even [] = []
let test2 = even [1; 2; 4] = [2; 4]
let test3 = even [3; 5; 7] = []
let test4 = even [2; 3; 5; 6] = [2; 6]