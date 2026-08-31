import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/groceries_model.dart';
import 'package:flutter_application_2/models/product_model.dart';
import 'package:flutter_application_2/models/shopText_model.dart';
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
            const SearchWidget(),
            const SliderWedgit(),
            SizedBox(height: 30),
             ShoptextWedgit(shopTitle:ShoptextModel(title: "Exclusive Offer")
             
             ),
            SizedBox(height: 20),
            

             
                SizedBox(
                  height:280,
                  child: ListView.separated(itemBuilder: (context,index){
                    
                 return ProductItem(
                    product: exclusiveOffer[index % exclusiveOffer.length],
                  );
                    
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    separatorBuilder: (context, index) => SizedBox(width: 10,),
                    
                              ),

                ),
            SizedBox(height: 30),
            ShoptextWedgit(shopTitle:ShoptextModel(title: "Best salling")
             
             ),
            SizedBox(height: 20),
            SizedBox(
                  height:280,
                  child: ListView.separated(itemBuilder: (context,index){
                  
                return ProductItem(
                    product: bestSailing[index %bestSailing.length],
                );
                    },
                    
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    separatorBuilder: (context, index) => SizedBox(width: 10,),
                    
                              ),

                ),
            
            SizedBox(height: 30),
             ShoptextWedgit(shopTitle:ShoptextModel(title: "Grocieries")
             
             ),
            SizedBox(height: 20),
            SizedBox(
             
              height:100,
              child: ListView.separated(itemBuilder: (context, index){
                
              return GroceriesItems(groceries: groceriesitems[index%groceriesitems.length]);
                
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
                   
                    return ProductItem( product: other[index % other.length],);
                  
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

List<ProductItemModel>products=[
  ProductItemModel(image:"assets/images/Bunch-Bananas-1.jpg",name: "Organic Bananas",weight:"7pices, priceg", price: r"$4.99"),
  ProductItemModel(image:"assets/images/apple.webp",name: "Red Apple",weight:"1kg, Priceg", price:r"$4.99"),
  ProductItemModel(image:"assets/images/Bell_pepper.jpg",name: "Bell pepper",weight:"7pices, priceg", price: r"$5.99"),
  ProductItemModel(image: "assets/images/ginger-5108742_640.jpg",name:"Ginger",weight: "250gm, Priceg", price: r"$4.99"),
  ProductItemModel(image: "assets/images/meat.png",name:"beaf Done",weight: "1kg,priceg", price: r"$4.99"),
  ProductItemModel(image: "assets/images/chicken.png",name:"Broiler Chicken",weight: "1kg,priceg", price: r"$4.99"),
];
List<ProductItemModel> exclusiveOffer = [
  products[0],
  products[1],
];
List<ProductItemModel> bestSailing = [
  products[2],
  products[3],
];
List<ProductItemModel> other= [
  products[4],
  products[5],
];
List<GroceriesModel> groceriesitems = [
  GroceriesModel(
    image: "assets/images/pluses.png",
    name: "Pulses",
    color: 0xffF8A44C,
  ),
  GroceriesModel(
    image: "assets/images/rice.png",
    name: "Rice corp",
    color: 0xff53B175,
  ),
];