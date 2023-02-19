import 'package:won_food_app/core/constants/app_icons.dart';
import 'package:won_food_app/screens/home/components/home_chip.dart';
import 'package:won_food_app/screens/home/components/item_tile_horizontal.dart';
import 'package:won_food_app/screens/home/components/resturant_tile.dart';

class Food {
  final String name, imageUrl, description;
  final double price;
  final double? discountPrice;

  const Food(
      {required this.price,
      this.discountPrice,
      required this.name,
      required this.imageUrl,
      required this.description});

  @override
  String toString() {
    return 'Food(name: $name, imageUrl: $imageUrl, description: $description)';
  }
}

class Resturant {
  final List<Category> categories;
  final List<Food> foods;
  final int rate;
  final String description, resturantName;

  final List<String> imageUrl;

  const Resturant(
      {required this.foods,
      required this.resturantName,
      required this.imageUrl,
      required this.rate,
      required this.description,
      required this.categories});

  @override
  String toString() {
    return 'Resturant(foods: $foods, resturantName: $resturantName, categories: $categories, rate: $rate, description: $description, imageUrl: $imageUrl)';
  }
}

class Category {
  final String name;
  final String? icon;
  const Category({required this.name, this.icon});

  @override
  String toString() {
    return 'Category(name: $name, icon: $icon)';
  }
}

List<Map<String, String>> homeChips = const [];

List<Category> categories = const [
  Category(name: 'Breakfast', icon: AppIcons.anyfood),
  Category(name: 'Lunch', icon: AppIcons.burger),
  Category(name: 'Dinner', icon: AppIcons.eggroll),
  Category(name: 'Snack', icon: AppIcons.pizza),
  Category(name: 'Desert', icon: AppIcons.pizza),
  Category(name: 'Drinks', icon: AppIcons.pizza),
];
List<Resturant> resturants = [
  Resturant(
    foods: [],
    resturantName: 'Totuki Elite',
    rate: 50,
    description: 'Black Friday 50%',
    imageUrl: ['https://i.imgur.com/sHvxwmP.png'],
    categories: [
      categories[0],
    ],
  ),
  Resturant(
    foods: [],
    resturantName: 'Starbucks',
    rate: 50,
    description: 'Every Monday is Free',
    imageUrl: [
      'https://i.imgur.com/lk57XZJ.png',
    ],
    categories: [categories[0]],
  ),
];
List<Map<String, dynamic>> resturantTiles = [
  {
    'resturan_name': 'Totuki Elite',
    'description': 'Black Friday 50%',
    'imageUrl': 'https://i.imgur.com/sHvxwmP.png',
    'rate': 50,
  },
  {
    'resturan_name': 'Starbucks',
    'description': 'Every Monday is Free',
    'imageUrl': 'https://i.imgur.com/lk57XZJ.png',
    'rate': 50,
  },
  {
    'resturan_name': 'MC donlad',
    'imageUrl':
        'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/McDonald%27s_Golden_Arches.svg/1200px-McDonald%27s_Golden_Arches.svg.png',
    'rate': 45,
  }
];

Map<int, List<ItemTileHorizontal>> itemTileHorizontals = {
  0: const [
    ItemTileHorizontal(
        food: Food(
            price: 6.00,
            name: 'Fresh Tamagoyaki',
            description: 'A delicious egg food from Japan.',
            imageUrl: 'https://i.imgur.com/JRWxyhP.png')),
    ItemTileHorizontal(
      food: Food(
        price: 4.00,
        name: 'Okonomiyaki',
        description: 'Unagi is the Japanese w',
        imageUrl: 'https://i.imgur.com/WTjq9wQ.png',
      ),
    ),
  ],
  1: const [
    ItemTileHorizontal(
      food: Food(
          price: 4.00,
          name: 'Big Bugger',
          description: 'A delicious Big Bugger from Japan.',
          imageUrl: 'https://i.imgur.com/CUG0Aof.jpeg'),
    ),
    ItemTileHorizontal(
      food: Food(
        price: 8.00,
        name: 'KFC chicken leg quarters',
        description: 'Unagi is the Japanese w',
        imageUrl: 'https://i.imgur.com/GbA4xZx.jpeg',
      ),
    ),
  ],
  2: const [
    ItemTileHorizontal(
      food: Food(
        price: 10.00,
        name: 'Meet',
        description: 'A delicious Meet from Japan.',
        imageUrl: 'https://i.imgur.com/IczvYoZ.jpeg',
      ),
    ),
    ItemTileHorizontal(
      food: Food(
        price: 12.00,
        name: 'Go TO Pizza',
        description: 'Go TO Pizza is the Japanese w',
        imageUrl: 'https://i.imgur.com/VUEGlFp.jpeg',
      ),
    ),
  ],
  3: const [
    ItemTileHorizontal(
      food: Food(
        price: 12.00,
        name: 'Fresh Tamagoyaki',
        description: 'A delicious egg food from Japan.',
        imageUrl: 'https://i.imgur.com/JRWxyhP.png',
      ),
    ),
    ItemTileHorizontal(
      food: Food(
        price: 6.00,
        discountPrice: 10.00,
        name: 'Okonomiyaki',
        description: 'Unagi is the Japanese w',
        imageUrl: 'https://i.imgur.com/WTjq9wQ.png',
      ),
    ),
  ],
  4: const [
    ItemTileHorizontal(
      food: Food(
        price: 6.00,
        discountPrice: 12.00,
        name: 'Starbucks Sallad',
        description: 'A Sallad egg food from Japan.',
        imageUrl: 'https://i.imgur.com/cpTZoRG.jpeg',
      ),
    ),
    ItemTileHorizontal(
      food: Food(
        price: 7.00,
        name: '31 IceCream',
        description: '31 IceCream is best of desert in the Japanese',
        imageUrl: 'https://i.imgur.com/f0tIo4h.jpeg',
      ),
    ),
    ItemTileHorizontal(
      food: Food(
        price: 7.00,
        name: 'Chocolate',
        description: 'The Chocolate of Family Mart  desert int the Japanese',
        imageUrl: 'https://i.imgur.com/3pJCEqJ.jpeg',
      ),
    ),
  ],
  5: const [
    ItemTileHorizontal(
      food: Food(
        price: 7.00,
        name: 'Coca Cola',
        description: 'Coca Cola is very delicious',
        imageUrl: 'https://i.imgur.com/fGPoWfi.png',
      ),
    ),
    ItemTileHorizontal(
      food: Food(
        price: 7.00,
        name: 'Okonomiyaki',
        description: 'Unagi is the Japanese w',
        imageUrl: 'https://i.imgur.com/WTjq9wQ.png',
      ),
    ),
  ],
};
