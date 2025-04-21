import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/widgets/food_grid_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Center(child: Text("Mr Burger")),
        backgroundColor: Colors.grey[100],
      ),
      drawer: Drawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(24.0),
                child: Image.asset(
                  "assets/images/classic_burger.jpg",
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 32),
              Expanded(
                child: GridView.builder(
                  itemCount: FoodList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
                  itemBuilder:
                      (BuildContext context, int index) =>
                          FoodGridItem(foodItem: FoodList[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
