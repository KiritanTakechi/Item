import 'package:drift/drift.dart';
import 'item.dart';

class MaintenanceRecords extends Table {
  // 唯一标识符
  IntColumn get id => integer().autoIncrement()();

  // 维护日期
  DateTimeColumn get date => dateTime()();

  // 维护地点
  TextColumn get location => text().nullable()();

  // 维护花费
  RealColumn get cost => real().nullable()();

  // 维护结果
  TextColumn get result => text().nullable()();

  // 维护情况图片的存放路径 (存储序列化的 JSON)
  TextColumn get imgpath => text().nullable()();

  // 添加外键指向 Item 表
  IntColumn get itemId => integer().customConstraint('REFERENCES items(id) NOT NULL')();
}
