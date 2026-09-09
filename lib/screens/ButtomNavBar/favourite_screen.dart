import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/button_model.dart';
import 'package:flutter_application_2/models/favProduct_Model.dart';
import 'package:flutter_application_2/screens/ButtomNavBar/shopping_cart_screen.dart';
import 'package:flutter_application_2/screens/Onbording/widget/Button_wedgit.dart';
import 'package:flutter_application_2/screens/ButtomNavBar/wedgit/favProducr_wedgit.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            
            Center(
              child: Text("Favourite",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
        
              ),
              ),
              ),
              SizedBox(
                height: 32,

              ),
              Divider(),
              SizedBox(
                height:20,
              ),
              FavproducrWedgit(fav: FavproductModel(image: "assets/images/sprite.png", name: "Sprite Can", discription:"325ml, Price" , price: r"$1.50")),
               FavproducrWedgit(fav: FavproductModel(image: "assets/images/diet cola.png", name: "Diet Coke", discription:"325ml, Price" , price: r"$1.99")),
               FavproducrWedgit(fav: FavproductModel(image: "assets/images/juice.png", name: "Apple & Grape Juice", discription:"2L, Price" , price: r"$15.50")),
               FavproducrWedgit(fav: FavproductModel(image: "assets/images/cola.png", name: "Cocacola Can", discription:"325ml, Price" , price: r"$4.99")),
               FavproducrWedgit(fav: FavproductModel(image: "assets/images/Pepsi.png", name: "Pepsi Can", discription:"330ml, Price" , price: r"$1.99")),
               SizedBox(height: 20),
                ButtonWedgit(
        () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ShoppingCartScreen(),
        ),
      );
        },
        buttom: ButtonModel("Add all to cart"),
      ),
      
      
             
      
            
          ],
        ),
      ),
    ) 
    ;
}
}