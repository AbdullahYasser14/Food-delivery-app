import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';

class FavoriteItem extends StatelessWidget {
  final FoodItem foodItem;
  const FavoriteItem({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Image.network(
              foodItem.imageURL,
              height: 90,
              width: 90,
              //fit: BoxFit.cover,
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    foodItem.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "${foodItem.price} \$",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
              ),
            ),

            const Icon(Icons.favorite, color: Colors.deepOrange),
          ],
        ),
      ),
    );
  }
}
