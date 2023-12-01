let dice p = 
  if p<0 || p>100 then failwith "Probabilità non valida" else
    let i = 1+(Random.int 100) in
    if i>=0 && i<=p then 6
    else 1+Random.int(5)
;;