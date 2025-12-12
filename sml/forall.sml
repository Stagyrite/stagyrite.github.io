(* forall p [x_1, ..., x_n] if and only if for each i = 1..n p x_i = true *)

fun forall p (x::xs) = (if p x = false then false
            else forall p xs)
  | forall p nil = true;
