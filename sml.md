# Standard ML

All the examples would compile with
[Standard ML of New Jersey](https://www.smlnj.org/ "Standard ML of New Jersey").

## [hd](https://github.com/Stagyrite/stagyrite.github.io/blob/main/sml/hd.sml "stagyrite.github.io/sml/hd.sml at main · Stagyrite/stagyrite.github.io")

hd \[x\_<sub>1</sub>, …, x\_<sub>n</sub>\] = x\_<sub>1</sub>

```sml
exception Hd;

fun hd (x::_) = x
  | hd nil = raise Hd;
```

## [tl](https://github.com/Stagyrite/stagyrite.github.io/blob/main/sml/tl.sml "stagyrite.github.io/sml/tl.sml at main · Stagyrite/stagyrite.github.io")

tl \[x\_<sub>1</sub>, ..., x\_<sub>n</sub>\] = \[x\_<sub>2</sub>, ...,
x\_<sub>n</sub>\]

```sml
exception Tl;

fun tl (_::xs) = xs
  | tl nil = raise Tl;
```

## [last](https://github.com/Stagyrite/stagyrite.github.io/blob/main/sml/last.sml "stagyrite.github.io/sml/last.sml at main · Stagyrite/stagyrite.github.io")

last \[x\_<sub>1</sub>, ..., x\_<sub>n</sub>\] = x\_<sub>n</sub>

```sml
exception Last;

fun last [x] = x
  | last (_::xs) = last xs
  | last nil = raise Last;
```

## [member](https://github.com/Stagyrite/stagyrite.github.io/blob/main/sml/member.sml "stagyrite.github.io/sml/member.sml at main · Stagyrite/stagyrite.github.io")

member x \[x\_<sub>1</sub>, ..., x\_<sub>n</sub>\] is true, if and only
there is i = 1, ..., n such that x = x\_<sub>i</sub>

```sml
fun member x (y::xs) = (if y = x then true 
            else member x xs)
  | member x nil = false;
```

## [exists](https://github.com/Stagyrite/stagyrite.github.io/blob/main/sml/exists.sml "stagyrite.github.io/sml/exists.sml at main · Stagyrite/stagyrite.github.io")

exists p \[x\_<sub>1</sub>, ..., x\_<sub>n</sub>\] if and only if there
is such i = 1..n that p x\_<sub>i</sub> = true

```sml
fun exists p (x::xs) = (if p x = true then true
            else exists p xs)
  | exists p nil = false;
```

## [forall](https://github.com/Stagyrite/stagyrite.github.io/blob/main/sml/forall.sml "stagyrite.github.io/sml/forall.sml at main · Stagyrite/stagyrite.github.io")

forall p \[x\_<sub>1</sub>, ..., x\_<sub>n</sub>\] if and only if for
each i = 1..n p x\_<sub>i</sub> = true

```sml
fun forall p (x::xs) = (if p x = false then false
            else forall p xs)
  | forall p nil = true;
```

## [null](https://github.com/Stagyrite/stagyrite.github.io/blob/main/sml/null.sml "stagyrite.github.io/sml/null.sml at main · Stagyrite/stagyrite.github.io")

null returns true, if and only if an empty list is passed as its
argument

```sml
fun null nil = true    
  | null _ = false;
```

## [remove](https://github.com/Stagyrite/stagyrite.github.io/blob/main/sml/remove.sml "stagyrite.github.io/sml/remove.sml at main · Stagyrite/stagyrite.github.io")

remove p \[x\_<sub>1</sub>, ..., x\_<sub>n</sub>\] is equal to those
elements x\_<sub>i</sub> in x\_<sub>1</sub>, ..., x\_<sub>n</sub> for
which p x\_<sub>i</sub> is false

```sml
fun remove p (x::xs) = (if p x = false then x :: (remove p xs)
            else remove p xs)
  | remove p nil = [];
```

## [max](https://github.com/Stagyrite/stagyrite.github.io/blob/main/sml/max.sml "stagyrite.github.io/sml/max.sml at main · Stagyrite/stagyrite.github.io")

max p \[x\_<sub>1</sub>, ..., x\_<sub>n</sub>\] = x\_<sub>i</sub>, if
x\_<sub>i</sub> is the largest element in the list of integers

```sml
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
```

## [zip](https://github.com/Stagyrite/stagyrite.github.io/blob/main/sml/zip.sml "stagyrite.github.io/sml/zip.sml at main · Stagyrite/stagyrite.github.io")

zip (\[x\_<sub>1</sub>, …, x\_<sub>n</sub>\]) = \[(x\_<sub>1</sub>,
y\_<sub>1</sub>), …, (x\_<sub>n</sub>, y\_<sub>n</sub>)\]

```sml
exception Zip;

fun zip (x::xs) (y::ys) = (x, y)::(zip xs ys)
  | zip nil nil = nil
  | zip _ _ = raise Zip;
```

## [unzip](https://github.com/Stagyrite/stagyrite.github.io/blob/main/sml/unzip.sml "stagyrite.github.io/sml/unzip.sml at main · Stagyrite/stagyrite.github.io")

unzip \[(x\_<sub>1</sub>, y\_<sub>1</sub>), …, (x\_<sub>n</sub>,
y\_<sub>n</sub>)\] = (\[x\_<sub>1</sub>, …, x\_<sub>n</sub>\],
\[y\_<sub>1</sub>, …, y\_<sub>n</sub>\])

```sml
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
```

## [take](https://github.com/Stagyrite/stagyrite.github.io/blob/main/sml/take.sml "stagyrite.github.io/sml/take.sml at main · Stagyrite/stagyrite.github.io")

take k \[x\_<sub>1</sub>, …, x\_<sub>n</sub>\] = \[x\_<sub>1</sub>, …,
x\_<sub>i</sub>\] where i = min(max(k, 0), n)

```sml
fun take k nil = []
  | take k (x::xs) = (if k <= 0 then []
              else x::(take (k - 1) xs));
```

## [find](https://github.com/Stagyrite/stagyrite.github.io/blob/main/sml/find.sml "stagyrite.github.io/sml/find.sml at main · Stagyrite/stagyrite.github.io")

find p \[x\_<sub>1</sub>, ..., x\_<sub>n</sub>\] = x\_<sub>i</sub> where
i is the smallest index for which p x\_<sub>i</sub> is true.

```sml
exception Find;

fun find p (x::xs) = (if p x = true then x
            else find p xs)
  | find p nil = raise Find;
```

## [genList](https://github.com/Stagyrite/stagyrite.github.io/blob/main/sml/genList.sml "stagyrite.github.io/sml/genList.sml at main · Stagyrite/stagyrite.github.io")

genList f n = \[f 1, f 2, ..., f n\];

```sml
fun genList f n = (if n > 0 then (genList f (n - 1)@[f n]) 
            else []);
```

## [nth](https://github.com/Stagyrite/stagyrite.github.io/blob/main/sml/nth.sml "stagyrite.github.io/sml/nth.sml at main · Stagyrite/stagyrite.github.io")

nth i \[x\_<sub>1</sub>, …, x\_<sub>n</sub>\] = x\_<sub>i</sub>;

```sml
exception Nth;

fun nth _ nil = raise Nth
  | nth i (x::xs) = (if i < 1 then raise Nth
            else if i = 1 then x 
            else nth (i - 1) xs);
```

## [nthTail](https://github.com/Stagyrite/stagyrite.github.io/blob/main/sml/nthTail.sml "stagyrite.github.io/sml/nthTail.sml at main · Stagyrite/stagyrite.github.io")

nthTail i \[x\_<sub>1</sub>, …, x\_<sub>n</sub>\] = \[x\_<sub>i +
1</sub>, …, x\_<sub>n</sub>\];

```sml
exception NthTail;

fun nthTail _ nil = raise NthTail
  | nthTail i (x::xs) = (if i < 1 then (x::xs)
            else nthTail (i - 1) xs);
```

## [split](https://github.com/Stagyrite/stagyrite.github.io/blob/main/sml/split.sml "stagyrite.github.io/sml/split.sml at main · Stagyrite/stagyrite.github.io")

split i \[x\_<sub>1</sub>, …, x\_<sub>n</sub>\] = (\[x\_<sub>1</sub>, …,
x\_<sub>n</sub>\], \[x\_<sub>i + 1</sub>, …, x\_<sub>n</sub>\])

```sml
exception Split;

fun split i nil = (if i = 0 then (nil, nil) else raise Split)
  | split i (x::xs) =
    let
    val (l1, l2) = (if i = 0 then (nil, nil) else split (i - 1) xs)
    in
    (if i = 0 then (nil, (x::xs)) else (x::l1, l2))
    end;
```

## [rmDupl](https://github.com/Stagyrite/stagyrite.github.io/blob/main/sml/rmDupl.sml "stagyrite.github.io/sml/rmDupl.sml at main · Stagyrite/stagyrite.github.io")

rmDupl that removes duplicates from the list, i.e. all occurrences of
each element except its first occurrence.

```sml
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
```

## [prod](https://github.com/Stagyrite/stagyrite.github.io/blob/main/sml/prod.sml "stagyrite.github.io/sml/prod.sml at main · Stagyrite/stagyrite.github.io")

prod designates the product of two lists, i.e. the list of all pairs of
elements of both lists.

```sml
fun prod (nil, _) = []
  | prod ((x::xs), l) = 
    let 
    fun allPairs x (y::ys) = (x, y)::(allPairs x ys)
      | allPairs _ nil = []
    in
    (allPairs x l)@(prod (xs, l))
    end;
```

## [forall (foldl)](https://github.com/Stagyrite/stagyrite.github.io/blob/main/sml/forall_foldl.sml "stagyrite.github.io/sml/forall_foldl.sml at main · Stagyrite/stagyrite.github.io")

forall p \[x\_<sub>1</sub>, …, x\_<sub>n</sub>\] if and only if for each
i = 1..n p x\_<sub>i</sub> = true  
Express the given function using the foldl function.

```sml
fun forall p l = foldl (fn (x, acc) => acc andalso (p x)) true l;
```

## [filter (foldl/foldr)](https://github.com/Stagyrite/stagyrite.github.io/blob/main/sml/filter_foldl_foldr.sml "stagyrite.github.io/sml/filter_foldl_foldr.sml at main · Stagyrite/stagyrite.github.io")

filter p \[x\_<sub>1</sub>, …, x\_<sub>n</sub>\] is equal to those
elements x\_<sub>i</sub> in x\_<sub>1</sub>, …, x\_<sub>n</sub> for
which p x\_<sub>i</sub> is true  
Express the given function using the foldl or foldr function.

```sml
fun filter p l = foldr (fn (x, acc) => (if p x = true then x::acc else acc)) [] l;
```

## [remove (foldl/foldr)](https://github.com/Stagyrite/stagyrite.github.io/blob/main/sml/remove_foldl_foldr.sml "stagyrite.github.io/sml/remove_foldl_foldr.sml at main · Stagyrite/stagyrite.github.io")

remove p \[x\_<sub>1</sub>, …, x\_<sub>n</sub>\] is equal to those
elements x\_<sub>i</sub> in x\_<sub>1</sub>, …, x\_<sub>n</sub> for
which p x\_<sub>i</sub> is false  
Express the given function using the foldl or foldr function.

```sml
fun remove p l = foldr (fn (x, acc) => (if p x = false then x::acc else acc)) [] l;
```

## [flatten (foldl)](https://github.com/Stagyrite/stagyrite.github.io/blob/main/sml/flatten_foldl.sml "stagyrite.github.io/sml/flatten_foldl.sml at main · Stagyrite/stagyrite.github.io")

flatten \[x\_<sub>1</sub>, …, x\_<sub>n</sub>\] = x\_<sub>1</sub> @ … @
x\_<sub>n</sub>

Express the given function using the foldl function.

```sml
fun flatten l = foldl (fn (x, acc) =>  acc @ x) [] l;
```

## [sublist](https://github.com/Stagyrite/stagyrite.github.io/blob/main/sml/sublist.sml "stagyrite.github.io/sml/sublist.sml at main · Stagyrite/stagyrite.github.io")

A sublist of the list l = \[x\_<sub>1</sub>, …, x\_<sub>n</sub>\] is
called the list \[x\_<sub>i + 1</sub>, …, x\_<sub>j</sub>\] for 0 ≤ i ≤
j ≤ n.

```sml
fun sublist (x::xs) =
    let
    fun addx (ys::yss) = (x::ys) :: addx yss
      | addx nil = nil
    val xss = sublist xs
    in
    xss @ addx xss
    end
  | sublist [] = [[]];
```

## [subseq](https://github.com/Stagyrite/stagyrite.github.io/blob/main/sml/subseq.sml "stagyrite.github.io/sml/sublist.sml at main · Stagyrite/stagyrite.github.io")

A subsequence of the list l = \[x\_<sub>1</sub>, …, x\_<sub>n</sub>\] is
called the list \[x\_<sub>i+1</sub>, …, x\_<sub>j</sub>\] for 0 ≤ i ≤ j
≤ n.

```sml
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
```

---

🏘️🎣⛵🌊
