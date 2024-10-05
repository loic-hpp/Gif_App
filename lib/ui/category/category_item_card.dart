import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryItemCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int themeColor;

  const CategoryItemCard({required Key key, required this.title, required this.imageUrl, required this.themeColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 80,
      padding: const EdgeInsets.all(6),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(themeColor)),
      child: Column(
        children: [
          Expanded(child: Image.network(imageUrl)),
          const SizedBox(
            height: 6,
          ),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 12, ),
          ),
        ],
      ),
    );
  }
}