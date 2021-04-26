type prov = Int of int | Prov of { f: string; x: prov; y: prov; r: int }

let unbox x =
  match x with
  | Int x -> x
  | Prov x -> x.r

let box x = Int(x)

let apply n xb yb f =
  let x = unbox xb in 
  let y = unbox yb in
  Prov{f = n; x = xb; y = yb; r = f x y}

let plus x y = apply "plus" x y (+)
let minus x y = apply "minus" x y (-)
let times x y = apply "times" x y ( * )
let quot x y = apply "quot" x y (/)

let flip f = fun x y -> f y x             

let z =
  let minus = flip minus in
  let quot = flip quot in  
  box 3
  |> plus (box 2)
  |> minus (box 2)
  |> times (box 9)
  |> quot (box 3)
