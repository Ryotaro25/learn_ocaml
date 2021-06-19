#use "metro.ml"

(* 目的: ローマ字の駅名と駅名リストをうけとったら感じを文字列で返す  *)
(* append: string -> 'a list -> string *)
let rec romaji_to_kanji romaji ekimei_list = match ekimei_list with
  [] -> ""
  | {kanji = k; kana = ka; romaji = r; shozoku = s;}::rest
    -> if romaji = r then k else romaji_to_kanji romaji rest

(* test *)
let test1 = romaji_to_kanji "myogadani" global_ekimei_list = "茗荷谷"
let test2 = romaji_to_kanji "shibuya" global_ekimei_list = "渋谷" 
let test3 = romaji_to_kanji "otemachi" global_ekimei_list = "大手町" 

