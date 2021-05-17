(*駅名のデータ（名前、かな、ローマ時、路線名）を表す型 *)
type ekimei_t = {
  kanji :string;    (* 漢字 *)
  kana :string;     (* カナ文字 *)
  romaji :string;   (* ローマ字 *)
  shozoku :string;  (* 所属している路線 *)
}

(* 駅間のデータ(起点、終点、経由路線名、距離、所要時間) *)
type ekikan_t = {
  kiten :string;   (* 起点 *)
  shuten :string;  (* 終点 *)
  keiyu :string;   (* 経由 *)
  kyori :float;    (* 駅間の距離 *)
  jikan :int;      (* 所要時間 *)
}
(* 目的:受け取ったデータから路線名、駅名(かな）を返す*)
(* hyouji: ekimei_t -> ekimei_t *)
let hyouji ekimei = match ekimei with
 {kanji = k; kana = ka; romaji = r; shozoku = s;} -> 
   s ^ "," ^ k ^ "(" ^ ka ^ ")"
