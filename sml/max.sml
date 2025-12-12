(*
 * max p [x_1, ..., x_n] = x_i, if x_i is the largest element
 * in the list of integers
 *)

exception Max;

fun max [x] = x
  | max (x::xs) =
    let
    val maxXs = max xs
    in
    (if x >= maxXs then x
     else maxXs)
    end
  | max nil = raise Max;
