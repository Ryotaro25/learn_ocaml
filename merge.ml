(* 目的: lst1とlst2を受け取りそれらを結合したリストを返す  *)
(* merge: 'a list -> 'a list *)
let rec merge lst1 lst2 = match (lst1, lst2) with
  ([], []) -> []
  |  ([], first2::rest2) -> [] (* merge lst1 lst2 *)
  |  (first1 :: rest1, []) -> [] (*merge rest1 lst2 *)
  |  (first1 :: rest1, first2 :: rest2) -> 
      if first1 < first2
      then []
      else []


(* test*) 
let test1 = merge [] [] = []
let test2 = merge [] [1; 2] = [1; 2]
let test3 = merge [1; 3] [2; 4] = [1; 2; 3; 4]
let test4 = merge [2; 4] [1; 3] = [1; 2; 3; 4]
let test5 = merge [2; 4] [1; 3] = [1; 2; 3; 4]
let test6 = merge [1; 4] [1; 3] = [1; 1; 3; 4] 