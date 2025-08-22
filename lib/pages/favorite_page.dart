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
    final size = MediaQuery.of(context).size;
    final favoriteList =
        foodList.where((foodItem) => foodItem.isFavorite == true).toList();
    if (favoriteList.isEmpty) {
      return Center(
        child: Column(
          children: [
            Image.asset(
              "assets/images/empty_state.png",
              height: size.height * .5,
            ),
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
                  child: LayoutBuilder(
                    builder:
                        (context, constraints) => Row(
                          children: [
                            Image.network(
                              favoriteList[index].imageURL,
                              //height: constraints.maxHeight * .3,
                              width: constraints.maxWidth * .3,
                              //fit: BoxFit.cover,
                            ),
                            SizedBox(width: constraints.maxWidth * .02),
                            Expanded(
                              child: SizedBox(
                                width: constraints.maxWidth * .5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: constraints.maxWidth * 0.4,
                                      child: FittedBox(
                                        child: Text(
                                          favoriteList[index].name,
                                          style: const TextStyle(
                                            // fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: constraints.maxWidth * .125,
                                      child: FittedBox(
                                        child: Text(
                                          "${favoriteList[index].price} \$",
                                          style: TextStyle(
                                            //fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            IconButton(
                              onPressed: () {
                                final targetFood = favoriteList[index];
                                int foodindex = foodList.indexOf(targetFood);
                                setState(() {
                                  foodList[foodindex] = foodList[foodindex]
                                      .copyWith(isFavorite: false);
                                  favoriteList.remove(targetFood);
                                });
                              },
                              icon: const Icon(Icons.favorite),
                              color: Theme.of(context).primaryColor,
                              iconSize: constraints.maxWidth * .08,
                            ),
                          ],
                        ),
                  ),
                ),
              ),
        ),
      ),
    );
  }
}
