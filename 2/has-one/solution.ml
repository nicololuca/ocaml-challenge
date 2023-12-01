let rec has_one (n: int) = 
  if n<0 then failwith "Numero non positivo"
  else if n mod 10 = 1 then true
  else if n<10 then false
  else has_one (n/10)
;;