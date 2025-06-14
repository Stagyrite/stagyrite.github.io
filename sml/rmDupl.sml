fun rmDupl l =
    let 
    fun member x (y::xs) = (if y = x then true 
                else member x xs)
      | member x nil = false;
    fun dupRm nil _ = nil
      | dupRm (x::xs) unique =
        (if (member x unique) then (dupRm xs unique) else x::(dupRm xs (x::unique))); 
    in
    dupRm l []
    end;
