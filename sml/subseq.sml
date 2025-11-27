fun subseq l =
    let
    fun revert (x::xs) = (revert xs) @ [x]
      | revert _ = nil;

    fun member x (y::xs) = (if y = x then true
                else member x xs)
      | member x nil = false;

    fun rmDupl l =
        let
        fun dupRm nil _ = nil
          | dupRm (x::xs) unique =
            (if (member x unique) then (dupRm xs unique) else x::(dupRm xs (x::unique)));
        in
        dupRm l []
        end;
    fun addtosubseq (x::xs) conseq subseq =

        let
        (** Adds x to each list passed as an argument. *)
        fun addx (ys::yss) = (x::ys) :: addx yss
          | addx nil = nil
        val newconseq = [x] :: addx conseq;
        val newsubseq = newconseq @ subseq
        in
        addtosubseq xs newconseq newsubseq
        end
      | addtosubseq nil conseq subseq = subseq;

    in
    rmDupl (addtosubseq (revert l) [[]] [[]])
    end;
