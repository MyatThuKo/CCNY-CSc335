# Set Abstract Data Type Documentation

## Introduction

The Set ADT (Abstract Data Type) defines a collection of distinct elements. It supports various operations like insertion, deletion, union, intersection, etc. Here's a detailed description of each procedure in the Set ADT.

## Procedures

1. **make-empty**

   - **Description:**
     - Creates an empty set.
   - **Pre-condition:**
     - No input is required.
   - **Post-condition:**
     - An empty set is returned.

2. **insert**

   - **Description:**
     - Inserts an element into the set.
   - **Pre-condition:**
     - `s` is a set. It can be empty.
     - `x` is the element to be inserted into the set `s`.
   - **Post-condition:**
     - If `x` is not already an element of `s`, `x` is added to `s` and the updated set is returned. If `x` is already an element of `s`, `s` is returned unchanged.

3. **delete**

   - **Description:**
     - Removes an element from the set.
   - **Pre-condition:**
     - `s` is a non-empty set.
     - `x` is the element to be removed from the set `s`.
   - **Post-condition:**
     - If `x` is an element of `s`, `x` is removed from `s` and the updated set is returned. If `x` is not an element of `s`, `s` is returned unchanged.

4. **union**

   - **Description:**
     - Performs the union operation on two sets.
   - **Pre-condition:**
     - `s1` and `s2` are sets.
   - **Post-condition:**
     - Returns a set that includes all elements from both `s1` and `s2`.

5. **intersection**

   - **Description:**
     - Performs the intersection operation on two sets.
   - **Pre-condition:**
     - `s1` and `s2` are sets.
   - **Post-condition:**
     - Returns a set that includes all elements that are common to both `s1` and `s2`.

6. **element-of?**

   - **Description:**
     - Checks if an element is part of the set.
   - **Pre-condition:**
     - `s` is a set.
     - `x` is the element to be checked.
   - **Post-condition:**

     - Returns `#t` if `x` is an element of `s`.
     - Returns `#f` if `x` is not an element of `s`.

## Define basic operations

```scheme
(define make-empty-set ((set-reps 'list) 'make-empty))

(define insert-set ((set-reps 'list) 'insert))

(define delete-set ((set-reps 'list) 'delete))

(define union-set ((set-reps 'list) 'union))

(define intersection-set ((set-reps 'list) 'intersection))
```

## Usage

- Creating sets

```scheme
(define set-0 make-empty-set)
(define set-1 (insert-set 'a set-0))
(define set-2 (insert-set 'b set-1))
(define set-3 (insert-set 'c set-2))
(define set-4 (insert-set 'd set-3))
(define set-5 (insert-set 'e set-4))

(define set0 make-empty-set)
(define set1 (insert-set 'a set0))
(define set2 (insert-set 'f set1))
(define set3 (insert-set 'b set2))
```

- Deleting an element from set

```scheme
(define set-5 (delete-set 'd set-5))
```

- Union and Intersection set

```scheme
(union-set set-5 set3)

(intersection-set set-5 set3)
```
