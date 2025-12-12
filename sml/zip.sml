(* zip ([x_1, ..., x_n]) = [(x_1, y_1), ..., (x_n, y_n)] *)

exception Zip;

fun zip (x::xs) (y::ys) = (x, y)::(zip xs ys)
  | zip nil nil = nil
  | zip _ _ = raise Zip;
