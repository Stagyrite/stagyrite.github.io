(*
 * filter p [x_1, ..., x_n] is equal to those elements
 * x_i in x_1, ..., x_n for which p x_i is true
 * Express the given function using the foldl or foldr function.
 *)

fun filter p l = foldr (fn (x, acc) => (if p x = true then x::acc else acc)) [] l;
