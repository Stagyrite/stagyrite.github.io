fun take k nil = []
  | take k (x::xs) = (if k <= 0 then []
              else x::(take (k - 1) xs));
