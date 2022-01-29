extension SwappableList<E> on List<E> {
  void swap(int indexA, int indexB) {
    final E temp = this[indexA];
    this[indexA] = this[indexB];
    this[indexB] = temp;
  }
}
