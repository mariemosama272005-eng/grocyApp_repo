import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/ButtomNavBar/account_screen.dart';
import 'package:flutter_application_2/screens/ButtomNavBar/explore_screen.dart';
import 'package:flutter_application_2/screens/ButtomNavBar/favourite_screen.dart';
import 'package:flutter_application_2/screens/ButtomNavBar/shop_screen.dart';
import 'package:flutter_application_2/screens/ButtomNavBar/shopping_cart_screen.dart';

class ButtomNavBarScreen extends StatefulWidget {
  const ButtomNavBarScreen({super.key});

  @override
  State<ButtomNavBarScreen> createState() => _ButtomNavBarScreenState();
}

class _ButtomNavBarScreenState extends State<ButtomNavBarScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    const ShopScreen(),
    const ExploreScreen(),
    const ShoppingCartScreen(),
    const FavouriteScreen(),
    const AccountScreen()
  ];

  @override
  Widget build(BuildContext context) {
    // هل نحن في شاشة الـ Shop؟ (Index رقم 0)
    bool isShopScreen = currentIndex == 0;

    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true, 
      body: screens[currentIndex],
      bottomNavigationBar: Container(
       
        margin: isShopScreen 
            ? const EdgeInsets.symmetric(horizontal: 16, vertical: 16) 
            : EdgeInsets.zero,
        decoration: BoxDecoration(
          color: Colors.white,
          
          borderRadius: isShopScreen 
              ? BorderRadius.circular(25) 
              : BorderRadius.zero,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: isShopScreen 
              ? BorderRadius.circular(25) 
              : BorderRadius.zero,
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            backgroundColor: Colors.transparent,
            elevation: 0,
            selectedItemColor: const Color(0xff53B175),
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.storefront_outlined),
                label: "Shop",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.manage_search),
                label: "Explore",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: "Cart",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline),
                label: "Favourite",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_3_outlined),
                label: "Account",
              ),
            ],
          ),
        ),
      ),
    );
  }
}