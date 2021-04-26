module type AlgebraTag = sig
  type t
  val tag : t -> string
end

module type AlgebraType = sig
  type arg
  (* tagged element type *)

  type args
  (* list of arguments *)

  val valid : args -> bool
  val constant : string -> arg
  val apply : args -> args
end

(* module MakeAlgebra (Tag : AlgebraTag) : AlgebraType with type arg = Tag.t *)

(* val register : AlgebraType -> unit *)
