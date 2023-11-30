let tris (a,b,c,d) = match (a,b,c,d) with
    (a,b,c,_) when a=b && a=c -> true
  | (a,b,_,d) when a=b && a=d -> true
  | (a,_,c,d) when a=c && a=d -> true
  | (_,b,c,d) when b=c && b=d -> true
  | _ -> false
;;

let hand () = (
  (Random.int 10)+1, 
  (Random.int 10)+1, 
  (Random.int 10)+1, 
  (Random.int 10)+1
);;