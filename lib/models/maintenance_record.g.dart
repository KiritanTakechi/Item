// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maintenance_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MaintenanceRecord _$MaintenanceRecordFromJson(Map<String, dynamic> json) =>
    MaintenanceRecord(
      date: DateTime.parse(json['date'] as String),
      location: json['location'] as String,
      cost: (json['cost'] as num).toDouble(),
      result: json['result'] as String,
    );

Map<String, dynamic> _$MaintenanceRecordToJson(MaintenanceRecord instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'location': instance.location,
      'cost': instance.cost,
      'result': instance.result,
    };
