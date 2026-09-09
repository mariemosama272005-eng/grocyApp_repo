import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_2/screens/ButtomNavBar/wedgit/productSlider_widget.dart';

class ProductDitailScreen extends StatelessWidget {
  const ProductDitailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

     body:SafeArea(
       child: Column(
         children: [
           const ProductsliderWidget(),
         ],
       ),
     ),
    );
  }
}