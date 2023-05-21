# Stack ADT

The Stack ADT (Abstract Data Type) provides operations for working with a stack, a Last-In-First-Out (LIFO) data structure.

### NOTE:

- Use ChatGPT to print out this documentation by giving the queue ADT documentation as an example.

## `stack-reps` Function

This function allows the creation of multiple representations for the Stack ADT, avoiding name-space clutter. It takes an argument `m` which can be either `'proc` or `'list` to determine the representation.

### Procedural Representation

- `(make-empty)`: Creates an empty stack.
- `(push x s)`: Pushes element `x` onto stack `s`.
- `(top s)`: Returns the top element of stack `s`.
- `(pop s)`: Removes and returns the top element from stack `s`.
- `(empty? s)`: Checks if stack `s` is empty.

### List Representation

- `(make-empty)`: Creates an empty stack represented as a list.
- `(push x s)`: Pushes element `x` onto stack `s`.
- `(top s)`: Returns the top element of stack `s`.
- `(pop s)`: Removes and returns the top element from stack `s`.
- `(empty? s)`: Checks if stack `s` is empty.

### `dispatch` Function

- `(dispatch m)`: A dispatch function that routes the stack operations based on the chosen representation (`'proc` or `'list`).

## Usage

You can create stacks and perform operations based on the chosen representation. Below are examples using both procedural and list representations:

### Procedural Stacks

```scheme
(define stack-0 (make-empty-stack))
(define stack-1 (push-stack 'a stack-0))
(define stack-2 (push-stack 'b stack-1))
(define stack-3 (push-stack 'c (pop-stack stack-2)))

(top-stack stack-3) ; Returns 'c'
(top-stack stack-2) ; Returns 'b'
(top-stack stack-1) ; Returns 'a'
```

### List Stacks

```scheme
(define stack-0 (make-empty-stack))
(define stack-1 (push-stack 'a stack-0))
(define stack-2 (push-stack 'b stack-1))
(define stack-3 (push-stack 'c (pop-stack stack-2)))

(top-stack stack-3) ; Returns 'c'
(top-stack stack-2) ; Returns 'b'
(top-stack stack-1) ; Returns 'a'
```
