import 'dart:math';

class Sorting {
  Random rand = Random();

  void sort<E>(List<E> a, bool Function(E e1, E e2) compare) {
    _sort(a, 0, a.length, compare);
  }

  void _sort<E>(List<E> a, int l, int r, bool Function(E e1, E e2) compare) {
    if (r - l <= 0) return;

    // randomly pick a pivot.
    var p = rand.nextInt(r - l) + l;

    // swap the pivot to the left first.
    var tmp = a[p];
    a[p] = a[l];
    a[l] = tmp;

    var k = l + 1;
    for (var i = l + 1; i < r; i++) {
      if (compare(a[i], a[l])) {
        tmp = a[i];
        a[i] = a[k];
        a[k] = tmp;
        k++;
      }
    }

    // swap the pivot to the right place.
    tmp = a[l];
    a[l] = a[k - 1];
    a[k - 1] = tmp;

    _sort(a, l, k - 1, compare);
    _sort(a, k, r, compare);
  }
}
