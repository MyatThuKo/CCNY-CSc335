## Queue ADT

### List Representation

### NOTE:

- I tried using two stacks and the reverse function of mine was not correct and it was not reversing the stacks at all.
- I put the queue ADT implementation using two stacks in `queue-two-stacks.scm`. But never used it to implement $BFS$.
- Hence, I use an empty list to create a queue and because of the time constraints and unforseenable situations.
- Since the queue is recognized as first in first out, when dequeuing it, I removed the first one and return the rest of the queue by `cdring` the queue.

#### List of Procedures

1. make-empty

   - create an empty list variable

2. enqueue

   - adding an element to the queue
   - pre-condition
     - q is non-empty queue
     - x is an element to be added to the queue
   - post-condition:
     - queue with an element inside

3. dequeue

   - removing the top/first element from the queue
   - pre-condition
     - q is non-empty queue
   - post-condition
     - returning the queue without the first element

4. first

   - getting the first element in from the queue
   - pre-condition
     - q is non-empty queue
   - post-condition
     - returning the first element from the queue

5. empty?

   - checking if the input queue is empty
   - pre-condition
     - q is a queue, can be empty
   - post-condition
     - #t if the input q is empty
     - #f if the input q is not empty

## Define basic operations

```scheme
(define make-empty-queue ((queue-reps 'list) 'make-empty))

(define enqueue-queue ((queue-reps 'list) 'enqueue))

(define dequeue-queue ((queue-reps 'list) 'dequeue))

(define first-queue ((queue-reps 'list) 'first))

(define empty-queue? ((queue-reps 'list) 'empty?))
```

## Usage

You can create queues and perform operations based on the list representation. Below are examples using both procedural and list representations:

```scheme
(define queue-0 make-empty-queue)
(define queue-1 (enqueue-queue 'a queue-0))
(define queue-2 (enqueue-queue 'b queue-1))
(define queue-3 (enqueue-queue 'c queue-2))
(define queue-4 (enqueue-queue 'd queue-3))
```
