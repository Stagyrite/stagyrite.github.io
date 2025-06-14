exception Unzip;

fun unzip [] = raise Unzip 
  | unzip list =
    let
    fun takeX ((x, _)::xs) = (x::(takeX xs))
      | takeX nil = []
    fun takeY ((_, y)::ys) = (y::(takeY ys))
      | takeY nil = [];
    in 
    (takeX list, takeY list)
    end;
