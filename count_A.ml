(* 学生一人分のデータ【名前、点数、成績】を表す型 *)
type gakusei_t = {
  namae : string; (* 名前 *)
  tensuu : int; (* 点数 *)
  seiseki : string; (* 成績 *)
}

(* gakusei_t listは
  -[] 空リスト、あるいは
  -first :: rest 最初の要素がfirstで残りのリストがrest
    という形 *)

(* gakusei_t型のデータの例 *)
let lst1 = []
let lst2 = [{namae = "asai" ; tensuu = 70; seiseki = "B"}]
let lst3 = [{namae = "asai" ; tensuu = 70; seiseki = "B"};
            {namae = "kaneko" ; tensuu = 80; seiseki = "A"}]

(* 目的 学生リストlstのうち成績がAの人の数を返す *)
(* count : gakusei_t list -> int *)
let rec count lst seiseki0 = match lst with
  [] -> 0
  | {namae = n; tensuu = t; seiseki = s} :: rest
                                     -> if s = seiseki0 then 1 + count rest seiseki0 (* count rest *)
                                                   else count rest seiseki0

(* test *)
let test1 = count lst1 "A" = 0
let test2 = count lst2 "A"= 0
let test3 = count lst3 "A"= 1
