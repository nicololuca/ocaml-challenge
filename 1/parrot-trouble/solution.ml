let parrotTrouble (noise: bool) (time: int) = 
	if (time<0 || time>23) then None
	else if noise && (time<7 || time>20) then Some true
	else Some false;;

let parrot_trouble2 (talking: bool) (hour: int) = match (talking, hour) with
    (_, hour) when hour<0 || hour>23 -> None
  | (true, hour) when hour<7 || hour>20 -> Some true
  | _ -> Some false;;