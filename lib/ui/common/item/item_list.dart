import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping_gift_app/ui/common/item/data/model/product_item.dart';
import 'package:flutter_shopping_gift_app/ui/common/item/item_card.dart';

class ItemList extends StatelessWidget {
  final List<ProductItem> items;

  const ItemList(this.items, {required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 156,
      child: ListView.builder(
        itemBuilder: (context, index) => ItemCard(
          item: items[index], key: UniqueKey(),
        ),
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}