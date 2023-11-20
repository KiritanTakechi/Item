// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      id: json['id'] as String,
      name: json['name'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      category: json['category'] as String,
      description: json['description'] as String,
      purchaseReason: json['purchaseReason'] as String,
      purchaseLocation: json['purchaseLocation'] as String,
      purchaseCost: (json['purchaseCost'] as num).toDouble(),
      maintenanceRecords: (json['maintenanceRecords'] as List<dynamic>)
          .map((e) => MaintenanceRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
      useRecords: (json['useRecords'] as List<dynamic>)
          .map((e) => UseRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
      endInfo: EndInfo.fromJson(json['endInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'startDate': instance.startDate.toIso8601String(),
      'category': instance.category,
      'description': instance.description,
      'purchaseReason': instance.purchaseReason,
      'purchaseLocation': instance.purchaseLocation,
      'purchaseCost': instance.purchaseCost,
      'maintenanceRecords':
          instance.maintenanceRecords.map((e) => e.toJson()).toList(),
      'useRecords': instance.useRecords.map((e) => e.toJson()).toList(),
      'endInfo': instance.endInfo.toJson(),
    };
