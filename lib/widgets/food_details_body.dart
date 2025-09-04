import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';

class FoodDetailsBody extends StatelessWidget {
  final FoodItem foodItem;
  const FoodDetailsBody({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          foodItem.name,
          style: Theme.of(
            context,
          ).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.w500),
        ),
        //SizedBox(height: size.height * .001),
        Row(
          children: [
            Text(
              foodItem.rest,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            Text(
              " Restaurant",
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        SizedBox(height: size.height * .05),
      ],
    );
  }
}
