import 'package:json_annotation/json_annotation.dart';

part 'end_info.g.dart'; // 这是 build_runner 将会生成的文件

@JsonSerializable()
class EndInfo {
  String reason;
  String summary;
  List<String> finalTags;

  EndInfo({
    required this.reason,
    required this.summary,
    required this.finalTags,
  });

  // 从 JSON 反序列化工厂构造函数
  factory EndInfo.fromJson(Map<String, dynamic> json) => _$EndInfoFromJson(json);

  // 序列化为 JSON 方法
  Map<String, dynamic> toJson() => _$EndInfoToJson(this);
}
