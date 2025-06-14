exception Tl;

fun tl (_::xs) = xs
  | tl nil = raise Tl;
