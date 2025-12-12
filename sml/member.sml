(*
 * member x [x_1, ..., x_n] is true, if and only
 * there is i = 1, ..., n such that x = x_i
 *)

fun member x (y::xs) = (if y = x then true
            else member x xs)
  | member x nil = false;
