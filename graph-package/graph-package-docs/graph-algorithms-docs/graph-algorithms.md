# Graph Algorithms Documentation

## Breadth-First Search (BFS) Algorithm

### NOTE:

- Firstly, I wrote down the implementation then I used ChatGPT to implement some part of the algorithms because of the time constriants.
- Even though I used ChatGPT, it was using cons, car, and cdr on the top level and I had to fix it so it uses the necessary queue, stack ADT instead of cons, car, cdr and so on.

**Procedure:**

- `bfs(g, start)`

**Description:**

- Performs the Breadth-First Search algorithm on a non-empty graph `g` starting from the vertex `start`.

**Pre-condition:**

- `g`: Non-empty graph.
- `start`: Starting vertex.

**Post-condition:**

- Returns a list of visited vertices in the order they were visited.

### Helper Function

**Procedure:**

- `enqueue-all`

**Pre-condition:**

- `nodes`: A queue containing elements to be enqueued.
- `queue`: A queue where the elements from `nodes` will be enqueued.

**Post-condition:**

- The function enqueues all elements from the `nodes` queue into the `queue` and returns the updated `queue` as the result.

In other words:

- Before calling the `enqueue-all` function, the `nodes` and `queue` parameters should be valid queues.
- After calling the `enqueue-all` function, all elements from the `nodes` queue will be enqueued into the `queue`, and the `queue` will be updated with the new elements. The updated `queue` is then returned as the result.

**Post-condition**

- The function enqueues all elements from the `nodes` queue into the `queue` and returns the updated `queue` as the result.

---

## Shortest Path Algorithm

**Procedure:**

- `shortest-path(g, start, target)`

**Description:**

- Finds the shortest path from a starting vertex `start` to a target vertex `target` in a non-empty graph `g`.

**Pre-condition:**

- `g`: Non-empty graph.
- `start`: Starting vertex.
- `target`: Ending vertex.

**Post-condition:**

- Returns a list representing the shortest path from `start` to `target` (in reverse order).

---

## Depth-First Search (DFS) Algorithm

**Procedure:**

- `dfs(g, start)`

**Description:**

- Performs the Depth-First Search algorithm on a non-empty graph `g` starting from the vertex `start`.

**Pre-condition:**

- `g`: Non-empty graph.
- `start`: Starting vertex.

**Post-condition:**

- Returns a list of visited vertices in the order they were visited.

### Helper Function

**Procedure:**

- `push-all`

**Pre-condition:**

- `nodes`: A stack containing elements to be pushed.
- `stack`: A stack where the elements from `nodes` will be pushed.

**Post-condition:**

- The procedure pushes all elements from the `nodes` stack into the `stack` and returns the updated `stack` as the result.

In other words:

- Before calling the `push-all` procedure, the `nodes` and `stack` parameters should be valid stacks.
- After calling the `push-all` procedure, all elements from the `nodes` stack will be pushed into the `stack`, and the `stack` will be updated with the new elements. The updated `stack` is then returned as the result.
