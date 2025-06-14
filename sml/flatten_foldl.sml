fun flatten l = foldl (fn (x, acc) =>  acc @ x) [] l;
