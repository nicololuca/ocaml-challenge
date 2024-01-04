let rec rotate n l =
  if n=0 then l
  else match l with
      [] -> []
    | [a] -> [a]
    | a::l' -> rotate (n-1) (l'@[a]) 
;;