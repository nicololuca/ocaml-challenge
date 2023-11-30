type weekday = Mo | Tu | We | Th | Fr;;

type course = ALF | LIP;;

let isLecture (d: weekday) (c: course) = match (c, d) with
  (ALF, Tu) | (ALF, Th) | (ALF, Fr) | (LIP, We) | (LIP, Th) -> true
  | _ -> false;;