(* unsolved *)

let is_even (x: int) = x mod 2 = 0;;

let is_correct n = n>=1 && n<=5;;
let win a b = 
  if not(is_correct a) && not(is_correct b) then 0
  else if not(is_correct a) then -1
  else if not(is_correct b) then 1
  else if is_even (a+b) then 1
  else -1;;