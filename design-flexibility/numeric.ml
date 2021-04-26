module type Arith = sig
  type t
  val zero  : t
  val one   : t
  val (+)   : t -> t -> t
  val ( * ) : t -> t -> t
  val (~-)  : t -> t
end

module type Tagged = sig
  type t
  val tag : t -> string
end

module TaggedInt : Tagged = struct
  type t =  int
  let tag t = "integer"
end

module Ints : Arith = struct
  type t    = TaggedInt
  let zero  = TaggedInt(0)
  let one   = TaggedInt(1)
  let (+) n m = TaggedInt(Stdlib.(+) n.t m.t)
  let ( * ) = Stdlib.( * )
  let (~-)  = Stdlib.(~-)
end

module TaggedSym : Tagged = struct
  type t = string
  let tag s = "symbol"
end
