(* treeは
 - Empty 空の木、あるいは
 - Leaf(n) 値がnの葉、あるいは
 - Node(t1, n, t2) 左の気がt1,値がn,右の木がt2であるような節 *)

type tree_t = Empty
            | Leaf of int
            | Node of tree_t * int * tree_t