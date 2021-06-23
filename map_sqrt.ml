


(* 目的:関数fとリストlstを受け取りfを施したリストを返す *)
(* map : ('a -> 'b) -> 'a lst -> 'b lst *)
let rec map f lst = match lst with
  [] -> []
| first :: rest -> f first::map f rest

(* 目的:実数のリストlstを受け取り各要素の平方根のリストを返す *)
(* map_sqrt : float list -> float list *)
let rec map_sqrt lst = map sqrt lst

(* 目的:学生のリストlstを受け取り成績を取り入れたリストを返す *)
(* map_hyouka : gakusei_t list -> gaksuei_t list *)
let rec map_hyouka lst = map hyouka lst