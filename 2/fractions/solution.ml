let is_posfrac (a,b) = 
  if b=0 then failwith "Not a fraction"
  else (a<=0 && b<0) || (a>=0 && b>0)
;;

let compare_posfrac (a,b) (c,d) =
  if not(is_posfrac (a,b)) || not(is_posfrac (c,d)) then failwith "One of the two fractions is not positive"
  else let l = (d*a) and r = (b*c) in
    if l=r then 0
    else if l>r then 1
    else -1
;;

let compare_frac (a,b) (c,d) = 
  let l = (d*a) and r = (b*c) in
  if l=r then 0
  else if l>r then 1
  else -1
;;
let compare_frac (a,b) (c,d) =
  match (is_posfrac (a,b), is_posfrac (c,d)) with
  | (false,false) -> - (compare_posfrac (-a,b) (-c,d))
  | (false,true) -> -1
  | (true,false) -> 1   
  | (true,true) -> compare_posfrac (a,b) (c,d)
;;