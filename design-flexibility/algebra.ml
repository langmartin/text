type expression = Int of int | Float of float | Symbol of string;;

type predicate = expression list -> bool;;

type apply = expression list -> expression list;;

type constant = expression -> expression;;

type algebra = {pred : predicate; apply : apply; constant : constant};;

let registry = ref []

let register algebra =
  let tail = !registry in
  registry := algebra::tail


