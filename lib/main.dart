import 'package:flutter/material.dart';
import 'package:food_delivery/pages/bottom_nav_bar_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.deepOrange),
      title: "Mr Burger - Food delivery app",

      debugShowCheckedModeBanner: false,
      home: const BottomNavBarPage(),
    );
  }
}
