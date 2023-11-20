import 'package:json_annotation/json_annotation.dart';

part 'maintenance_record.g.dart'; // 这是 build_runner 将会生成的文件

@JsonSerializable()
class MaintenanceRecord {
  DateTime date;
  String location;
  double cost;
  String result;

  MaintenanceRecord({
    required this.date,
    required this.location,
    required this.cost,
    required this.result,
  });

  // 从 JSON 反序列化工厂构造函数
  factory MaintenanceRecord.fromJson(Map<String, dynamic> json) => _$MaintenanceRecordFromJson(json);

  // 序列化为 JSON 方法
  Map<String, dynamic> toJson() => _$MaintenanceRecordToJson(this);
}
