import 'package:json_annotation/json_annotation.dart';

part 'product_item.g.dart';

@JsonSerializable()
class ProductItem {
  final String name;
  final String imageUrl;
  final double currency;
  final double discount;

  final String currencyType;
  final String sellingUnit;

  String get price => "$currencyType$currency";

  ProductItem(
      {required this.name,
      required this.imageUrl,
      required this.currency,
      this.currencyType = "\$",
      required this.discount,
      required this.sellingUnit});

  factory ProductItem.fromJson(Map<String, dynamic> json) =>
      _$ProductItemFromJson(json);

  Map<String, dynamic> toJson() => _$ProductItemToJson(this);

  @override
  String toString() {
    return '''{
      "name": "$name",
      "imageUrl": "$imageUrl"
    }''';
  }
}
