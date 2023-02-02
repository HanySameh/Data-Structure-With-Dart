/*
Check for balanced parentheses. Given a string, check if there are ( and ) characters, 
and return true if the parentheses in the string are balanced like:

 case 1
h((e))llo(world)() // balanced parentheses 
 case 2
(hello world // unbalanced parentheses
*/

// Solution
import '../stack.dart';

bool checkParentheses(String text) {
  var stack = Stack<int>();
  final open = '('.codeUnitAt(0);
  final close = ')'.codeUnitAt(0);
  for (int codeUnit in text.codeUnits) {
    if (codeUnit == open) {
      stack.push(codeUnit);
    } else if (codeUnit == close) {
      if (stack.isEmpty) {
        return false;
      } else {
        stack.pop();
      }
    }
  }
  return stack.isEmpty;
}
