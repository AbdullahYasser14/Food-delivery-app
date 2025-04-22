import 'package:flutter/material.dart';
import 'package:food_delivery/pages/home_page.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int selectedIndex = 0;
  List<Widget> pageForNavBar = [
    HomePage(),
    Center(child: Text('favorite')),
    Center(child: Text('Account')),
  ];
  void onItemTapped(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        title: Center(child: Text("Mr Burger")),
        backgroundColor: Colors.grey[100],
      ),
      drawer: Drawer(),
      body: pageForNavBar[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: Colors.deepOrange,
      ),
    );
  }
}
