import 'package:drift/drift.dart';
import 'item.dart';

class UseRecords extends Table {
  // 唯一标识符
  IntColumn get id => integer().autoIncrement()();

  // 记录日期
  DateTimeColumn get date => dateTime()();

  // 使用感想
  TextColumn get thoughts => text().nullable()();

  // 物品的优缺点
  TextColumn get prosCons => text().nullable()();

  // 记录图片的存放路径 (存储序列化的 JSON)
  TextColumn get imgpath => text().nullable()();

  // 添加外键指向 Item 表
  IntColumn get itemId => integer().customConstraint('REFERENCES items(id) NOT NULL')();
}
