import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/widgets/groceriesItems.dart';
import 'package:flutter_application_2/screens/widgets/shopText_wedgit.dart';
import 'package:flutter_application_2/screens/widgets/productItem.dart';
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
            

             
                SizedBox(
                  height:280,
                  child: ListView.separated(itemBuilder: (context,index){
                    if(index%2==0){
                    return ProductItem(
                      "assets/images/Bunch-Bananas-1.jpg",
                      "Organic Bananas",
                      r"$4.99",
                      "7pices, priceg",
                    );
                    }else{
                 return ProductItem(
                    "assets/images/apple.webp",
                    "Red Apple",
                    r"$4.99",
                    "1kg, Priceg",
                  );
                    }
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    separatorBuilder: (context, index) => SizedBox(width: 10,),
                    
                              ),

                ),
            SizedBox(height: 30),
            ShoptextWedgit("Best selling"),
            SizedBox(height: 20),
            SizedBox(
                  height:280,
                  child: ListView.separated(itemBuilder: (context,index){
                    if(index%2==0){
                    return ProductItem(
                  "assets/images/Bell_pepper.jpg",
                  "Bell pepper",
                  r"$5.99",
                  "7pices, priceg",
                );
                    }
                return ProductItem(
                  "assets/images/ginger-5108742_640.jpg",
                  "Ginger",
                  r"$4.99",
                  "250gm, Priceg",
                );
                    },
                    
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    separatorBuilder: (context, index) => SizedBox(width: 10,),
                    
                              ),

                ),
            
            SizedBox(height: 30),
            ShoptextWedgit("Groceries"),
            SizedBox(height: 20),
            SizedBox(
             
              height:100,
              child: ListView.separated(itemBuilder: (context, index){
                if(index%2==0){
                return GroceriesItems("assets/images/pluses.png", "Pulses",0xffF8A44C);
              } 
              return GroceriesItems("assets/images/rice.png", "Rice corp",0xff53B175);
                
              } ,
              separatorBuilder: (context, index) => SizedBox(width: 10),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              
              ),
            ),

            
            SizedBox(
              height: 20,
            ),
            SizedBox(
                  height:280,
                  child: ListView.separated(itemBuilder: (context,index){
                    if(index%2==0){
                    return ProductItem("assets/images/meat.png", "beaf Done", r"$4.99", "1kg,priceg");
                    }
                return ProductItem("assets/images/chicken.png", "Broiler Chicken", r"$4.99", "1kg,priceg");
                    },
                    
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    separatorBuilder: (context, index) => SizedBox(width: 10,),
                    
                              ),

                ),
          ],
        ),
      ),
    );
  }
}
