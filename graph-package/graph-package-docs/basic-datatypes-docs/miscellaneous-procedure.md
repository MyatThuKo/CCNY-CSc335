# Utility Procedures Documentation

## Update Visited

**Procedure:**

- `(update-visited element lst)`

**Description:**

- Updates the visited list `lst` by adding `element` at the beginning.

**Pre-condition:**

- `element` is the element to be added.
- `lst` is the existing visited list.

**Post-condition:**

- Returns the updated visited list with `element` added at the beginning.

## My Reverse

**Procedure:**

- `(my-reverse lst)`

**Description:**

- Reverses the order of elements in a given list `lst`.

**Pre-condition:**

- `lst` is the list to be reversed.

**Post-condition:**

- Returns a new list with the elements of `lst` in reverse order.

## Member

**Procedure:**

- `(member? element, lst)`

**Description:**

- Checks if `element` is a member of the list `lst`.

**Pre-condition:**

- `element` is the element to be checked.
- `lst` is the list to be searched.

**Post-condition:**

- Returns `#t` if `element` is found in `lst`, `#f` otherwise.

## List to Queue

**Procedure:**

- `(list-to-queue lst)`

**Description:**

- Converts a list `lst` into a queue.

**Pre-condition:**

- `lst` is the list to be converted.

**Post-condition:**

- Returns a queue containing the elements of `lst` in the same order.

## List to Stack

**Procedure:**

- `(list-to-stack lst)`

**Description:**

- Converts a list `lst` into a stack.

**Pre-condition:**

- `lst` is the list to be converted.

**Post-condition:**

- Returns a stack containing the elements of `lst` in the same order.

## My Append

**Procedure:**

- `(my-append x y)`

**Description:**

- The `my-append` function takes two lists `x` and `y` as input and appends them together using the built-in append function. It returns a new list that contains all the elements from `x` followed by all the elements from `y`.

**Pre-condition:**

- `x` and `y` should be valid lists.
- `x`: The first list.
- `y`: The second list.

**Post-condition**

- The function returns a new list that is the result of appending `x` and `y` together.

## My Cons

- `(my-cons x y)`

**Description:**

- The `my-cons` function takes two arguments x and y and constructs a new pair by consing `x` to `y` using the built-in cons function. It returns a new pair where x is the first element and y is the second element.

**Pre-condition:**

- `x` and `y` should be any valid Scheme objects.
- `x`: The first element.
- `y`: The second element.

**Post-condition**

- The function returns a new pair that is the result of adding `x` and `y` together.
