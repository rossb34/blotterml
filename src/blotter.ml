
type order_side = 
  | Buy
  | Sell

let sign = function
  | Buy -> 1
  | Sell -> -1

let add x y = x + y
