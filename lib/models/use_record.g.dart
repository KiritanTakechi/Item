// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'use_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UseRecord _$UseRecordFromJson(Map<String, dynamic> json) => UseRecord(
      date: DateTime.parse(json['date'] as String),
      thoughts: json['thoughts'] as String,
      prosCons: json['prosCons'] as String,
    );

Map<String, dynamic> _$UseRecordToJson(UseRecord instance) => <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'thoughts': instance.thoughts,
      'prosCons': instance.prosCons,
    };
