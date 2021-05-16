(* 目的:現在の気温tが15以上25以下かどうかチェックをする*)
(* kaiteki: int -> bool *)
let kaiteki t = 
  15 <= t && t <= 25

(*テスト *)
let test1 = kaiteki 7 = false
let test2 = kaiteki 15 = true
let test3 = kaiteki 20 = true
let test4 = kaiteki 25 = true
let test5 = kaiteki 28 = false
