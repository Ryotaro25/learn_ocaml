(* int listは
  -[] 空リスト、あるいは
  -first :: rest 最初の要素がfirstで残りのリストがrest
    という形 *)

(* 目的:受け取った文字列からくっつけた文字列を返す *)
(* concat : int list -> string *)
let rec concat lst = match lst with
  [] -> ""
  | first::rest -> first ^ concat rest

(*　テスト *)
let test1 = concat [] = ""
let test2 = concat ["焼"; "肉"; "定"; "食"] = "焼肉定食"
let test3 = concat ["回"; "鍋"; "肉";] = "回鍋肉"