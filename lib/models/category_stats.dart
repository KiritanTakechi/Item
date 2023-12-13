import 'package:drift/drift.dart';

class CategoryStats extends Table {
  // 分类名称
  TextColumn get category => text().withLength(min: 1, max: 100)();

  // 该分类的物品总数
  IntColumn get itemCount => integer()();

  // 该分类的物品总花费
  RealColumn get totalCost => real()();

  // 该分类物品的平均寿命
  RealColumn get averageLifespan => real().nullable()();
}
