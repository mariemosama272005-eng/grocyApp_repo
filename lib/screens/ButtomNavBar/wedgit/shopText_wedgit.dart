import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/shopText_model.dart';

class ShoptextWedgit extends StatelessWidget {
  final ShoptextModel shopTitle;
   const ShoptextWedgit({required this.shopTitle,super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
          children: [
            Expanded(
              child: Text(shopTitle.title,style: 
              TextStyle(
              fontSize: 24,
              fontWeight: FontWeight(600)
              )
              ),
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