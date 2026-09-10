import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/button_model.dart';
import 'package:flutter_application_2/models/normalButton_model.dart';
import 'package:flutter_application_2/models/payment_model.dart';
import 'package:flutter_application_2/screens/Onbording/widget/Button_wedgit.dart';
import 'package:flutter_application_2/screens/orderAccepted_screen.dart';
import 'package:flutter_application_2/screens/widgets/normalButton_wedgit.dart';
import 'package:flutter_application_2/screens/widgets/payment_wedgit.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text("Checkout",style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                
                ),
                ),
              ),
              Icon(Icons.close),
      
            ],
            
          ),
          SizedBox(
            height: 30,
          ),
          Divider(),
          PaymentWedgit(
          PaymentModel(title: "Delivery",method: "Select Method"),
          ),
           PaymentWedgit(
          PaymentModel(title: "pament",method: "Cerdit"),
      
          ),
           PaymentWedgit(
          PaymentModel(title: "Promo code",method: "Pick Discount"),
          
          ),
           PaymentWedgit(
          PaymentModel(title: "Taotal cost",method: r"$13.97"),
          
          ),
          Text("By placing an order you agree to our",style: TextStyle(
            color: Color(0xff7C7C7C),
            fontWeight: FontWeight(600),
          ),),
          Text("Terms And Conditions",style: TextStyle(
            fontWeight: FontWeight(600)
          ),
          ),
          SizedBox(
            height: 30,
          ),
          ButtonWedgit(
            (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderAcceptedScreen()));

            },
            buttom: ButtonModel("Place Order")),
          SizedBox(
            height: 20,
          ),
          
          
      
        ],
      ),
    ),
    );
  }
}