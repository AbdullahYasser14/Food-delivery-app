class FoodItem {
  final String name;
  final String imageURL;
  final double price;

  FoodItem({required this.name, required this.imageURL, required this.price});
}

List<FoodItem> FoodList = [
  FoodItem(
    name: "Meat Burger",
    imageURL: "https://pngimg.com/d/burger_sandwich_PNG4135.png",
    price: 9,
  ),
  FoodItem(
    name: "Chicken Burger",
    imageURL:
        "https://i.pinimg.com/736x/2c/7d/99/2c7d99254fe5b704db573b870fae4e3f.jpg",
    price: 7.5,
  ),
  FoodItem(
    name: "Cheese Burger",
    imageURL:
        "https://i.pinimg.com/564x/b8/a7/5e/b8a75e580a202cce7ac6bc3693e96672.jpg",
    price: 6.75,
  ),
  FoodItem(
    name: "Hot Dog",
    imageURL:
        "https://static.vecteezy.com/system/resources/previews/046/829/062/non_2x/hot-dog-with-ketchup-and-mustard-isolated-on-transparent-background-png.png",
    price: 4.75,
  ),
  FoodItem(
    name: "Chicken Wings",
    imageURL:
        "https://wallpapers.com/images/hd/saucy-chicken-wings-platter-upho0yppur4impvc.jpg",
    price: 7,
  ),
  FoodItem(
    name: "Chicken Nuggets",
    imageURL:
        "https://w7.pngwing.com/pngs/362/843/png-transparent-chicken-nuggets-crispy-fried-chicken-chicken-nugget-kfc-chicken-fingers-fried-chicken-food-baking-recipe-thumbnail.png",
    price: 10,
  ),
  FoodItem(
    name: "Combo Meal",
    imageURL:
        "https://juicerpricing.com/hs-fs/hubfs/Double-cheeseburger-meal-NEW-1.png?width=490&height=429&name=Double-cheeseburger-meal-NEW-1.png",
    price: 13.25,
  ),
];
