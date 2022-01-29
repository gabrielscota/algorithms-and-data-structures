import 'extensions/extensions.dart';

void bubbleSort<E extends Comparable<dynamic>>(List<E> list) {
  for (int end = list.length - 1; end > 0; end--) {
    bool swapped = false;
    for (int current = 0; current < end; current++) {
      if (list[current].compareTo(list[current + 1]) > 0) {
        list.swap(current, current + 1);
        swapped = true;
      }
    }

    if (!swapped) return;
  }
}

void main() {
  final list = [9, 4, 10, 3];
  print('Original: $list');
  bubbleSort(list);
  print('Bubble sorted: $list');
}
