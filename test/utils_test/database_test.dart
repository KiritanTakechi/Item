import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:item/models/item.dart';
import 'package:item/utils/database.dart';

void main() {
  test('database open and run',() async {
    WidgetsFlutterBinding.ensureInitialized();

    final database = MyDatabase();

    await database.into(database.items).insert(ItemsCompanion.insert(name: 'test', startDate: DateTime.now(), category:'test'));

    List<Item> allItems = await database.select(database.items).get();

    print('items in database: $allItems');
  });
}