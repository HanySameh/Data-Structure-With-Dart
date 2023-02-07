import ' linked_list.dart';
import 'challenges/middle_node.dart';
import 'challenges/print_in_reverse.dart';

void main(List<String> args) {
// Creating a Linked List by Hand
  final node1 = Node(value: 1);
  final node2 = Node(value: 2);
  final node3 = Node(value: 3);
  node1.next = node2;
  node2.next = node3;
  print(node1);

  final list = LinkedList<int>();

  /// [Test Insertion]
  // insert to the front test
  print('-------- Insert to the Front --------');
  list.push(3);
  list.push(2);
  list.push(1);
  print(list);

// insert to the end test
  print('-------- Insert to the End --------');
  list.append(4);
  list.append(5);
  list.append(6);
  print(list);

// insert after test
  print('-------- Insert After --------');
  print('Before: $list');
  var middleNode = list.nodeAt(1)!;
  list.insertAfter(middleNode, 42);
  print('After: $list');

  /// [Test Removing item from the list]
// remove from the front
  print('-------- pop --------');
  print('Before: $list');
  final poppedValue = list.pop();
  print('After: $list');
  print('Popped value: $poppedValue');

// remove last test
  print('-------- Remove last --------');
  print('Before: $list');
  final removedValue = list.removeLast();
  print('After: $list');
  print('Removed value: $removedValue');

// Remove From the Middle
  print('-------- Remove from the Middle --------');
  print('Before: $list');
  final firstNode = list.nodeAt(0);
  final value = list.removeAfter(firstNode!);
  print('After: $list');
  print('Removed value: $value');

// test reverse challenge
  print('Original list: $list');
  print("Printing in reverse:");
  printListInReverse(list);

// test middle node challenge
  final middle = getMiddle(list);
  print('Middle: ${middle?.value}');
}
