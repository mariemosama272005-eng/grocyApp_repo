import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/buttom_nav_bar_screen.dart';
import 'package:flutter_application_2/screens/login_screen.dart';
import 'package:flutter_application_2/screens/signUp_screen.dart';

class NectarApp extends StatelessWidget {
  const NectarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ButtomNavBarScreen());
  }
}
