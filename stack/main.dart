import 'challenges/balance_the_parentheses.dart';
import 'challenges/reverse_list.dart';
import 'iterable_stack.dart';
import 'stack.dart';

void main(List<String> args) {
  final stack = Stack<int>();
  stack.push(1);
  stack.push(2);
  stack.push(3);

  stack.push(4);
  print(stack);
  final element = stack.pop();
  print('Popped: $element');

  // Iterable Stack
  const list = ['S', 'M', 'O', 'K', 'E'];
  final smokeStack = IterableStack.of(list);
  print(smokeStack);
  print('Popped: ${smokeStack.pop()}');

  // challenges test
  print('------------- Reverse List -------------');
  // check reverse list challenge
  final List<String> listOfLetters = ['a', 'b', 'c', 'd', 'e', 'f'];
  printInReverse(listOfLetters);
  print('-------- With Iterable Stack ----------');
  ReverseWithIterableStack(listOfLetters);

  // balanced parentheses challenge
  print('------------ Balanced Parentheses ------------');
  final String text = 'h((e))llo(world)()';
  print(checkParentheses(text));
}
