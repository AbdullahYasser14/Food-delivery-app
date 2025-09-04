class FoodItem {
  final String size;
  final int kcal;
  final int time;
  final String name;
  final String imageURL;
  final double price;
  final String rest;
  final String details;
  final bool isFavorite;

  FoodItem({
    this.isFavorite = false,
    required this.kcal,
    required this.size,
    required this.time,
    required this.rest,
    required this.name,
    required this.imageURL,
    required this.price,
    required this.details,
  });
  FoodItem copyWith({
    int? kcal,
    String? size,
    int? time,
    String? details,
    String? rest,
    String? name,
    String? imageURL,
    double? price,
    bool? isFavorite,
  }) => FoodItem(
    kcal: kcal ?? this.kcal,
    size: size ?? this.size,
    time: time ?? this.time,
    details: details ?? this.details,
    rest: rest ?? this.rest,
    name: name ?? this.name,
    imageURL: imageURL ?? this.imageURL,
    price: price ?? this.price,
    isFavorite: isFavorite ?? this.isFavorite,
  );
}

List<FoodItem> foodList = [
  FoodItem(
    kcal: 576,
    size: "Large",
    time: 30,
    name: "Meat Burger",
    imageURL: "https://pngimg.com/d/burger_sandwich_PNG4135.png",
    price: 9,
    rest: "Mr Burger",
    details:
        "A juicy, flame-grilled beef patty made from 100% premium ground beef, seasoned to perfection with a blend of spices. It’s served on a freshly toasted brioche bun that’s soft yet slightly buttery. The burger is layered with crisp lettuce, ripe tomato slices, and thinly sliced red onions for a refreshing crunch. Melted cheddar cheese drapes over the patty, adding a rich, creamy flavor, while a drizzle of smoky barbecue sauce and a touch of tangy mayonnaise complete the taste experience. Every bite delivers a perfect balance of savory, smoky, and slightly sweet flavors, making it an irresistible choice for burger lovers",
  ),
  FoodItem(
    kcal: 740,
    size: "small",
    time: 25,
    name: "Chicken Burger",
    imageURL:
        "https://i.pinimg.com/736x/2c/7d/99/2c7d99254fe5b704db573b870fae4e3f.jpg",
    price: 7.5,
    rest: "Mr Burger",
    details:
        "A tender, golden-grilled chicken breast seasoned with a blend of herbs and spices, cooked to perfection for a juicy and flavorful bite. It’s nestled in a soft, freshly toasted brioche bun that adds a hint of buttery sweetness. The burger is layered with crisp iceberg lettuce, juicy tomato slices, and thinly cut red onions for a refreshing crunch. A slice of creamy cheddar cheese melts over the chicken, while a drizzle of zesty garlic mayo and a touch of smoky barbecue sauce elevate the flavor profile. Each bite delivers a delicious combination of savory, tangy, and slightly smoky notes, making it a perfect choice for chicken lovers",
  ),
  FoodItem(
    kcal: 900,
    size: "large",
    time: 20,
    rest: "Mr burger",
    name: "Cheese Burger",
    imageURL:
        "https://i.pinimg.com/564x/b8/a7/5e/b8a75e580a202cce7ac6bc3693e96672.jpg",
    price: 6.75,
    details:
        "A mouthwatering cheeseburger featuring a perfectly seasoned, flame-grilled beef patty that’s juicy and tender inside with a smoky char on the outside. The patty is topped with a generous layer of melted cheddar cheese, creating a rich, creamy texture that complements the savory beef. Served on a soft, toasted brioche bun, the burger is layered with fresh, crisp lettuce, ripe tomato slices, and crunchy pickles for a refreshing balance. A drizzle of tangy burger sauce and a hint of mayonnaise bring all the flavors together in every bite. This cheeseburger is the ultimate comfort food, satisfying every craving with its bold, cheesy goodness",
  ),
  FoodItem(
    kcal: 486,
    size: "Medium",
    time: 15,
    name: "Hot Dog",
    imageURL:
        "https://static.vecteezy.com/system/resources/previews/046/829/062/non_2x/hot-dog-with-ketchup-and-mustard-isolated-on-transparent-background-png.png",
    price: 4.75,
    rest: "Marg",
    details:
        "A classic hot dog made with a premium, juicy beef sausage grilled to perfection for a smoky, flavorful bite. It’s nestled in a soft, freshly baked bun that’s slightly toasted for a warm, golden finish. The hot dog is topped with tangy mustard, rich ketchup, and a drizzle of creamy mayonnaise for a perfect balance of flavors. Crispy onions add a delightful crunch, while sweet pickles bring a refreshing twist. Every bite combines savory, smoky, and slightly sweet notes, making this hot dog an irresistible favorite for any snack or meal",
  ),
  FoodItem(
    kcal: 320,
    size: "Large",
    time: 10,
    name: "Chicken Wings",
    imageURL:
        "https://wallpapers.com/images/hd/saucy-chicken-wings-platter-upho0yppur4impvc.jpg",
    price: 7,
    rest: "chicken kitchen",
    details:
        "Crispy, golden-brown chicken wings fried to perfection for a crunchy exterior and tender, juicy meat inside. Coated in a rich, flavorful sauce of your choice—whether it’s tangy buffalo, sweet and smoky barbecue, or spicy hot chili—they deliver the perfect balance of heat and flavor. Served with a side of creamy ranch or cool blue cheese dip, these wings are the ultimate finger food for any occasion. Each bite bursts with bold, mouthwatering taste that keeps you coming back for more.",
  ),
  FoodItem(
    kcal: 250,
    size: "Medium",
    time: 10,
    name: "Chicken Nuggets",
    imageURL:
        "https://static.vecteezy.com/system/resources/previews/025/222/173/non_2x/chicken-nuggets-isolated-on-transparent-background-png.png",
    price: 10,
    rest: "chicken kitchen",
    details:
        "Golden, crispy chicken nuggets made from tender, juicy chicken breast coated in a crunchy breadcrumb crust. Each bite offers the perfect balance of a crunchy exterior and soft, flavorful chicken inside. Served hot and fresh, these nuggets are ideal for dipping in your favorite sauces—whether it’s tangy barbecue, creamy ranch, or classic ketchup. A snack that’s loved by both kids and adults, delivering irresistible taste and satisfying crunch every time",
  ),
];
