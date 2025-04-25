import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    final favoriteList =
        foodList.where((foodItem) => foodItem.isFavorite == true).toList();
    if (favoriteList.isEmpty) {
      return Center(
        child: Column(
          children: [
            Image.asset("assets/images/empty_state.png", height: 350),
            const Text(
              "No favorite item founded !",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      );
    }
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: favoriteList.length,
          itemBuilder:
              (BuildContext context, int index) => Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Image.network(
                        favoriteList[index].imageURL,
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
                              favoriteList[index].name,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "${favoriteList[index].price} \$",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),

                      IconButton(
                        onPressed: () {
                          final targetFood = favoriteList[index];
                          int foodindex = foodList.indexOf(targetFood);
                          setState(() {
                            foodList[foodindex] = foodList[foodindex].copyWith(
                              isFavorite: false,
                            );
                            favoriteList.remove(targetFood);
                          });
                        },
                        icon: const Icon(Icons.favorite),
                        color: Theme.of(context).primaryColor,
                        iconSize: 30,
                      ),
                    ],
                  ),
                ),
              ),
        ),
      ),
    );
  }
}
