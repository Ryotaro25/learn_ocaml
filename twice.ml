let twice f = 
  let g x = f (f x)
    in g 

let add3 x = x + 3

twice add3 7