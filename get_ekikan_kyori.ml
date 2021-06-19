#use "romaji_to_kanji.ml" 
 
(* 目的：ふたつの駅の間の距離を求める *) 
(* get_ekikan_kyori : string -> string -> ekikan_t list -> float *) 
let rec get_ekikan_kyori eki1 eki2 lst = match lst with 
    [] -> infinity 
  | {kiten = k; shuten = s; keiyu = ke; kyori = ky; jikan = j} :: rest -> 
     if (eki1 = k && eki2 = s) || (eki1 = s && eki2 = k) 
     then ky 
     else get_ekikan_kyori eki1 eki2 rest 
 
(* test *) 
let test1 = get_ekikan_kyori "茗荷谷" "新大塚" global_ekikan_list = 1.2 
let test2 = get_ekikan_kyori "茗荷谷" "池袋" global_ekikan_list = infinity 
let test3 = get_ekikan_kyori "東京" "大手町" global_ekikan_list = 0.6 