exception Find;

fun find p (x::xs) = (if p x = true then x
            else find p xs)
  | find p nil = raise Find;
