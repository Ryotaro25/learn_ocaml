(* 目的:名前xと成績yの組みを受け取ったらxさんの成績はyですと返す*)
(* seiseki: string* string -> string *)
let seiseki pair = match pair with (x, y) -> x^"さんの成績は"^y^"です。"

(*テスト *)
let test1 = seiseki ("yamada", "a") = "yamadaさんの成績はaです。"
let test2 = seiseki ("tanaka", "b") = "tanakaさんの成績はbです。"
let test3 = seiseki ("suzuki", "c") = "suzukiさんの成績はcです。"
let test4 = seiseki ("takahashi", "a") = "takahashiさんの成績はaです。"