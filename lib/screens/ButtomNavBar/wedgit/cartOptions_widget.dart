import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/favProduct_Model.dart';

class CartoptionsWidget extends StatelessWidget {
  final FavproductModel product;
  const CartoptionsWidget({required this.product,super.key});

  @override
  Widget build(BuildContext context) {
  
return Column(
  children: [
    Row(
      children: [
        Image.asset(
          product.image,
          width: 70,
          height: 64,
        ),
    
        SizedBox(width: 10),
    
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    product.name,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
    
                  Spacer(),
    
                  Icon(
                    Icons.close,
                    color: Color(0xffB3B3B3),
                  ),
                ],
              ),
    
              Text(
                product.discription,
                style: TextStyle(
                  color: Color(0xff7C7C7C),
                ),
              ),
      SizedBox(
        height: 10,
      ),
              Row(
                children: [
                  Container(
                    height: 44.67,
                    width: 44.67,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Icon(Icons.remove),
                    ),
                  ),
    
                  SizedBox(width: 10),
    
                  Text("1"),
    
                  SizedBox(width: 10),
    
                  Container(
                    height: 44.67,
                    width: 44.67,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.green,
                      ),
                    ),
                  ),
    
                  Spacer(),
    
                  Text(
                    product.price,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
    SizedBox(
      height: 30,
    ),
    Divider()
  ],
);

  }
}