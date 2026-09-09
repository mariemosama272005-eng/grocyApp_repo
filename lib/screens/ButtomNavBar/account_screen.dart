import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/accountOption_model.dart';
import 'package:flutter_application_2/screens/ButtomNavBar/wedgit/accountInfo_wedgit.dart';
import 'package:flutter_application_2/screens/ButtomNavBar/wedgit/accountOption_wedgit.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Column(
  children: [
    const AccountInfo(),

    const SizedBox(height: 15),

    const Divider(),

    ...accountOptions.map(
      (option) => AccountOption(
        options: option,
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 80,

       width: double.infinity,
        decoration: BoxDecoration(
      color: const Color(0xffF2F3F2),
      borderRadius: BorderRadius.circular(20),
        ),
        
      
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            children: [
             
          
              const Icon(
                Icons.logout_outlined,
                color: Color(0xff53B175),
                size: 30,
              ),
              
          
              Center(
                child: const Text(
                  "Log Out",
                  style: TextStyle(
                    color: Color(0xff53B175),
                    
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
          
             
          
              
            ],
          ),
        ),
      ),
        ),
    

      
  
  ],
  ),
);
  }
}
final List<AccountoptionModel> accountOptions = [
  AccountoptionModel(
    icon: Icons.shopping_bag_outlined,
    title: "Orders",
  ),
  AccountoptionModel(
    icon: Icons.badge_outlined,
    title: "My Details",
  ),
  AccountoptionModel(
    icon: Icons.location_on_outlined,
    title: "Delivery Address",
  ),
  AccountoptionModel(
    icon: Icons.credit_card_outlined,
    title: "Payment Methods",
  ),
  AccountoptionModel(
    icon: Icons.discount_outlined,
    title: "Promo Code",
  ),
  AccountoptionModel(
    icon: Icons.notifications_none_outlined,
    title: "Notifications",
  ),
  AccountoptionModel(
    icon: Icons.help_outline,
    title: "Help",
  ),
  AccountoptionModel(
    icon: Icons.error_outline,
    title: "About",
  ),
];