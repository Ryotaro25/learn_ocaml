#use "get_ekikan_kyori.ml"

(* 目的：ふたつのローマ字の駅名を受け取ったら距離を調べ文字列を返す *) 
(* kyori_wo_hyoji : string -> string -> kyori_wo_hyoji lst -> string *)
let rec kyori_wo_hyoji eki1 eki2 =  
  let kanji1 = romaji_to_kanji eki1 global_ekimei_list in 
  if kanji1 = "" then eki1 ^ " という駅は存在しません" 
  else let kanji2 = romaji_to_kanji eki2 global_ekimei_list in 
       if kanji2 = "" then eki2 ^ " という駅は存在しません" 
       else let kyori = get_ekikan_kyori kanji1 kanji2 global_ekikan_list in 
	    if kyori = infinity 
	    then kanji1 ^ "と" ^ kanji2 ^ "はつながっていません" 
	    else kanji1 ^ "から" ^ kanji2 ^ "までは " ^ 
		 string_of_float kyori ^ " キロです" 

(* テスト *) 
let test1 = kyori_wo_hyoji "myougadani" "shinotsuka" 
	    = "myougadani という駅は存在しません" 
let test1 = kyori_wo_hyoji "myogadani" "shinotsuka" 
	    = "茗荷谷から新大塚までは 1.2 キロです" 
let test1 = kyori_wo_hyoji "myogadani" "ikebukuro" 
	    = "茗荷谷と池袋はつながっていません" 
let test1 = kyori_wo_hyoji "tokyo" "ootemachi" 
	    = "ootemachi という駅は存在しません" 
let test1 = kyori_wo_hyoji "tokyo" "otemachi" 
	    = "東京から大手町までは 0.6 キロです" 