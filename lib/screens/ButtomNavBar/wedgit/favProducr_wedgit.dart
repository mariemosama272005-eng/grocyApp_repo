import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/favProduct_Model.dart';
import 'package:flutter_application_2/screens/ButtomNavBar/favourite_screen.dart';

class FavproducrWedgit extends StatelessWidget {
  FavproductModel fav;
  FavproducrWedgit({required this.fav,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
          children: [Image.asset(fav.image,height: 54,width: 30,),
          Expanded(
            child: Column(
              children: [
                Text(fav.name,style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                
                ),
                ),
                Text(fav.discription,style: TextStyle(
                  color: Color(0xff7C7C7C),
                ),
                ),
              ],
            ),
          ),
          Text(fav.price),
          Icon(Icons.arrow_forward_ios),
          
          
          
          
          ]
          
          ),
          SizedBox(
        height: 15,
      ),
      Divider(),
        ],
      ),
      
    );
    
  }
}