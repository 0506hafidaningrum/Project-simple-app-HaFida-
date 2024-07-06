import 'package:e_commerce/LoginScreen.dart';
import 'package:e_commerce/RegScreen.dart';
import 'package:e_commerce/WelcomeScreen.dart';
import 'package:e_commerce/pages/CartPage.dart';
import 'package:e_commerce/pages/ItemPage.dart';
import 'package:e_commerce/widgets/HomeAppBar.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/pages/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/" : (context) => const WelcomeScreen(),
        "cartPage" : (context) => CartPage(),
        "itemPage" : (context) => ItemPage(),
      },
    );
  }
}

