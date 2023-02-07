class Node<T> {
  Node({
    required this.value,
    this.next,
  });
  T value;
  Node<T>? next;

  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;
  bool get isEmpty => head == null;

  /// [Insertion]
// Pushing to the Front of a List
  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

// Appending to the End of a List
  void append(E value) {
    if (isEmpty) {
      push(value);
      return;
    }
    tail!.next = Node(value: value);
    tail = tail!.next;
  }

// Inserting in Middle of a List
// 1- Finding a particular node in the list.
  Node<E>? nodeAt(int index) {
    var currentNode = head;
    var currentIndex = 0;
    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex += 1;
    }
    return currentNode;
  }

// 2- Inserting the new node after it.
  Node<E> insertAfter(Node<E> node, E value) {
    if (tail == node) {
      append(value);
      return tail!;
    }
    node.next = Node(value: value, next: node.next);
    return node.next!;
  }

  /// [Removing]
// Popping From the Front of a List
  E? pop() {
    final value = head?.value;
    head = head?.next;
    if (isEmpty) {
      tail = null;
    }
    return value;
  }

// Removing From the End of a List
  E? removeLast() {
    if (head?.next == null) return pop();
    var current = head;
    while (current!.next != tail) {
      current = current.next;
    }
    final value = tail?.value;
    tail = current;
    tail?.next = null;
    return value;
  }

// Removing a Value From the Middle of a List
  E? removeAfter(Node<E> node) {
    final value = node.next?.value;
    if (node.next == tail) {
      tail = node;
    }
    node.next = node.next?.next;
    return value;
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }
}
