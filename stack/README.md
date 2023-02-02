# Stack

Since Stack is a collection of elements, you may have wondered about implementing
the Iterable interface. After all, List and Set and even the keys and values of a Map
are all iterable.
However, a stack’s purpose is to limit the number of ways to access your data, and
adopting interfaces such as Iterable would go against this goal by exposing all the
elements via the iterator. In this case, less is more!
Stacks are crucial to problems that search trees and graphs. Imagine finding your
way through a maze. Each time you come to a decision point of left, right or straight,
you can push all possible decisions onto your stack. When you hit a dead end, simply
backtrack by popping from the stack and continuing until you escape or hit another
dead end. You may want to try your hand at that sometime, but for now, work through the challenges in the following section.

## Key Points

- A stack is a LIFO, last-in first-out, data structure.
- Despite being so simple, the stack is a key data structure for many problems.
- The only two essential operations for a stack are push for adding elements and pop for removing elements.
- push and pop are both constant-time operations.
