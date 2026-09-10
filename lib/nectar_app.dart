import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/ButtomNavBar/buttom_nav_bar_screen.dart';
import 'package:flutter_application_2/screens/checkout_screen.dart';
import 'package:flutter_application_2/screens/error_screen.dart';

import 'package:flutter_application_2/screens/Auth/login_screen.dart';
import 'package:flutter_application_2/screens/Onbording/onBording_screen.dart';
import 'package:flutter_application_2/screens/filiter/filter_screen.dart';
import 'package:flutter_application_2/screens/orderAccepted_screen.dart';
import 'package:flutter_application_2/screens/productditails/productDitail_screen.dart';
import 'package:flutter_application_2/screens/ButtomNavBar/shop_screen.dart';
import 'package:flutter_application_2/screens/Auth/signUp_screen.dart';


class NectarApp extends StatelessWidget {
  const NectarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:ProductDitailScreen());
  }
}
