(*
 * find p [x_1, ..., x_n] = x_i where i is
 * the smallest index for which p x_i is true.
 *)

exception Find;

fun find p (x::xs) = (if p x = true then x
            else find p xs)
  | find p nil = raise Find;
