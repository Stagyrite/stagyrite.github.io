fun forall p (x::xs) = (if p x = false then false
            else forall p xs)
  | forall p nil = true;
