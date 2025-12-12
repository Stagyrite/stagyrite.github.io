(* nthTail i [x_1, ..., x_n] = [x_i + 1, ..., x_n]; *)

exception NthTail;

fun nthTail _ nil = raise NthTail
  | nthTail i (x::xs) = (if i < 1 then (x::xs)
            else nthTail (i - 1) xs);
