fun forall p l = foldl (fn (x, acc) => acc andalso (p x)) true l;
