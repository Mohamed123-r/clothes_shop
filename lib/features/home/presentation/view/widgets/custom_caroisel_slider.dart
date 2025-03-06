import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({
    super.key,
    required this.height,
    required this.imageSliders,
    required this.autoPlay,
  });

  final List<Widget> imageSliders;
  final double height;
  final bool autoPlay;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: imageSliders,
      options: CarouselOptions(
        height: height,
        autoPlay: autoPlay,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
