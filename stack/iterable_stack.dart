/// take an existing iterable collection and convert it to a stack
class IterableStack<E> {
  IterableStack.of(Iterable<E> elements) : _storage = List<E>.of(elements);
  final List<E> _storage;

// Stack Operations

  void push(E element) => _storage.add(element);

  E pop() => _storage.removeLast();

// Non-Essential Operations

// 1- peek -> RETURN the top of stake
  E get peek => _storage.last;

// 2- isEmpty -> check if stack empty
  bool get isEmpty => _storage.isEmpty;

// 3- isNoEmpty  -> check if stack is not empty
  bool get isNotEmpty => _storage.isNotEmpty;

  /// This will list all of the elements in [_storage] with the last one at the top.
  @override
  String toString() {
    return '--- Top ---\n'
        '${_storage.reversed.join('\n')}'
        '\n-----------';
  }
}
