import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/groceries_model.dart';

class GroceriesItems extends StatelessWidget {
final GroceriesModel groceries;
 const GroceriesItems({required this.groceries,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
              decoration: BoxDecoration(
                color: Color(groceries.color),
                
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  
                   Image.asset(groceries.image,width: 100,),
                  Text(groceries.name,style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight(600),

                  ),
                  )
                ],
              ),
              );
  }
  
}