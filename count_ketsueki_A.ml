(*一人分のデータ（名前、血液型)を表す型 *)
type person_t = {
  namae : string;  (* 名前 *)
  ketsuekigata : string;  (* 血液型 *)
}

(* person_t listは
  -[] 空リスト、あるいは
  -first :: rest 最初の要素がfirstで残りのリストがrest
    という形 *)

(* person_t型のデータの例 *)
let lst1 = []
let lst2 = [{namae = "ryo"; ketsuekigata = "A"}]
let lst3 = [{namae = "ryo"; ketsuekigata = "A"}; 
            {namae = "shion"; ketsuekigata = "O"}]
let lst4 = [{namae = "ryo"; ketsuekigata = "A"}; 
            {namae = "shion"; ketsuekigata = "O"};
            {namae = "takumi"; ketsuekigata = "AB"}]
let lst5 = [{namae = "ryo"; ketsuekigata = "A"}; 
            {namae = "shion"; ketsuekigata = "O"};
            {namae = "takumi"; ketsuekigata = "AB"};
            {namae = "sakura"; ketsuekigata = "A"}]  

(* 目的 一人分のデータのうち血液型がAの人の数を返す *)
(* count_ketsueki_A : person_t list -> int *)
let rec count_ketsueki_A lst= match lst with
  [] -> 0
  | {namae = n; ketsuekigata = k}::rest 
    -> if k = "A" then 1 + count_ketsueki_A rest
                  else count_ketsueki_A rest 

(* test *)
let test1 = count_ketsueki_A lst1 = 0
let test2 = count_ketsueki_A lst2 = 1
let test3 = count_ketsueki_A lst3 = 1
let test4 = count_ketsueki_A lst4 = 1
let test5 = count_ketsueki_A lst5 = 2