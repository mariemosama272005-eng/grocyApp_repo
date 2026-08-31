import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/accountOption_model.dart';

class AccountOption extends StatelessWidget {
  final AccountoptionModel options;
  const AccountOption({required this.options,super.key});

  @override
  Widget build(BuildContext context) {
    return
     
       Column(
        children:[ Row(
          children: [
         Icon(options.icon),
         SizedBox(width:10),
         Expanded(child: Text(options.title)),
         Icon(Icons.arrow_forward_ios),
         ],
         ),
        SizedBox(
          height: 20,
        ),
            Divider(),
          ],
        
        
      
    );
  }
}