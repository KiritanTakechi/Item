import 'package:drift/drift.dart';

class ItemCollections extends Table {
  // 唯一标识符
  IntColumn get id => integer().autoIncrement()();

  // 收藏的物品列表ID（关联到Item模型，存储序列化的 JSON）
  TextColumn get items => text().nullable()();
}
