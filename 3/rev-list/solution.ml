let rec rev = function
    [] -> []
  | [a] -> [a]
  | a::l' -> (rev l')@[a]
;;
