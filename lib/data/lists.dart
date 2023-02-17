import 'package:won_food_app/core/constants/app_icons.dart';
import 'package:won_food_app/screens/home/components/home_chip.dart';
import 'package:won_food_app/screens/home/components/item_tile_horizontal.dart';
import 'package:won_food_app/screens/home/components/resturant_tile.dart';

List<Map<String, String>> homeChips = const [
  {
    'name': 'Breakfast',
    'icon': AppIcons.anyfood,
  },
  {
    'name': 'Lunch',
    'icon': AppIcons.burger,
  },
  {
    'name': 'Dinner',
    'icon': AppIcons.eggroll,
  },
  {
    'name': 'Snack',
    'icon': AppIcons.pizza,
  },
  {
    'name': 'Desert',
    'icon': AppIcons.pizza,
  },
  {
    'name': 'Drinks',
    'icon': AppIcons.pizza,
  },
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
      foodName: 'Fresh Tamagoyaki',
      description: 'A delicious egg food from Japan.',
      imageUrl: 'https://i.imgur.com/JRWxyhP.png',
    ),
    ItemTileHorizontal(
      foodName: 'Okonomiyaki',
      description: 'Unagi is the Japanese w',
      imageUrl: 'https://i.imgur.com/WTjq9wQ.png',
    ),
  ],
  1: const [
    ItemTileHorizontal(
      foodName: 'Big Bugger',
      description: 'A delicious Big Bugger from Japan.',
      imageUrl: 'https://i.imgur.com/CUG0Aof.jpeg',
    ),
    ItemTileHorizontal(
      foodName: 'KFC chicken leg quarters',
      description: 'Unagi is the Japanese w',
      imageUrl: 'https://i.imgur.com/GbA4xZx.jpeg',
    ),
  ],
  2: const [
    ItemTileHorizontal(
      foodName: 'Meet',
      description: 'A delicious Meet from Japan.',
      imageUrl: 'https://i.imgur.com/IczvYoZ.jpeg',
    ),
    ItemTileHorizontal(
      foodName: 'Go TO Pizza',
      description: 'Go TO Pizza is the Japanese w',
      imageUrl: 'https://i.imgur.com/VUEGlFp.jpeg',
    ),
  ],
  3: const [
    ItemTileHorizontal(
      foodName: 'Fresh Tamagoyaki',
      description: 'A delicious egg food from Japan.',
      imageUrl: 'https://i.imgur.com/JRWxyhP.png',
    ),
    ItemTileHorizontal(
      foodName: 'Okonomiyaki',
      description: 'Unagi is the Japanese w',
      imageUrl: 'https://i.imgur.com/WTjq9wQ.png',
    ),
  ],
  4: const [
    ItemTileHorizontal(
      foodName: 'Starbucks Sallad',
      description: 'A Sallad egg food from Japan.',
      imageUrl: 'https://i.imgur.com/cpTZoRG.jpeg',
    ),
    ItemTileHorizontal(
      foodName: '31 IceCream',
      description: '31 IceCream is best of desert in the Japanese',
      imageUrl: 'https://i.imgur.com/f0tIo4h.jpeg',
    ),
    ItemTileHorizontal(
      foodName: 'Chocolate',
      description: 'The Chocolate of Family Mart  desert int the Japanese',
      imageUrl: 'https://i.imgur.com/3pJCEqJ.jpeg',
    ),
  ],
  5: const [
    ItemTileHorizontal(
      foodName: 'Coca Cola',
      description: 'Coca Cola is very delicious',
      imageUrl: 'https://i.imgur.com/fGPoWfi.png',
    ),
    ItemTileHorizontal(
      foodName: 'Okonomiyaki',
      description: 'Unagi is the Japanese w',
      imageUrl: 'https://i.imgur.com/WTjq9wQ.png',
    ),
  ],
};
