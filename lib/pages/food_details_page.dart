import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/widgets/checkout_bar.dart';
import 'package:food_delivery/widgets/food_details_body.dart';
import 'package:food_delivery/widgets/main_bar_details_page.dart';
import 'package:food_delivery/widgets/top_banner.dart';

class FoodDetailsPage extends StatelessWidget {
  final FoodItem foodItem;
  const FoodDetailsPage({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBanner(foodItem: foodItem),
            Divider(
              color: Theme.of(context).primaryColor,
              height: size.height * .001,
            ),
            // SizedBox(height: size.height * .03),
            Padding(
              padding: const EdgeInsets.only(
                top: 16.0,
                right: 16,
                left: 16,
                bottom: 46,
              ),
              child: Column(
                children: [
                  FoodDetailsBody(foodItem: foodItem),

                  MainBarDetailsPage(foodItem: foodItem),
                  SizedBox(height: size.height * .05),
                  Text(
                    foodItem.details,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  //SizedBox(height: size.height * .03),
                ],
              ),
            ),
            CheckoutBar(foodItem: foodItem),
          ],
        ),
      ),
    );
  }
}
