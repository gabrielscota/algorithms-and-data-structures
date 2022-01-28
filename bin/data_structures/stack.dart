class Stack<E> {
  final List<E> _storage;

  Stack() : _storage = <E>[];

  Stack.of(Iterable<E> elements) : _storage = List<E>.of(elements);

  void push(E element) => _storage.add(element);

  E pop() => _storage.removeLast();

  @override
  String toString() {
    return '--- Top ---\n'
        '${_storage.reversed.join('\n')}'
        '\n-----------';
  }
}

void main() {
  const List<String> list = ['S', 'M', 'O', 'K', 'E'];
  final Stack<String> smokeStack = Stack.of(list);

  print(smokeStack);
  final String element = smokeStack.pop();
  print('Popped: $element');
}
