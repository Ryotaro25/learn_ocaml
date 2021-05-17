(*学生一人分のデータ（なめ、点数、成績）を表す型 *)
type gakusei_t = {
  namae : string;  (* 名前 *)
  tennsuu : int;  (* 点数 *)
  seiseki :string;  (* 成績 *)
}

(* 目的:学生のデータgakuseiを受け取り成績のついたデータを返す*)
(* hyouka: gakusei_t -> gakusei_t *)
let hyouka gakusei = match gakusei with 
  { namae = n; tennsuu = t; seiseki = s} ->
    {namae = n; tennsuu = t; 
    seiseki = if t >= 80 then "A"
              else if t >= 70 then "B"
              else if t >= 60 then "C"
              else  "D"}

(*テスト *)
let test1 = hyouka { namae = "asai"; tennsuu = 90; seiseki = ""}
                 = { namae = "asai"; tennsuu = 90; seiseki = "A"}
let test2 = hyouka { namae = "asai"; tennsuu = 80; seiseki = ""}
                 = { namae = "asai"; tennsuu = 80; seiseki = "A"}
let test3 = hyouka { namae = "asai"; tennsuu = 75; seiseki = ""}
                 = { namae = "asai"; tennsuu = 75; seiseki = "B"}
let test4 = hyouka { namae = "asai"; tennsuu = 70; seiseki = ""}
                 = { namae = "asai"; tennsuu = 70; seiseki = "B"}
let test5 = hyouka { namae = "asai"; tennsuu = 65; seiseki = ""}
                 = { namae = "asai"; tennsuu = 65; seiseki = "C"}
let test6 = hyouka { namae = "asai"; tennsuu = 60; seiseki = ""}
                 = { namae = "asai"; tennsuu = 60; seiseki = "C"}
let test7 = hyouka { namae = "asai"; tennsuu = 55; seiseki = ""}
                 = { namae = "asai"; tennsuu = 55; seiseki = "D"}                                                               