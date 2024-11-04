# Standard ML

All the examples would compile with
[Standard ML of New Jersey](https://www.smlnj.org/ "Standard ML of New Jersey").

## hd

hd \[x\_<sub>1</sub>, …, x\_<sub>n</sub>\] = x\_<sub>1</sub>

    exception Hd;

    fun hd (x::_) = x
      | hd nil = raise Hd;

## tl

tl \[x\_<sub>1</sub>, ..., x\_<sub>n</sub>\] = \[x\_<sub>2</sub>, ...,
x\_<sub>n</sub>\]

    exception Tl;

    fun tl (_::xs) = xs
      | tl nil = raise Tl;

## last

last \[x\_<sub>1</sub>, ..., x\_<sub>n</sub>\] = x\_<sub>n</sub>

    exception Last;

    fun last [x] = x
      | last (_::xs) = last xs
      | last nil = raise Last;

## member

member x \[x\_<sub>1</sub>, ..., x\_<sub>n</sub>\] is true, if and only
there is i = 1, ..., n such that x = x\_<sub>i</sub>

    fun member x (y::xs) = (if y = x then true 
                else member x xs)
      | member x nil = false;

## exists

exists p \[x\_<sub>1</sub>, ..., x\_<sub>n</sub>\] if and only if there
is such i = 1..n that p x\_<sub>i</sub> = true

    fun exists p (x::xs) = (if p x = true then true
                else exists p xs)
      | exists p nil = false;

## forall

forall p \[x\_<sub>1</sub>, ..., x\_<sub>n</sub>\] if and only if for
each i = 1..n p x\_<sub>i</sub> = true

    fun forall p (x::xs) = (if p x = false then false
                else forall p xs)
      | forall p nil = true;

## null

null returns true, if and only if an empty list is passed as its
argument

    fun null nil = true    
      | null _ = false;

## remove

remove p \[x\_<sub>1</sub>, ..., x\_<sub>n</sub>\] is equal to those
elements x\_<sub>i</sub> in x\_<sub>1</sub>, ..., x\_<sub>n</sub> for
which p x\_<sub>i</sub> is false

    fun remove p (x::xs) = (if p x = false then x :: (remove p xs)
                else remove p xs)
      | remove p nil = [];

## max

max p \[x\_<sub>1</sub>, ..., x\_<sub>n</sub>\] = x\_<sub>i</sub>, if
x\_<sub>i</sub> is the largest element in the list of integers

    exception Max;

    fun max [x] = x
      | max (x::xs) =
        let
        val maxXs = max xs
        in
        (if x >= maxXs then x
         else maxXs)
        end
      | max nil = raise Max;

## zip

zip (\[x\_<sub>1</sub>, …, x\_<sub>n</sub>\]) = \[(x\_<sub>1</sub>,
y\_<sub>1</sub>), …, (x\_<sub>n</sub>, y\_<sub>n</sub>)\]

    exception Zip;

    fun zip (x::xs) (y::ys) = (x, y)::(zip xs ys)
      | zip nil nil = nil
      | zip _ _ = raise Zip;

## unzip

unzip \[(x\_<sub>1</sub>, y\_<sub>1</sub>), …, (x\_<sub>n</sub>,
y\_<sub>n</sub>)\] = (\[x\_<sub>1</sub>, …, x\_<sub>n</sub>\],
\[y\_<sub>1</sub>, …, y\_<sub>n</sub>\])

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

## take

take k \[x\_<sub>1</sub>, …, x\_<sub>n</sub>\] = \[x\_<sub>1</sub>, …,
x\_<sub>i</sub>\] where i = min(max(k, 0), n)

    fun take k nil = []
      | take k (x::xs) = (if k <= 0 then []
                  else x::(take (k - 1) xs));

## find

find p \[x\_<sub>1</sub>, ..., x\_<sub>n</sub>\] = x\_<sub>i</sub> where
i is the smallest index for which p x\_<sub>i</sub> is true.

    exception Find;

    fun find p (x::xs) = (if p x = true then x
                else find p xs)
      | find p nil = raise Find;

## genList

genList f n = \[f 1, f 2, ..., f n\];

    fun genList f n = (if n > 0 then (genList f (n - 1)@[f n]) 
                else []);

## nth

nth i \[x\_<sub>1</sub>, …, x\_<sub>n</sub>\] = x\_<sub>i</sub>;

    exception Nth;

    fun nth _ nil = raise Nth
      | nth i (x::xs) = (if i < 1 then raise Nth
                else if i = 1 then x 
                else nth (i - 1) xs);

## nthTail

nthTail i \[x\_<sub>1</sub>, …, x\_<sub>n</sub>\] = \[x\_<sub>i +
1</sub>, …, x\_<sub>n</sub>\];

    exception NthTail;

    fun nthTail _ nil = raise NthTail
      | nthTail i (x::xs) = (if i < 1 then (x::xs)
                else nthTail (i - 1) xs);

## split

split i \[x\_<sub>1</sub>, …, x\_<sub>n</sub>\] = (\[x\_<sub>1</sub>, …,
x\_<sub>n</sub>\], \[x\_<sub>i + 1</sub>, …, x\_<sub>n</sub>\])

    exception Split;

    fun split i nil = (if i = 0 then (nil, nil) else raise Split)
      | split i (x::xs) =
        let
        val (l1, l2) = (if i = 0 then (nil, nil) else split (i - 1) xs)
        in
        (if i = 0 then (nil, (x::xs)) else (x::l1, l2))
        end;

## rmDupl

rmDupl that removes duplicates from the list, i.e. all occurrences of
each element except its first occurrence.

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

## prod

prod designating the product of two lists, i.e. the list of all pairs of
elements of both lists.

    fun prod (nil, _) = []
      | prod ((x::xs), l) = 
        let 
        fun allPairs x (y::ys) = (x, y)::(allPairs x ys)
          | allPairs _ nil = []
        in
        (allPairs x l)@(prod (xs, l))
        end;

## forall (foldl)

forall p \[x\_<sub>1</sub>, …, x\_<sub>n</sub>\] if and only if for each
i = 1..n p x\_<sub>i</sub> = true  
Express the given function using the foldl function.

    fun forall p l = foldl (fn (x, acc) => acc andalso (p x)) true l;

## filter (foldl/foldr)

filter p \[x\_<sub>1</sub>, …, x\_<sub>n</sub>\] is equal to those
elements x\_<sub>i</sub> in x\_<sub>1</sub>, …, x\_<sub>n</sub> for
which p x\_<sub>i</sub> is true  
Express the given function using the foldl or foldr function.

    fun filter p l = foldr (fn (x, acc) => (if p x = true then x::acc else acc)) [] l;

## remove (foldl/foldr)

remove p \[x\_<sub>1</sub>, …, x\_<sub>n</sub>\] is equal to those
elements x\_<sub>i</sub> in x\_<sub>1</sub>, …, x\_<sub>n</sub> for
which p x\_<sub>i</sub> is false  
Express the given function using the foldl or foldr function.

    fun remove p l = foldr (fn (x, acc) => (if p x = false then x::acc else acc)) [] l;

## flatten (foldl)

flatten \[x\_<sub>1</sub>, …, x\_<sub>n</sub>\] = x\_<sub>1</sub> @ … @
x\_<sub>n</sub>

Express the given function using the foldl function.

    fun flatten l = foldl (fn (x, acc) =>  acc @ x) [] l;

## sublist

A sublist of the list l = \[x\_<sub>1</sub>, …, x\_<sub>n</sub>\] is
called the list \[x\_<sub>i + 1</sub>, …, x\_<sub>j</sub>\] for 0 ≤ i ≤
j ≤ n.

    fun sublist (x::xs) =
        let
        fun addx (ys::yss) = (x::ys) :: addx yss
          | addx nil = nil
        val xss = sublist xs
        in
        xss @ addx xss
        end
      | sublist [] = [[]];

## subseq

A subsequence of the list l = \[x\_<sub>1</sub>, …, x\_<sub>n</sub>\] is
called the list \[x\_<sub>i+1</sub>, …, x\_<sub>j</sub>\] for 0 ≤ i ≤ j
≤ n.

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

[stdin \| stdout](https://stagyrite.github.io/ "Stagyrite &#124; Private Homepage")
