let eval_max x y = if x>y then x else y;;
let eval_min x y = if x<y then x else y;;
let minmax3 a b c = ( eval_min a (eval_min b c), eval_max a (eval_max b c) );;