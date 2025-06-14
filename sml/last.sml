exception Last;

fun last [x] = x
  | last (_::xs) = last xs
  | last nil = raise Last;
