fun filter p l = foldr (fn (x, acc) => (if p x = true then x::acc else acc)) [] l;
