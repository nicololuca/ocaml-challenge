let square x = x*x;;
let exp9 x = x*(x |> square |> square |> square);;