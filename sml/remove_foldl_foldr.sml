fun remove p l = foldr (fn (x, acc) => (if p x = false then x::acc else acc)) [] l;
