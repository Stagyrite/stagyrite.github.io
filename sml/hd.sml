exception Hd;

fun hd (x::_) = x
  | hd nil = raise Hd;
