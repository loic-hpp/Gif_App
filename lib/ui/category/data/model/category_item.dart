import 'package:json_annotation/json_annotation.dart';

part 'category_item.g.dart';

@JsonSerializable()
class CategoryItem {
  final String title;
  final String imageUrl;
  final int theme;

  CategoryItem({required this.title, required this.imageUrl, required this.theme});

  factory CategoryItem.fromJson(Map<String, dynamic> json) =>
      _$CategoryItemFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryItemToJson(this);

  String toJsonString() {
    return '''{
      "title": "$title",
      "imageUrl": "$imageUrl",
      "theme": "$theme"
    }''';
  }
}