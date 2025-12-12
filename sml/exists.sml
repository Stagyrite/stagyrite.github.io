(*
 * exists p [x_1, ..., x_n] if and only if
 * there is such i = 1..n that p x_i = true
 *)

fun exists p (x::xs) = (if p x = true then true
            else exists p xs)
  | exists p nil = false;
