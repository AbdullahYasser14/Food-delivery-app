import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';

class FoodDetailsPage extends StatelessWidget {
  final FoodItem foodItem;
  const FoodDetailsPage({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.grey[200]),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 16,
              ),
              child: SafeArea(
                child: SizedBox(
                  height: size.height * .4,
                  child: LayoutBuilder(
                    builder:
                        (context, constraints) => Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: constraints.maxHeight * .1,
                                  width: constraints.maxWidth * .1,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: InkWell(
                                      onTap: () => Navigator.of(context).pop(),
                                      child: Icon(
                                        Icons.chevron_left,
                                        color: Theme.of(context).primaryColor,
                                        size: constraints.maxHeight * .1,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: constraints.maxHeight * .1,
                                    width: constraints.maxWidth * .1,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Icon(
                                        foodItem.isFavorite
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: Theme.of(context).primaryColor,
                                        size: constraints.maxHeight * .09,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: constraints.maxHeight * .8,
                              // width: size.width,
                              child: Image.network(
                                foodItem.imageURL,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
