import 'package:flutter_test/flutter_test.dart';

import 'package:diffstore/diffstore.dart';

void main() {
  test('sorting test', () async {
    final Sorting sort = Sorting();
    var a = [5, 4, 9, 1, 23, 30, 6, 2, 1, 0];
    sort.sort(a, (e1, e2) {
      return e1 < e2;
    });
    expect(a, [0, 1, 1, 2, 4, 5, 6, 9, 23, 30]);
  });
}
