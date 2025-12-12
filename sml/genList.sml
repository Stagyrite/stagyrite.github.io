(* genList f n = [f 1, f 2, ..., f n]; *)

fun genList f n = (if n > 0 then (genList f (n - 1)@[f n])
            else []);
