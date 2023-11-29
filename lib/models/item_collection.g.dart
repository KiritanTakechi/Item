// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemCollection _$ItemCollectionFromJson(Map<String, dynamic> json) =>
    ItemCollection(
      items: (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ItemCollectionToJson(ItemCollection instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
    };
