(* 目的:受け取った整数xのから午前か午後を返す*)
(* jikan :int -> string *)
let jikan x = if x > 12 then "午後" else "午前"

(*テスト *)
let test1 = jikan 1 = "午前"
let test2 = jikan 13 = "午後"
let test3 = jikan 5 = "午前"