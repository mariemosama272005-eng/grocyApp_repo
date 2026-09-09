import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/payment_model.dart';

class PaymentWedgit extends StatelessWidget {
  final PaymentModel pay;
  const PaymentWedgit(this.pay,{super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [ Row(
       children: [
         Expanded(
           child: Text(pay.title,style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
           ),
           ),
         ),
       
     
     Text(pay.method,style:TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
     ) ,
     ),
     Icon(Icons.arrow_forward_ios),
       ],
     ),
     SizedBox(
      height: 24,
     ),
     Divider()
     

     ]
    );
  }
}