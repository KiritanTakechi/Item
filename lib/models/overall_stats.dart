import 'package:drift/drift.dart';

class OverallStats extends Table {
  // 唯一标识符
  IntColumn get id => integer().autoIncrement()();

  // 总物品数
  IntColumn get totalItems => integer()();

  // 总花费
  RealColumn get totalCost => real()();

  // 所有物品的平均寿命
  RealColumn get averageLifespan => real().nullable()();

  // 最终评价统计（存储序列化的 JSON，包含各评价标签的数量）
  TextColumn get evaluationStats => text().nullable()();
}
