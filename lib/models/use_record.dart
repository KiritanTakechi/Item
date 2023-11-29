import 'package:json_annotation/json_annotation.dart';

part 'use_record.g.dart'; // 这是 build_runner 将会生成的文件

@JsonSerializable()
class UseRecord {
  DateTime date;
  String thoughts;
  String prosCons;

  UseRecord({
    required this.date,
    required this.thoughts,
    required this.prosCons,
  });

  // 从 JSON 反序列化工厂构造函数
  factory UseRecord.fromJson(Map<String, dynamic> json) => _$UseRecordFromJson(json);

  // 序列化为 JSON 方法
  Map<String, dynamic> toJson() => _$UseRecordToJson(this);
}
