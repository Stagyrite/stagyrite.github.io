exception Max;

fun max [x] = x
  | max (x::xs) =
    let
    val maxXs = max xs
    in
    (if x >= maxXs then x
     else maxXs)
    end
  | max nil = raise Max;
