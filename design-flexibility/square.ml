module SI = Set.Make(struct type t = int let compare = compare end)

let square x = x * x

let squares size =
  let range = List.init size (fun x -> x + 1) in
  List.map square range

let check factor squares =
    List.exists
      (fun x ->
        List.exists (fun y -> x = y * factor) squares)
    squares

List.exists (fun y -> x = y * factor) squares    
