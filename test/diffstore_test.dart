import 'package:flutter_test/flutter_test.dart';

import 'package:diffstore/diffstore.dart';

void main() {
  test('test', () async {
    final client = DiffStoreClient();
    await client.db.write('a', 12);
    print(await client.db.read('a'));
  });
}
