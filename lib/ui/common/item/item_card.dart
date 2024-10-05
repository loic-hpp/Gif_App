import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping_gift_app/constant/color.dart';
import 'package:flutter_shopping_gift_app/ui/common/item/data/model/product_item.dart';

class ItemCard extends StatelessWidget {
  final ProductItem item;

  const ItemCard({required Key key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 1,
          offset: Offset(0, 1), // changes position of shadow
        ),
      ], borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        children: [
          Image.network(
            item.imageUrl,
            height: 100,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              item.name,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Text(item.price,
                  style: const TextStyle(fontSize: 12, color: ThemeTextColor)),
              const SizedBox(
                width: 4,
              ),
              Expanded(
                child: Text(
                  item.sellingUnit,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 10, color: ThemeTextColorLight),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
