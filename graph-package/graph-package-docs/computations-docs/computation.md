# Computation.scm Documentation

This file contains a series of computations using various abstract data types (ADTs) from the graph package. It demonstrates the usage of the Queue ADT, Set ADT, and Graph ADT.

## Queue ADT

The Queue ADT is used to implement a queue data structure.

### Examples

```scheme
(define queue-0 make-empty-queue)
(define queue-1 (enqueue-queue 'a queue-0))
(define queue-2 (enqueue-queue 'b queue-1))
(define queue-3 (enqueue-queue 'c queue-2))
(define queue-4 (enqueue-queue 'd queue-3))

(dequeue-queue queue-4)
(empty-queue? queue-2)
```

## Set ADT

The Set ADT is used to implement a set data structure.

### Examples

```scheme
(define set-0 make-empty-set)
(define set-1 (insert-set 'a set-0))
(define set-2 (insert-set 'b set-1))
(define set-3 (insert-set 'c set-2))
(define set-4 (insert-set 'd set-3))
(define set-5 (insert-set 'e set-4))

(delete-set 'd set-5)
(union-set set-5 set3)
(intersection-set set-5 set3)
```

## Graph ADT

The Graph ADT is used to show a graph in adjandency-list representation.

### Examples

```scheme
(define graph-0 make-empty-graph)
(define graph-1 (insert-vertex-graph 'a graph-0))
(define graph-2 (insert-vertex-graph 'b graph-1))
(define graph-3 (insert-vertex-graph 'c graph-2))
(define graph-4 (insert-vertex-graph 'd graph-3))
(define graph-5 (insert-vertex-graph 'e graph-4))
(define graph-6 (insert-vertex-graph 'f graph-5))

(insert-edge-graph 'a 'e graph-6)
(insert-edge-graph 'a 'd graph-6)
(insert-edge-graph 'b 'c graph-6)
(insert-edge-graph 'b 'f graph-6)
(insert-edge-graph 'c 'b graph-6)
(insert-edge-graph 'c 'e graph-6)
(insert-edge-graph 'd 'a graph-6)
(insert-edge-graph 'e 'a graph-6)
(insert-edge-graph 'e 'c graph-6)
(insert-edge-graph 'f 'b graph-6)

(vertices-graph graph-6)
(neighbors-graph 'a graph-6)
(neighbors-graph 'b graph-6)
(neighbors-graph 'd graph-6)
(bfs graph-6 'a)
(shortest-path graph-6 'a 'f)
(dfs graph-6 'b)
```
