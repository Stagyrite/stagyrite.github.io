fun remove p (x::xs) = (if p x = false then x :: (remove p xs)
            else remove p xs)
  | remove p nil = [];
