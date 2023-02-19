import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/title_with_sub.dart';
import 'package:won_food_app/data/lists.dart';
import 'package:won_food_app/screens/home/components/item_tile_horizontal.dart';

class FoodSuggestions extends StatelessWidget {
  const FoodSuggestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: AppDefault.padding),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDefault.padding),
          child: TitleWithSub(title: 'Breakfast', sub: 'Fastest Food'),
        ),
        const SizedBox(height: AppDefault.padding),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              ItemTileHorizontal(
                food: Food(
                  price: 5.00,
                  name: 'Fresh Tamagoyaki',
                  description: 'A delicious egg food from Japan.',
                  imageUrl: 'https://i.imgur.com/JRWxyhP.png',
                ),
              ),
              ItemTileHorizontal(
                food: Food(
                  price: 8.00,
                  name: 'Okonomiyaki',
                  description: 'Unagi is the Japanese w',
                  imageUrl: 'https://i.imgur.com/WTjq9wQ.png',
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
