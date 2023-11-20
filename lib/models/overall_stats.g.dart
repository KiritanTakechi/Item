// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overall_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OverallStats _$OverallStatsFromJson(Map<String, dynamic> json) => OverallStats(
      totalItems: json['totalItems'] as int,
      totalCost: (json['totalCost'] as num).toDouble(),
      averageLifespan: (json['averageLifespan'] as num).toDouble(),
      evaluationStats: Map<String, int>.from(json['evaluationStats'] as Map),
    );

Map<String, dynamic> _$OverallStatsToJson(OverallStats instance) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'totalCost': instance.totalCost,
      'averageLifespan': instance.averageLifespan,
      'evaluationStats': instance.evaluationStats,
    };
