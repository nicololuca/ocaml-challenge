type card = Joker | Val of int;;

let in_range = function
    Joker -> true
  | Val n -> n>=1 && n<=10
;;

let win (p: card) (d: card) = 
  if not(in_range p) && not(in_range d) 
  then
    failwith "Numeri errati"
  else
    match (p, d) with
      (_, Joker) -> false
    | (Joker, _) -> true
    | (Val x, Val y) -> (x>y)
;;