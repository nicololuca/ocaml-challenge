let rec sumrange a b = 
  if a<=b then a+sumrange (a+1) b
  else 0;;