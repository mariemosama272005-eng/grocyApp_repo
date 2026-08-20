import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/account_screen.dart';
import 'package:flutter_application_2/screens/explore_screen.dart';
import 'package:flutter_application_2/screens/favourite_screen.dart';
import 'package:flutter_application_2/screens/shop_screen.dart';
import 'package:flutter_application_2/screens/shopping_cart_screen.dart';

class ButtomNavBarScreen extends StatefulWidget {
  const ButtomNavBarScreen({super.key});

  @override
  State<ButtomNavBarScreen> createState() => _ButtomNavBarScreenState();
}

class _ButtomNavBarScreenState extends State<ButtomNavBarScreen> {
  int currentIndex=0;
  List<Widget>screens=[
    ShopScreen(),
    ExploreScreen(),
    ShoppingCartScreen(),
    FavouriteScreen(),
    AccountScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: screens[currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
             currentIndex=index;
          });
         

        },
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xff53B175),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront_outlined),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search),
            label: "explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "shopping_cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: "Favourite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3_outlined),
            label: "account",
          ),
        ],
      ),
    );
  }
}
