import 'package:flutter/material.dart';
import 'package:food_delivery/pages/bottom_nav_bar_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Mr Burger - Food delivery app",
      debugShowCheckedModeBanner: false,
      home: BottomNavBarPage(),
    );
  }
}
