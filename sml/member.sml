fun member x (y::xs) = (if y = x then true 
            else member x xs)
  | member x nil = false;
