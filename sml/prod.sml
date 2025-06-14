fun prod (nil, _) = []
  | prod ((x::xs), l) = 
    let 
    fun allPairs x (y::ys) = (x, y)::(allPairs x ys)
      | allPairs _ nil = []
    in
    (allPairs x l)@(prod (xs, l))
    end;
    
