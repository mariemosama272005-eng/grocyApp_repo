import 'package:flutter/material.dart';

class ShoptextWedgit extends StatelessWidget {
  String title;
   ShoptextWedgit(this.title,{super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
          children: [
            Text(title,style: 
            TextStyle(
            fontSize: 24,
            fontWeight: FontWeight(600)
            )
            ),
            SizedBox(
              width: 153,
            ),
            Text("See all ",style: 
            TextStyle(
              color: Colors.green,
              fontSize: 16,
              fontWeight: FontWeight(600),
            )
            ),
            SizedBox(height:20) ,
            
            
          ],

         );
  }
}