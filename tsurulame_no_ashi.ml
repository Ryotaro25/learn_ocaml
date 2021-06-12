(* 目的:鶴の数xと亀の足yの足の本数を計算する*)
(* tsurukame_no_ashi: int -> int *)
let tsurukame_no_ashi x y = x * 2 + y * 4

(*テスト *)
let test1 = tsurukame_no_ashi 2 2 = 12
let test2 = tsurukame_no_ashi 3 5 = 26
let test3 = tsurukame_no_ashi 10 6 = 44
