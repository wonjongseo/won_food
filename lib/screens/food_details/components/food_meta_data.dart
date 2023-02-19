import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/app_icons.dart';
import 'package:won_food_app/core/constants/network_image_with_loader.dart';
import 'package:won_food_app/data/lists.dart';

class FoodMetaData extends StatelessWidget {
  const FoodMetaData({super.key, required this.food});

  final Food food;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefault.padding),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                food.name,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Text(
                '\$${food.price}',
                style: Theme.of(context).textTheme.headline6,
              )
            ],
          ),
          const SizedBox(height: AppDefault.margin),
          Row(
            children: [
              const ResturantDetails(),
              const Spacer(),
              if (food.discountPrice != null)
                Text(
                  '\$${food.discountPrice!}',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                ),
            ],
          ),
          const SizedBox(height: AppDefault.margin),
          Row(
            children: [
              SvgPicture.asset(AppIcons.time),
              const Text('10 min'),
              const Spacer(),
              SvgPicture.asset(AppIcons.stars),
              const Text('4.5'),
              const Spacer(),
              SvgPicture.asset(AppIcons.delivery),
              const Text('Free Delivery'),
              const Spacer(flex: 5),
            ],
          )
        ],
      ),
    );
  }
}

class ResturantDetails extends StatelessWidget {
  const ResturantDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 20,
          height: 20,
          child: NetworkImageWithLoader(
            'https://i.imgur.com/sHvxwmP.png',
          ),
        ),
        const SizedBox(width: AppDefault.margin),
        Row(
          children: [
            Text(
              'Totsuki Elite',
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(width: 8),
            Row(
              children: List.generate(
                5,
                (index) => const Icon(
                  Icons.star_rounded,
                  color: Colors.orangeAccent,
                  size: 16,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
