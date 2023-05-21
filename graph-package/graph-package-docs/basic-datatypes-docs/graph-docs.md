# Graph Abstract Data Type Documentation

## Introduction

- The Graph ADT (Abstract Data Type) represents a collection of vertices (nodes) and the relationships (edges) between them. Operations include creation of an empty graph, insertion of a vertex or an edge, and retrieval of all vertices or all edges of a specific vertex.
- The graph is undirected and unweighted and it in adjandency-list representation.

## Procedures

1. **make-empty**

   - **Description:**
     - Creates an empty graph.
   - **Pre-condition:**
     - No input is required.
   - **Post-condition:**
     - An empty graph is returned.

2. **insert-vertex**

   - **Description:**
     - Inserts a vertex into the graph.
   - **Pre-condition:**
     - `v` is a vertex to be inserted into the graph `g`.
     - `g` is a graph. It can be empty.
   - **Post-condition:**
     - If `v` is not already a vertex of `g`, `v` is added to `g` and the updated graph is returned. If `v` is already a vertex of `g`, `g` is returned unchanged.

3. **insert-edge**

   - **Description:**
     - Inserts an edge between two vertices in the graph.
   - **Pre-condition:**
     - `v1` and `v2` are vertices in the graph `g`.
     - `g` is a non-empty graph.
   - **Post-condition:**
     - An edge is created between `v1` and `v2`. If an edge already exists, `g` is returned unchanged.
   - calls `add-neighbor v e g` helper
     - `v1` is passed as `v` and `v2` is passed as `e` to this helper
     - inserting `e` into the adjandency-list (neighbor) of `v`
     - **Description:**
       - The add-neighbor function adds a neighbor e to a specified vertex v in a graph g. It updates the graph by adding the neighbor to the appropriate vertex, and returns the updated graph as the result.
     - **Pre-condition:**
       - `v` is the vertex to which the neighbor `e` will be added
       - `e` is the neighbor to be added the vertex `v`
       - `g` is the grpah in which the neighbor will be added
     - **Post-condition:**
       - Returns the updated graph with vertex `v` with added neighbor `e`

4. **vertices**

   - **Description:**
     - Returns all vertices of the graph.
   - **Pre-condition:**
     - `g` is a non-empty graph.
   - **Post-condition:**
     - Returns a list containing all vertices of `g`.

5. **neighbors**

   - **Description:**
     - Returns all neighboring vertices of a given vertex in the graph.
   - **Pre-condition:**
     - `v` is a vertex in the graph `g`.
     - `g` is a non-empty graph.
   - **Post-condition:**
     - Returns a list containing all vertices that share an edge with `v`.

## Define basic operations

```scheme
(define make-empty-graph ((graph-reps 'list) 'make-empty))

(define insert-vertex-graph ((graph-reps 'list) 'insert-vertex))

(define insert-edge-graph ((graph-reps 'list) 'insert-edge))

(define vertices-graph ((graph-reps 'list) 'vertices))

(define neighbors-graph ((graph-reps 'list) 'neighbors))
```

## Usage

- Creating graphs and adding vertices

```scheme
(define graph-0 make-empty-graph)
(define graph-1 (insert-vertex-graph 'a graph-0))
(define graph-2 (insert-vertex-graph 'b graph-1))
(define graph-3 (insert-vertex-graph 'c graph-2))
(define graph-4 (insert-vertex-graph 'd graph-3))
(define graph-5 (insert-vertex-graph 'e graph-4))
(define graph-6 (insert-vertex-graph 'f graph-5))
```

- Adding edges

```scheme
;; inserting edge 'e to vertex 'a
(define graph-6 (insert-edge-graph 'a 'e graph-6))

;; inserting edge 'd to vertex 'a
(define graph-6 (insert-edge-graph 'a 'd graph-6))
```
