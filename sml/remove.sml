(*
 * remove p [x_1, ..., x_n] is equal to those elements x_i in x_1, ..., x_n
 * for which p x_i is false
 *)

 fun remove p (x::xs) = (if p x = false then x :: (remove p xs)
            else remove p xs)
  | remove p nil = [];
