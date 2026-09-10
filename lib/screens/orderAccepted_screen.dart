import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/button_model.dart';
import 'package:flutter_application_2/models/normalButton_model.dart';
import 'package:flutter_application_2/screens/ButtomNavBar/buttom_nav_bar_screen.dart';
import 'package:flutter_application_2/screens/ButtomNavBar/shop_screen.dart';

import 'package:flutter_application_2/screens/Onbording/widget/Button_wedgit.dart';
import 'package:flutter_application_2/screens/widgets/normalButton_wedgit.dart';

class OrderAcceptedScreen extends StatelessWidget {
  const OrderAcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
    Padding(
      padding: const EdgeInsets.only(top:150),
      child: Center(
        child: Column(
          children: [
            Image.asset("assets/images/accept.png"),
            Text("Your Order has been ",style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold
            ),
            ),
            Text("accepted ",style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold
            ),
            ),
            Text("Your items has been placcd and is on ",style: TextStyle(
              fontSize: 16,
              color: Color(0xff7C7C7C)
            ),
            ),
             Text(" it’s way to being processed",style: TextStyle(
              fontSize: 16,
              color: Color(0xff7C7C7C)
            ),
            ),
            SizedBox(
              height: 40,
            ),
            NormalButtonWedgit(button: NormalbuttonModel("Track Order")),
              SizedBox(
                height:20,
              ),

             
            
            GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ButtomNavBarScreen()),
                      );
                    },
                  

                    child: Text(
                      "Back to Home",
                      style: TextStyle(
                        fontWeight: FontWeight(600),
                       
                        color: Colors.black,
                      ),
                    ),
                  ),
              SizedBox(
                height:20,
              )

      

            
          ],
       
        
        ),
      ),
    ), 
    );
  }
}