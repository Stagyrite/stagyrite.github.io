fun sublist (x::xs) =
    let
    fun addx (ys::yss) = (x::ys) :: addx yss
      | addx nil = nil
    val xss = sublist xs
    in
    xss @ addx xss
    end
  | sublist [] = [[]];