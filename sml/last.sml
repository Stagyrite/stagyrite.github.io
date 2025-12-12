(* last [x_1, ..., x_n] = x_n *)

exception Last;

fun last [x] = x
  | last (_::xs) = last xs
  | last nil = raise Last;
