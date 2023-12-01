type winner = Player | Computer | Tie ;;

let win (hp, gp) = let hc = Random.int 6 and gc = Random.int 11 in
  if hp+hc=gc then ((hc, gc), Computer) 
  else if hp+hc=gp then ((hc, gc), Player)
  else ((hc, gc), Tie)
;;