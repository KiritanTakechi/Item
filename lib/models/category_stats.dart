import 'package:json_annotation/json_annotation.dart';

part 'category_stats.g.dart'; // 这是 build_runner 将会生成的文件

@JsonSerializable()
class CategoryStats {
  String category;
  int itemCount;
  double totalCost;
  double averageLifespan;

  CategoryStats({
    required this.category,
    required this.itemCount,
    required this.totalCost,
    required this.averageLifespan,
  });

  // 从 JSON 反序列化工厂构造函数
  factory CategoryStats.fromJson(Map<String, dynamic> json) => _$CategoryStatsFromJson(json);

  // 序列化为 JSON 方法
  Map<String, dynamic> toJson() => _$CategoryStatsToJson(this);
}
