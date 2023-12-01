let rec cat = function
    [] -> ""
  | [a] -> string_of_int a
  | a::l' -> (string_of_int a) ^ ";" ^ cat l'
;;
let string_of_list (l: int list) = 
  "[" ^ cat l ^ "]"
;;