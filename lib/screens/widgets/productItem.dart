import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  var image;
  String name;
  String weight;
  String price;
 ProductItem(this.image,this.name,this.price,this.weight,{super.key});
 

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
                      Center(child: Image.asset(image,height: 62,)),
                      SizedBox(height: 32),
                      Text(name,style: 
                      TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight(400),
                      ),
                      ),
                      
                      Text(weight,style: 
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
                          Text(price,style:
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