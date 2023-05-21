(load "../graph-algorithms/graph-algorithms.scm")
(load "../graph-data-types/queue.scm")

(display "Queue ADT")
(newline)
(display "----------")
(newline)
(define queue-0 make-empty-queue)
(define queue-1 (enqueue-queue 'a queue-0))
(define queue-2 (enqueue-queue 'b queue-1))
(define queue-3 (enqueue-queue 'c queue-2))
(define queue-4 (enqueue-queue 'd queue-3))
(display "queue-0: ")
queue-0
(display "queue-1: ")
queue-1
(display "queue-2: ")
queue-2
(display "queue-3: ")
queue-3
(display "queue-4: ")
queue-4
(display "queue-4 after dequeue: ")
(dequeue-queue queue-4)
(display "empty? queue-2: ")
(empty-queue? queue-2)

(newline)
(display "Set ADT")
(newline)
(display "----------")
(newline)

(define set-0 make-empty-set)
(define set-1 (insert-set 'a set-0))
(define set-2 (insert-set 'b set-1))
(define set-3 (insert-set 'c set-2))
(define set-4 (insert-set 'd set-3))
(define set-5 (insert-set 'e set-4))

(display "set-0: ")
set-0
(display "set-1: ")
set-1
(display "set-2: ")
set-2
(display "set-3: ")
set-3
(display "set-4: ")
set-4
(display "set-5: ")
set-5

(define set-5 (delete-set 'd set-5))
(display "After deleting 'd from set-5: ")
set-5

(define set0 make-empty-set)
(define set1 (insert-set 'a set0))
(define set2 (insert-set 'f set1))
(define set3 (insert-set 'b set2))

(display "union-set set-5 set3: ")
(union-set set-5 set3)

(display "intersection-set set-5 set3: ")
(intersection-set set-5 set3)



(newline)
(display "Graph ADT")
(newline)
(display "----------")
(newline)
(define graph-0 make-empty-graph)
(define graph-1 (insert-vertex-graph 'a graph-0))
(define graph-2 (insert-vertex-graph 'b graph-1))
(define graph-3 (insert-vertex-graph 'c graph-2))
(define graph-4 (insert-vertex-graph 'd graph-3))
(define graph-5 (insert-vertex-graph 'e graph-4))
(define graph-6 (insert-vertex-graph 'f graph-5))

(display "graph-0: ")
graph-0
(display "graph-1 inserting vertex 'a: ")
graph-1
(display "graph-2 inserting vertex 'b: ")
graph-2
(display "graph-3 inserting vertex 'c: ")
graph-3
(display "graph-4 inserting vertex 'd: ")
graph-4
(display "graph-5 inserting vertex 'e: ")
graph-5
(display "graph-6 inserting vertex 'f: ")
graph-6

(newline)

(define graph-6 (insert-edge-graph 'a 'e graph-6))
(display "graph-6 inserting edge 'e to vertex 'a: ")
graph-6
(define graph-6 (insert-edge-graph 'a 'd graph-6))
(display "graph-6 inserting edge 'd to vertex 'a: ")
graph-6

(newline)

(define graph-6 (insert-edge-graph 'b 'c graph-6))
(display "graph-6 inserting edge 'c to vertex 'b: ")
graph-6
(define graph-6 (insert-edge-graph 'b 'f graph-6))
(display "graph-6 inserting edge 'f to vertex 'b: ")
graph-6

(newline)

(define graph-6 (insert-edge-graph 'c 'b graph-6))
(display "graph-6 inserting edge 'b to vertex 'c: ")
graph-6
(define graph-6 (insert-edge-graph 'c 'e graph-6))
(display "graph-6 inserting edge 'e to vertex 'c: ")
graph-6

(newline)

(define graph-6 (insert-edge-graph 'd 'a graph-6))
(display "graph-6 inserting edge 'a to vertex 'd: ")
graph-6

(newline)

(define graph-6 (insert-edge-graph 'e 'a graph-6))
(display "graph-6 inserting edge 'a to vertex 'e: ")
graph-6
(define graph-6 (insert-edge-graph 'e 'c graph-6))
(display "graph-6 inserting edge 'c to vertex 'e: ")
graph-6

(newline)

(define graph-6 (insert-edge-graph 'f 'b graph-6))
(display "graph-6 inserting edge 'b to vertex 'f: ")
graph-6

(newline)

(display "vertices of graph-6: ")
(vertices-graph graph-6)

(newline)

(display "neighbors of vertex 'a: ")
(neighbors-graph 'a graph-6)
(display "neighbors of vertex 'b: ")
(neighbors-graph 'b graph-6)
(display "neighbors of vertex 'd: ")
(neighbors-graph 'd graph-6)

(newline)

(display "BFS from vertex 'a: ")
(bfs graph-6 'a)

(newline)

(display "Shortest-path from vertex 'a to 'f: ")
(shortest-path graph-6 'a 'f)

(newline)

(display "DFS from vertex 'b: ")
(dfs graph-6 'b)
