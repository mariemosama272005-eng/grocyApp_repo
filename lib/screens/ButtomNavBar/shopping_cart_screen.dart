import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/button_model.dart';
import 'package:flutter_application_2/models/favProduct_Model.dart';
import 'package:flutter_application_2/screens/checkout_screen.dart';
import 'package:flutter_application_2/screens/Onbording/widget/Button_wedgit.dart';
import 'package:flutter_application_2/screens/ButtomNavBar/wedgit/cartOptions_widget.dart';

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Center(child:Text("My Cart",style: TextStyle(
                  fontSize: 20,
          
                ),
                ),
                ),
                SizedBox(
                  height: 31,
                ),
                Divider(),
                CartoptionsWidget(product: FavproductModel(image: "assets/images/Bell_pepper.jpg", name:"Bell Pepper Red", discription: "1kg, Price", price:r"$4.99")),
                CartoptionsWidget(product: FavproductModel(image: "assets/images/egg.png", name:"Egg Chicken Red", discription: "4pcs, Price", price:r"$1.99")),
                CartoptionsWidget(product: FavproductModel(image: "assets/images/Bunch-Bananas-1.jpg", name:"Organic Bananas", discription: "12kg, Price", price:r"$3.00")),
                CartoptionsWidget(product: FavproductModel(image: "assets/images/ginger-5108742_640.jpg", name:"Ginger", discription: "250gm, Price", price:r"$2.99")),
                ButtonWedgit((){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckoutScreen()));
                }, buttom: ButtonModel("CheckOut")),
                
            ],
          
          ),
        ),
      ),
    );
  }
}