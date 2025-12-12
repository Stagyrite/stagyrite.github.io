(* tl [x_1, ..., x_n] = [x_2, ..., x_n] *)

exception Tl;

fun tl (_::xs) = xs
  | tl nil = raise Tl;
