### Class: CSc 335 
### Date: Feb 14, 2023

**NOTE: Quiz will be on Feb 28, 2023 and not Feb 23, 2023**

#### QUIZ Feedback 
- If it's only one digit and you have to remove it, you cannot do that. 
    - For example - Remove `2` from `2` will not return anything and need to make a precondition it. 


#### Factorial Example Iteratively
- The use of stacks
- Base case - factorial of `0`
- a pattern of calls expansion
    - (fact 6) = (* (fact 5) 6) = (* (* (fact 4) 5) 6) and so on
- Not using stack and it will not exhaust the program 
- Will not call the Garbage Collector and it will not terminate the program and you have to terminate yourself

### Down counting one 
- Create a function for down counting one from a number `n` 