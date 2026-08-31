import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/product_model.dart';

class ProductItem extends StatelessWidget {
 final ProductItemModel product;
  const ProductItem({required this.product,super.key});
 

  @override
  Widget build(BuildContext context) {
    return
                Container(
                  padding: EdgeInsets.only(top:25,right: 15, left: 15,bottom: 15),
                  //height: 119,
                width: 173.32,
                
                decoration:BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                 
                ),
                 child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Center(child: Expanded(child:  Image.asset(product.image,height: 62,))),
                      SizedBox(height: 32),
                      Text(product.name,style: 
                      TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight(400),
                      ),
                      ),
                      
                      Text(product.weight,style: 
                      TextStyle(
                        fontWeight:FontWeight(400),
                        color: Color(0xff7C7C7C),

                      )
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(product.price,style:
                          TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight(600),
                          ),
                          ),
                          
                          Container(
                           height: 45,
                           width: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.green,
                              
                            ),
                            child:Icon(Icons.add,size:14,color: Colors.white,)

                          )

                        ],
                      ),
                      
                    ],
                  )
                
                );
              
            
  }
}