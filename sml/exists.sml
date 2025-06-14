fun exists p (x::xs) = (if p x = true then true
            else exists p xs)
  | exists p nil = false;
