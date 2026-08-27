import 'package:flutter/material.dart';

class GroceriesItems extends StatelessWidget {
  var image;
  String name;
 var color;
 GroceriesItems(this.image,this.name,this.color,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
              decoration: BoxDecoration(
                color: Color(color),
                
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  
                  Image.asset(image,width: 100,),
                  Text(name,style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight(600),

                  ),
                  )
                ],
              ),
              );
  }
  
}