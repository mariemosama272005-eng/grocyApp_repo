import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_2/models/button_model.dart';
import 'package:flutter_application_2/screens/ButtomNavBar/shopping_cart_screen.dart';
import 'package:flutter_application_2/screens/Onbording/widget/Button_wedgit.dart';
import 'package:flutter_application_2/screens/productditails/widget/productSlider_widget.dart';

class ProductDitailScreen extends StatelessWidget {
  const ProductDitailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     

     body:
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              
               const ProductsliderWidget(),
               SizedBox(
                height: 10,
               ),
               Row(
                children: [
                  Expanded(child: Text("Naturel Red Apple",style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  ),
                  Icon(Icons.favorite_border)
                ],
            
               ),
               Text("1kg, Price", style: TextStyle(
                color: Color(0xff7C7C7C),
                fontSize: 16,
                fontWeight: FontWeight(600),
               )
               ,),
               SizedBox(height: 20,),
               Row(
                 children: [
                   Expanded(
                     child: Row(
                      children: [
                        Icon(Icons.remove),
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
                              child: Text("1"),
                            ),
                          ),
                         
                          SizedBox(width: 10),
                          Icon(Icons.add, color: Colors.green,)
                      ],
                     ),
                   ),
                   Text(r"$4.99",style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                   ),
                   ),
                   
                 ],
               ),
               SizedBox(
                height:30,
          
               ),
               Divider(),
               Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text("Product Detail",style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight(600),
                        ),
                        ),
                      ),
                      Icon(Icons.arrow_drop_down)
                    ],
                    
          
                  ),
                  Text("Apples are nutritious. Apples may be good for weight loss.\napples may be good for your heart. As part of a healtful\nand varied diet.")
                ],
               ),
               SizedBox(
                height: 10,
               ),
               Divider(),
                SizedBox(
                height: 10,
               ),
               Row(
                    children: [
                      Expanded(
                        child: Text("Nutritions",style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight(600),
                        ),
                        ),
                      ),
                      Container(
                       
                        
                        decoration: BoxDecoration(
                          color: Color(0xffEBEBEB),
                          borderRadius: BorderRadius.circular(10)
          
                        ),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("100 gr",style: TextStyle(
                            color: Color(0xff7C7C7C),
                          ),
                          ),
                        ),
                        ),
                        
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                    
          
                  ),
                  SizedBox(height: 10,),
                  Divider(),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                        child: Text("Review",style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight(600),
                        ),
                        ),
                      ),
                      Icon(Icons.star,color: Color(0xffF3603F),),
                      Icon(Icons.star,color: Color(0xffF3603F),),
                      Icon(Icons.star,color: Color(0xffF3603F),),
                      Icon(Icons.star,color: Color(0xffF3603F),),
                      Icon(Icons.star,color: Color(0xffF3603F),),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.arrow_forward_ios),


                  
                  


               
             ],
             
                
          
                   ),
                   ButtonWedgit((){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ShoppingCartScreen()));
                }, buttom: ButtonModel("Add To Bascket")),
                
             ],
            ),
            
            
          ),
        ),
     
    );
  }
}