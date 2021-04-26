let rec butlast l =
  match l with
  | [] -> []
  | [x] -> []
  | [x; y] -> [x]
  | h::t -> h :: butlast t

let rec reverse l =
  match l with
  | [] -> []
  | [x] -> [x]
  | [x; y] -> [y; x]
  | h::t ->
