import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/widgets/favorite_item.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children:
                foodList
                    .where((foodItem) => foodItem.isFavorite == true)
                    .map((foodItem) => FavoriteItem(foodItem: foodItem))
                    .toList(),
          ),
        ),
      ),
    );
  }
}
