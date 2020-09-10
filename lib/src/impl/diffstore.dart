import 'package:synchronized/synchronized.dart';

class DiffStore {
  String _ref;
  Map<String, dynamic> data;
  final Lock _lock = Lock();

  Future<dynamic> read(String key) async {
    _lock.synchronized(() async {
      if (data.containsKey(key)) {
        throw Exception('key not found in : $_ref');
      }
      return data[key];
    });
  }

  Future<void> write(String key, dynamic value) async {
    _lock.synchronized(() async {
      data[key] = value;
    });
  }

  DiffStore(this._ref);
}
