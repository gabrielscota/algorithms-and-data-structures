import 'extensions/extensions.dart';

void selectionSort<E extends Comparable<dynamic>>(List<E> list) {
  for (int start = 0; start < list.length - 1; start++) {
    int lowest = start;
    for (var next = start + 1; next < list.length; next++) {
      if (list[next].compareTo(list[lowest]) < 0) {
        lowest = next;
      }
    }

    if (lowest != start) {
      list.swap(lowest, start);
    }
  }
}

void main() {
  final list = [9, 4, 10, 3];
  print('Original: $list');
  selectionSort(list);
  print('Selection sorted: $list');
}
