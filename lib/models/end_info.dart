import 'package:drift/drift.dart';
import 'item.dart';

class EndInfos extends Table {
  // 唯一标识符
  IntColumn get id => integer().autoIncrement()();

  // 弃用理由（坏了、升级、不喜欢等）
  TextColumn get reason => text().nullable()();

  // 使用总结
  TextColumn get summary => text().nullable()();

  // 最终标签（值、不值等）
  TextColumn get finalTags => text().nullable()();

  // 最终物品图片存放路径 (存储序列化的 JSON)
  TextColumn get imgpath => text().nullable()();

  // 添加外键指向 Item 表
  IntColumn get itemId => integer().customConstraint('REFERENCES items(id) NOT NULL')();
}
