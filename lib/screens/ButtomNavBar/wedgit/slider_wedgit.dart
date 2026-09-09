import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderWedgit extends StatefulWidget {
  const SliderWedgit({super.key});

  @override
  State<SliderWedgit> createState() => _SliderWedgitState();
}

class _SliderWedgitState extends State<SliderWedgit> {
 int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  Stack(

            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 119,
                  autoPlay: true,
                  viewportFraction: 1,
                  //autoPlayInterval: Duration(seconds:2 ),
                  onPageChanged: (index, reason) {
                    setState(() {
                       activeIndex=index;
                    });
                  } ,
                ),
                items: images
                    .map(
                      (i) => Container(
                        alignment: Alignment.bottomCenter,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(i).image,
                          ),
                        ),
                        
                      ),
                    )
                    .toList(),
              ),
             Positioned(
              bottom: 10,
              left: 200,
               child: AnimatedSmoothIndicator(
                            activeIndex: activeIndex,
                            count: images.length,
                            effect: ExpandingDotsEffect(
                              activeDotColor: Colors.green,
                              dotHeight: 8,
                              dotWidth: 8,
                              spacing: 4,
                              dotColor: Colors.white,
                
                            ),
                            
                
                          ),
             ),
            ],
          );
  }
}
List<String> images = [
  "assets/images/slider1.png",
  "assets/images/slider2.png",
  "assets/images/slider3.png"
];
