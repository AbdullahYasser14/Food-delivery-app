import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';

class FoodGridItem extends StatefulWidget {
  final int foodIndex;
  const FoodGridItem({super.key, required this.foodIndex});

  @override
  State<FoodGridItem> createState() => _FoodGridItemState();
}

class _FoodGridItemState extends State<FoodGridItem> {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: LayoutBuilder(
        builder:
            (context, constraints) => Column(
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Image.network(
                      foodList[widget.foodIndex].imageURL,
                      height: constraints.maxHeight * .6,
                      //fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: constraints.maxHeight * .2,
                          width: constraints.maxWidth * .2,
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: InkWell(
                            onTap:
                                () => setState(() {
                                  foodList[widget.foodIndex] =
                                      foodList[widget.foodIndex].copyWith(
                                        isFavorite:
                                            !foodList[widget.foodIndex]
                                                .isFavorite,
                                      );
                                }),
                            child: Icon(
                              foodList[widget.foodIndex].isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: constraints.maxHeight * .01),
                SizedBox(
                  height: constraints.maxHeight * .17,
                  child: FittedBox(
                    child: Text(
                      foodList[widget.foodIndex].name,
                      style: const TextStyle(
                        // fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: constraints.maxHeight * .01),
                SizedBox(
                  height: constraints.maxHeight * .145,
                  child: FittedBox(
                    child: Text(
                      "${foodList[widget.foodIndex].price}\$",
                      style: TextStyle(
                        //fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
      ),
    );
  }
}
