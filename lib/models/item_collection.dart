import 'package:json_annotation/json_annotation.dart';
import 'item.dart'; // 确保 Item 类也使用了 json_serializable

part 'item_collection.g.dart'; // 这是 build_runner 将会生成的文件

@JsonSerializable(explicitToJson: true)
class ItemCollection {
  List<Item> items;

  ItemCollection({required this.items});

  // 从 JSON 反序列化工厂构造函数
  factory ItemCollection.fromJson(Map<String, dynamic> json) => _$ItemCollectionFromJson(json);

  // 序列化为 JSON 方法
  Map<String, dynamic> toJson() => _$ItemCollectionToJson(this);
}
