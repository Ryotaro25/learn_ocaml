(*一人分のデータ（名前、血液型)を表す型 *)
type person_t = {
  namae : string;  (* 名前 *)
  ketsuekigata : string;  (* 血液型 *)
}

(* 目的:一人分のデータpersonを受け取り血液型表示の着いた文字列を返す*)
(* ketsueki_hyoji: person_t -> person_t *)
let ketsueki_hyoji person = match person with 
    { namae = n; ketsuekigata = k} ->
    n ^ "さんの血液型は" ^ k ^ "です。"       

(*テスト *)
let test1 = ketsueki_hyoji {namae = "ryo"; ketsuekigata = "A"}
                         = "ryoさんの血液型はAです。"
let test2 = ketsueki_hyoji {namae = "risa"; ketsuekigata = "B"}
                         = "risaさんの血液型はBです。"
let test1 = ketsueki_hyoji {namae = "shion"; ketsuekigata = "O"}
                         = "shionさんの血液型はOです。"
let test1 = ketsueki_hyoji {namae = "takumi"; ketsuekigata = "AB"}
                         = "takumiさんの血液型はABです。"
let test1 = ketsueki_hyoji {namae = "aoto"; ketsuekigata = "B"}
                         = "aotoさんの血液型はBです。"
let test1 = ketsueki_hyoji {namae = "sakura"; ketsuekigata = "AB"}
                         = "sakuraさんの血液型はABです。"