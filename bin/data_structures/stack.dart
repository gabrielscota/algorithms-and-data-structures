class Stack<E> {
  final List<E> _storage;

  Stack() : _storage = <E>[];

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
  final Stack<int> stack = Stack<int>();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  print(stack);

  final int element = stack.pop();
  print('Popped: $element');
}
