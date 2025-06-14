exception Nth;

fun nth _ nil = raise Nth
  | nth i (x::xs) = (if i < 1 then raise Nth
            else if i = 1 then x 
            else nth (i - 1) xs);
