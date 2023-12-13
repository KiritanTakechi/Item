import 'package:drift/drift.dart';

class Items extends Table {
  // 唯一标识符
  IntColumn get id => integer().autoIncrement()();

  // 物品名称
  TextColumn get name => text().withLength(min: 1, max: 100)();

  // 开始使用时间
  DateTimeColumn get startDate => dateTime()();

  // 分类标签
  TextColumn get category => text()();

  // 物品描述
  TextColumn get description => text().nullable()();

  // 物品图片存放路径(存储序列化的 JSON)
  TextColumn get imgpath => text().nullable()();

  // 购买理由
  TextColumn get purchaseReason => text().nullable()();

  // 购买地点
  TextColumn get purchaseLocation => text().nullable()();

  // 购买花费
  RealColumn get purchaseCost => real().nullable()();

  // 维护记录列表ID（关联到 MaintenanceRecord 表）
  //IntColumn get maintenanceRecordsId => integer().customConstraint('REFERENCES MaintenanceRecords(id)').nullable()();

  // 使用感想记录列表ID（关联到 UseRecord 表）
  //IntColumn get useRecordsId => integer().customConstraint('REFERENCES UseRecords(id)').nullable()();

  // 终结信息ID（关联到 EndInfo 表）
  // get endInfoId => integer().customConstraint('REFERENCES EndInfos(id)').nullable()();
}

