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
    return Container(
    
      decoration: const BoxDecoration(
        color: Color(0xFFF2F2F2),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 380,
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 1.0, 
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
            ),
            items: apples.map(
              (i) => Container(
                padding: const EdgeInsets.only(top: 50, bottom: 30, left: 20, right: 20),
                width: double.infinity,
                child: Image.asset(
                  i,
                  fit: BoxFit.contain,
                ),
              ),
            ).toList(),
          ),

        
          Positioned(
            top: 40,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffEBEBEB),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new, size: 18),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF2F2F2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.upload, size: 18),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),

         
          Positioned(
            bottom: 15,
            left: 0,
            right: 0,
            child: Center(
              child: AnimatedSmoothIndicator(
                activeIndex: activeIndex,
                count: apples.length,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.green,
                  dotHeight: 6,
                  dotWidth: 6,
                  expansionFactor: 3,
                  spacing: 6,
                  dotColor: Colors.grey.shade400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<String> apples = [
  "assets/images/apple.webp",
  "assets/images/apple2.png",
  "assets/images/apple3.png",
];