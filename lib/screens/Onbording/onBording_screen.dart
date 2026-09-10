import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/button_model.dart';
import 'package:flutter_application_2/screens/ButtomNavBar/buttom_nav_bar_screen.dart';
import 'package:flutter_application_2/screens/Auth/login_screen.dart';
import 'package:flutter_application_2/screens/Onbording/widget/Button_wedgit.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: 
      Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(

          image:DecorationImage(image:AssetImage( "assets/images/onbording.png"),
          fit: BoxFit.fill
          ),



        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
                
              children: [
                Image.asset("assets/images/Logo Carrot.png",width: 48.47,height: 50.36),
                SizedBox(height:30),
                Text("Welcome ",style: TextStyle(
                  fontSize: 28,
                  fontWeight:FontWeight( 600),
                  
                  color: Colors.white,
            
            
                ),
                ),
                SizedBox(height:10),
                Text(" to our store",style: TextStyle(
                  fontSize: 28,
                  fontWeight:FontWeight( 600),
                  
                  color: Colors.white,
            
            
                ),
                ),
                Text("Get your groceries in as fast as one hour",style: TextStyle(
                  color: Color(0xffFCFCFCB2),
                  fontSize: 16,
                
                ),),
                
                
               ButtonWedgit(
  () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ),
    );
  },
  buttom: ButtonModel("Get started"),
),
            
              ],
            ),
          ),
        ),

      ),
    );   
  }
}