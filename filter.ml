(* mokuteki: 受け取ったリストlstから正の要素のみを取り出す *)
(* filter_positive : int list -> int list *)
let rec filter p lst = match lst with 
  [] -> []
  |  first::rest ->
    if p first then first :: filter p rest
                 else filter p rest