## Class - CSc 335

## Date - Apr 25, 2023 (Tuesday)

---

_**A familiar ADT**_

|  Abstract  |                            mycons                            | mycar | mycdr |
| :--------: | :----------------------------------------------------------: | :---: | :---: |
| concrete 1 |                             cons                             |  car  |  cdr  |
| concrete 2 |                           $2^p3^q$                           |       |       |
| concrete 3 | using functions (see exercises following section 2.1 in A&S) |       |       |

_Problem 2 HW 7_

```
Asks that scheme numbers be replaced by lists of 1s

0 : ()
1 : ( 1 )
2 : ( 1 1 )
3 : ( 1 1 1 )
.
.
.
without using base 10 numbers ANYWHERE, what is the smallest set of changes needed to get value to work?
```

```scheme
(append x y z)

(append x (append y z)) = (append (append x y) z)
```

- So append is associative, and this justifies schome's append taking an arbitrary number of arguments.
