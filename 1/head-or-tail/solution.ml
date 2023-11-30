let hot () = match (Random.int 2) with
    0 -> "tail"
  | 1 -> "head"
  | _ -> failwith "Non valido"
;;
let hot () = 
  let b = Random.int 2 in
  if b=0 then "tail" else "head"
;;