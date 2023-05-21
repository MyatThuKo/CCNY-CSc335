## Readme.md

## Graph package

- Only implemented the graph in adjandency-list representation
- Did not have enough time to implement in adjandency-matrix representation
- Created three algorithms:
  1. $BFS$
  2. $DFS$ and
  3. $Shortest\ Path\ Finder$

### Graph-package-code

1. computation

   - `computation.scm` - contains all the test codes for `queue ADT`, `set ADT`, `graph ADT`, `BFS`, `Shortest Path`, and `DFS` algorithms.
   - did not test the `stack ADT` since it's a copy of professor example
   - **_`computation.scm`_** is the file to run in order to test of the graph-package.

2. graph-alogrithm

   - `graph-algorithm.scm` - contains implementation of $BFS$, $DFS$ and $Shortest\ Path\ Finder$ algorithms

3. graph-data-types

   - `graph.scm` - implementation of abstract data type of graph data structure in adjandency-list representation
   - `queue.scm` - implementation of abstract data type of queue data structure in list representation
   - `stack.scm` - implementation of abstract data type of stack data structure in procedural and list representation (Copy of Professor's Stack ADT example)
   - `set.scm` - implementation of abstract data type of set data structure in list representation
   - `miscellaneous-procedures.scm` - implmentation of miscellaneous procedures, abstracted procedures to use in graph algorithms

### Graph-package-docs

1. basic-datatypes-docs

   - `graph-docs.md` - documentation of graph ADT and its abstracted procedures
   - `queue-docs.md` - documentation of queue ADT and its abstracted procedures
   - `set-docs.md` - documentation of set ADT and its abstracted procedures
   - `stack-docs.md` - documentation of stack ADT and its abstracted procedures
   - `miscellaneous-procedures.md` - documentation of abstracted procedures used in graph algorithms

2. computations-docs

   - `computation.md` - documentation of test codes to run the entire graph package

3. graph-algorithms-docs
   - `graph-algorithms.md` - documentation of all the algorithms implemented for the graph package
