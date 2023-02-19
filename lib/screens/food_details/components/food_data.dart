import 'package:flutter/material.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/network_image_with_loader.dart';
import 'package:won_food_app/data/lists.dart';

class FoodData extends StatelessWidget {
  const FoodData({super.key, required this.food});

  final Food food;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefault.padding),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.15,
            child: const AspectRatio(
              aspectRatio: 1 / 1,
              child: NetworkImageWithLoader('https://i.imgur.com/LiVMyhg.png'),
            ),
          ),
          const SizedBox(width: AppDefault.margin),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Fresh Tamagyoki',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Row(
                    children: List.generate(
                      5,
                      (index) => const Icon(
                        Icons.star_rounded,
                        color: Colors.orangeAccent,
                        size: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(AppDefault.padding / 2),
                    child: Text(
                      '(431)',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  )
                ],
              )
            ],
          ),
          const Spacer(),
          OutlinedButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.add_rounded,
                    size: 16,
                  ),
                  SizedBox(width: 4),
                  Text('Add to Order')
                ],
              ))
        ],
      ),
    );
  }
}
