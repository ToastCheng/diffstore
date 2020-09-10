import '../api/diffstore.dart';
import '../api/diffstore.dart';
import 'diffstore.dart';
import 'transaction.dart';

class DiffStoreClient {
  DiffStore db;
  DiffStoreTransaction txn;
  DiffStoreClient() {
    db = DiffStore('test');
  }
}
