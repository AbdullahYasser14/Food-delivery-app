import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/widgets/food_grid_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(24.0),
                child: Image.asset(
                  "assets/images/classic_burger.jpg",
                  height: MediaQuery.of(context).size.height * 0.24,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .04),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: foodList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder:
                    (BuildContext context, int index) =>
                        FoodGridItem(foodIndex: index),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
