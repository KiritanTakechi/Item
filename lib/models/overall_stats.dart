import 'package:json_annotation/json_annotation.dart';

part 'overall_stats.g.dart'; // 这是 build_runner 将会生成的文件

@JsonSerializable()
class OverallStats {
  int totalItems;
  double totalCost;
  double averageLifespan;
  Map<String, int> evaluationStats;

  OverallStats({
    required this.totalItems,
    required this.totalCost,
    required this.averageLifespan,
    required this.evaluationStats,
  });

  // 从 JSON 反序列化工厂构造函数
  factory OverallStats.fromJson(Map<String, dynamic> json) => _$OverallStatsFromJson(json);

  // 序列化为 JSON 方法
  Map<String, dynamic> toJson() => _$OverallStatsToJson(this);
}
