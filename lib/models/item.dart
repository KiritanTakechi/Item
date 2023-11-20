import 'package:json_annotation/json_annotation.dart';
import 'maintenance_record.dart'; // 确保这个文件也使用了 json_serializable
import 'use_record.dart'; // 确保这个文件也使用了 json_serializable
import 'end_info.dart'; // 确保这个文件也使用了 json_serializable

part 'item.g.dart'; // 这是 build_runner 将会生成的文件

@JsonSerializable(explicitToJson: true) // 明确指定对嵌套对象调用 toJson
class Item {
  String id;
  String name;
  DateTime startDate;
  String category;
  String description;
  String purchaseReason;
  String purchaseLocation;
  double purchaseCost;
  List<MaintenanceRecord> maintenanceRecords;
  List<UseRecord> useRecords;
  EndInfo endInfo;

  Item({
    required this.id,
    required this.name,
    required this.startDate,
    required this.category,
    required this.description,
    required this.purchaseReason,
    required this.purchaseLocation,
    required this.purchaseCost,
    required this.maintenanceRecords,
    required this.useRecords,
    required this.endInfo,
  });

  // 从 JSON 反序列化工厂构造函数
  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  // 序列化为 JSON 方法
  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
