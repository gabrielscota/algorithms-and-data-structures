class Node {
  final int data;
  late Node? left;
  late Node? right;

  Node({
    required this.data,
    this.left,
    this.right,
  });

  Node? insert(Node? root, int value) {
    if (root == null) {
      return Node(data: value);
    }

    if (value > root.data) {
      root.right = insert(root.right, value);
    } else {
      root.left = insert(root.left, value);
    }
    return root;
  }

  void printTree(Node? root) {
    if (root == null) {
      return;
    }

    printTree(root.left);
    print(root.data);
    printTree(root.right);
  }
}

void main() {
  Node tree = Node(data: 9);
  Node? root = tree;

  tree.insert(root, 3);
  tree.insert(root, 5);
  tree.insert(root, 2);
  tree.insert(root, 6);
  tree.insert(root, 8);

  print('\n--- Ordened Binary Tree ---');
  tree.printTree(root);
}
