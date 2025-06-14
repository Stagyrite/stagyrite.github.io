exception Split;

fun split i nil = (if i = 0 then (nil, nil) else raise Split)
  | split i (x::xs) =
    let
    val (l1, l2) = (if i = 0 then (nil, nil) else split (i - 1) xs)
    in
    (if i = 0 then (nil, (x::xs)) else (x::l1, l2))
    end;
