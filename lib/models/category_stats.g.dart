// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryStats _$CategoryStatsFromJson(Map<String, dynamic> json) =>
    CategoryStats(
      category: json['category'] as String,
      itemCount: json['itemCount'] as int,
      totalCost: (json['totalCost'] as num).toDouble(),
      averageLifespan: (json['averageLifespan'] as num).toDouble(),
    );

Map<String, dynamic> _$CategoryStatsToJson(CategoryStats instance) =>
    <String, dynamic>{
      'category': instance.category,
      'itemCount': instance.itemCount,
      'totalCost': instance.totalCost,
      'averageLifespan': instance.averageLifespan,
    };
