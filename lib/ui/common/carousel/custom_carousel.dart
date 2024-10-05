import 'package:carousel_slider/carousel_slider.dart' as cs;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping_gift_app/util/mock_util.dart';

class CustomCarousel extends StatelessWidget {
  final List<String> _banners = MockUtil.getOfferBanners();

  @override
  Widget build(BuildContext context) {
    return cs.CarouselSlider.builder(
      itemCount: _banners.length,
      options: cs.CarouselOptions(
        enlargeStrategy: cs.CenterPageEnlargeStrategy.scale,
        aspectRatio: 3,
        viewportFraction: 1,
      ),
      itemBuilder: (BuildContext context, int itemIndex, int realIndex) =>
          ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          _banners[itemIndex],
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      ),
    );
  }
}
