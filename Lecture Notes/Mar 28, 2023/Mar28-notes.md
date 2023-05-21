## Class: CSc 335

## Date: Mar 28, 2023 (Tuesday)

**_Sketch of Recursive Solution to the LargestInt:_**

- Find the min digit in $n \geq 0$ an integer
- Find the result: `Result of Recurr call` \* 10 + d
  - But what if d occurs many times in n? We can deal this with a function `(remove-all d n)`
  - The function returns the number resulting from n if occurences of `d` are removed.
- With this, the final result can be
  - `[RecursiveCall on (remove-all d n)] * 10 + d`

**_Iterative Solution_**

```
            -----------------------------------
    N   =  |                |                  |
            -----------------------------------
                    nyp             ap
    rsf contains (LargestInt ap)

    (digits in N) = (digits in nyp) U (digits in rsf)
```

- progress towards termination by extracting a largest remaining digit `d` and updating `rsf` to $(rsf * 10) + d$

**<u>Duplicates?</u>**

- After finding a largest remaining digit `d`, remove all the occurences of `d` from `nyp`.
- If we do this, then any digit remaining in $nyp < any \ digit \ in \ rsf$
- This gurantees the order property for the `rsf`.

Another way to make progress to termination:

- grab a smallest remaining digit `d` and then check whether it is already in rsf before adding it.

---
