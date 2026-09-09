import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/normalButton_model.dart';
import 'package:flutter_application_2/screens/widgets/normalButton_wedgit.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start ,
          children: [
            
            Icon(Icons.close),
        
        
          Center(
            child: Column(children: [
              Image.asset("assets/images/bag.png"),
              SizedBox(
                height:49,
              ),
              Text("Oops! Order Failed", style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Something went tembly wrong.", style:TextStyle(
                fontSize: 16,
                color:Color(0xff7C7C7C),
              )
              ),
              SizedBox(
                height: 60,
              ),
              
                  SizedBox(
            height: 20,
                  ),
                  Text("Back to home",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),),
            
            NormalButtonWedgit(button: NormalbuttonModel("Please Try Again")),
            
            
            ],
            ),
          ),
          ],
          
        
        ),
      )
    );
  }
}