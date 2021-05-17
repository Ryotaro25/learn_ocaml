(*駅名のデータ（名前、かな、ローマ時、路線名）を表す型 *)
type ekimei_t = {
  kanji :string;    (* 感じ *)
  kana :string;     (* カナ文字 *)
  romaji :string;   (* ローマ字 *)
  shozoku :string;  (* 所属している路線 *)
}

(* 目的:受け取ったデータから路線名、駅名(かな）を返す*)
(* hyouji: ekimei_t -> ekimei_t *)
let hyouji ekimei = match ekimei with
 {kanji = k; kana = ka; romaji = r; shozoku = s;} -> 
   s ^ "," ^ k ^ "(" ^ ka ^ ")"
