// Create a function that prints the contents of a list in reverse order.

// Solution
import '../iterable_stack.dart';
import '../stack.dart';

void printInReverse<E>(List<E> list) {
  var stack = Stack<E>();
  for (E value in list) {
    stack.push(value);
  }
  while (stack.isNotEmpty) {
    print(stack.pop());
  }
}

void ReverseWithIterableStack<E>(List<E> list) {
  var stack = IterableStack.of(list);
  while (stack.isNotEmpty) {
    print(stack.pop());
  }
}
