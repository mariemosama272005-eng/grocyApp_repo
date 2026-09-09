import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductsliderWidget extends StatefulWidget {
  const ProductsliderWidget({super.key});

  @override
  State<ProductsliderWidget> createState() => _ProductsliderWidgetState();
}

class _ProductsliderWidgetState extends State<ProductsliderWidget> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 371,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
          ),
          items: apples.map(
            (i) => Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  image: Image.asset(i).image,
                ),
              ),
            ),
          ).toList(),
        ),

        // Buttons
        Positioned(
          top: 15,
          left: 20,
          right: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_ios),
              Icon(Icons.share),
            ],
          ),
        ),

        // Indicator
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Center(
            child: AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: apples.length,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.green,
                dotHeight: 8,
                dotWidth: 8,
                spacing: 4,
                dotColor: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

List<String> apples = [
  "assets/images/apple.webp",
  "assets/images/apple2.png",
  "assets/images/apple3.png",
];