(* take k [x_1, ..., x_n] = [x_1, ..., x_i] where i = min(max(k, 0), n) *)

fun take k nil = []
  | take k (x::xs) = (if k <= 0 then []
              else x::(take (k - 1) xs));
