let rec countzero (f: int->int) (a: int) (b: int) = 
  if a<=b then
    if (f a = 0) then 1 + (countzero f (a+1) b)
    else countzero f (a+1) b
  else 0
;;