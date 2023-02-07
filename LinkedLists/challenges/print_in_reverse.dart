/* 
Create a function that prints the nodes of a linked list in reverse order. For example:
1 -> 2 -> 3 -> null
 should print out the following: 
3
2 
1
*/

// Solution
import '../ linked_list.dart';

void printNodesRecursively<T>(Node<T>? node) {
  if (node == null) return;
  printNodesRecursively(node.next);
  print(node.value);
}

void printListInReverse<E>(LinkedList<E> list) {
  printNodesRecursively(list.head);
}
