import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';

class FoodGridItem extends StatelessWidget {
  final FoodItem foodItem;
  const FoodGridItem({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Image.network(
            foodItem.imageURL,
            height: 100,
            //fit: BoxFit.cover,
          ),
          SizedBox(height: 4),
          Text(
            foodItem.name,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Text(
            "${foodItem.price}\$",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
          ),
        ],
      ),
    );
  }
}
