// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'end_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EndInfo _$EndInfoFromJson(Map<String, dynamic> json) => EndInfo(
      reason: json['reason'] as String,
      summary: json['summary'] as String,
      finalTags:
          (json['finalTags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$EndInfoToJson(EndInfo instance) => <String, dynamic>{
      'reason': instance.reason,
      'summary': instance.summary,
      'finalTags': instance.finalTags,
    };
