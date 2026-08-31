import 'package:flutter/material.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: 100,
                height: 100,
               decoration: BoxDecoration(
               
                image: DecorationImage
                (fit:BoxFit.fill,
                image: Image.asset("assets/images/profile.png").image),
               ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Afsar Hossen",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    
                    ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                   Icon(Icons.edit,color: Colors.green),
                  ],
                  
                ),
              
            Text("Imshuvo97@gmail.com",style: TextStyle(
              fontSize: 18,
              color: Color(0xff7C7C7C)
            ),
            ),
              ],
            )
            
          ],
        ),
        
      ],
    );
  }
}