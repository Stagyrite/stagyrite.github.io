exception Zip;

fun zip (x::xs) (y::ys) = (x, y)::(zip xs ys)
  | zip nil nil = nil
  | zip _ _ = raise Zip;
