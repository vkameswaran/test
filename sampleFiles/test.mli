(* Shape type *)
type shape =
  | Circle of float
  | Rectangle of float * float

(* Area function *)
val area : shape -> float

(* MathUtils module *)
module MathUtils : sig
  val sum_of_squares : int -> int -> int
end
