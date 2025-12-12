(*
 * forall p [x_1, ..., x_n] if and only if for each i = 1..n p x_i = true
 * Express the given function using the foldl function.
 *)

fun forall p l = foldl (fn (x, acc) => acc andalso (p x)) true l;
