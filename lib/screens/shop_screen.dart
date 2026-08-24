import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/shopText_wedgit.dart';
import 'package:flutter_application_2/screens/widgets/componatBox_wedgit.dart';
import 'package:flutter_application_2/screens/widgets/searchBar_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_2/screens/widgets/slider_wedgit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.71),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "images/carrot.png",
                width: 26.49,
                height: 30.8,
              ),
            ),
            SizedBox(height: 21.13),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on),
                Text(
                  "Dhaka, Banassre",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight(600),
                    color: Color(0xff4C4F4D),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            SearchWidget(),
            SliderWedgit(),
            SizedBox(height: 30),
            ShoptextWedgit("Exclusive Offer"),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                ComponatboxWedgit(
                  "assets/images/Bunch-Bananas-1.jpg",
                  "Organic Bananas",
                  r"$4.99",
                  "7pices, priceg",
                ),
                ComponatboxWedgit(
                  "assets/images/apple.webp",
                  "Red Apple",
                  r"$4.99",
                  "1kg, Priceg",
                ),
              ],
            ),
            SizedBox(height: 30),
            ShoptextWedgit("Best selling"),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ComponatboxWedgit(
                  "assets/images/Bell_pepper.jpg",
                  "Bell pepper",
                  r"$5.99",
                  "7pices, priceg",
                ),
                ComponatboxWedgit(
                  "assets/images/ginger-5108742_640.jpg",
                  "Ginger",
                  r"$4.99",
                  "250gm, Priceg",
                ),
              ],
            ),
            SizedBox(height: 30),
            ShoptextWedgit("Groceries"),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffF8A44C),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Image.asset("assets/images/pluses.png"),
                  Text("Pulses",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight(600),

                  ),
                  )
                ],
              ),

            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ComponatboxWedgit("assets/images/meat.png", "beaf Done", r"$4.99", "1kg,priceg"),
                ComponatboxWedgit("assets/images/chicken.png", "Broiler Chicken", r"$4.99", "1kg,priceg"),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
