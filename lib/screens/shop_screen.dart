import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.71),
      child: Column(children: [
        Center(child:Image.asset("images/carrot.png",
        width:26.49 ,
        height: 30.8,
        )
        ),
        SizedBox(
          height: 21.13,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(Icons.location_on),
          Text("Dhaka, Banassre",style:
          TextStyle(
            fontSize: 18,
            fontWeight: FontWeight(600),
            color: Color(0xff4C4F4D),
          )
          ,)
          ],
        ),
        SizedBox(
          height: 20,
      
        ),
        TextFormField(
          onTapOutside: (event) {
            FocusScope.of(context).unfocus();
          },
          cursorColor: Colors.green,
          
          decoration: InputDecoration(
            fillColor: Color(0xffF2F3F2),
            filled: true,
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left:15),
              child: Icon(Icons.search),
            ),
            label:Text("Search Store",style: TextStyle(
              fontWeight:FontWeight(600),
              color: Color(0xff7C7C7C),

            ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15)

            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15)

            ),
          ),
        )
      ],
      ),
    ) 
    ;
  }
}