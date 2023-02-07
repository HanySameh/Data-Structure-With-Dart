/*
Create a function that finds the middle node of a linked list. For example:
1 -> 2 -> 3 -> 4 -> null 
 middle is 3
1 -> 2 -> 3 -> null 
 middle is 2
*/

// Solution
import '../ linked_list.dart';

Node<E>? getMiddle<E>(LinkedList<E> list) {
  var slow = list.head;
  var fast = list.head;
  while (fast?.next != null) {
    fast = fast?.next?.next;
    slow = slow?.next;
  }
  return slow;
}
