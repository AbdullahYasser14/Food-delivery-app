import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/pages/food_details_page.dart';
import 'package:food_delivery/widgets/food_grid_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                  height: size.height * 0.25,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: size.height * .04),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: foodList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: size.height * 0.02,
                  crossAxisSpacing: size.height * 0.02,
                ),
                itemBuilder:
                    (BuildContext context, int index) => InkWell(
                      onTap:
                          () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder:
                                  (context) => FoodDetailsPage(
                                    foodItem: foodList[index],
                                  ),
                            ),
                          ),
                      child: FoodGridItem(foodIndex: index),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
