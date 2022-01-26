class Node {
  final int data;
  late Node? next;

  Node({
    required this.data,
    this.next,
  });

  Node? insert(Node? head, int value) {
    if (head == null) {
      return Node(data: value);
    }

    head.next = insert(head.next, value);
    return head;
  }

  void printList(Node? head, {bool isReversed = false}) {
    if (head == null) {
      return;
    }

    if (isReversed) {
      printList(head.next, isReversed: isReversed);
      print(head.data);
    } else {
      print(head.data);
      printList(head.next);
    }
  }
}

void main() {
  Node list = Node(data: 2);
  Node? head = list;

  list.insert(head, 6);
  list.insert(head, 1);
  list.insert(head, 3);
  list.insert(head, 9);
  list.insert(head, 5);
  list.insert(head, 4);
  list.insert(head, 7);

  print('\n--- Linked List ---');
  list.printList(head);
  print('\n--- Reversed Linked List ---');
  list.printList(head, isReversed: true);
}
