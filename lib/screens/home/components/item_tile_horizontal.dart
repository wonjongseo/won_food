import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/app_icons.dart';
import 'package:won_food_app/core/constants/network_image_with_loader.dart';
import 'package:won_food_app/core/constants/skeleton.dart';
import 'package:won_food_app/data/lists.dart';
import 'package:won_food_app/screens/food_details/food_details.dart';

class ItemTileHorizontal extends StatelessWidget {
  const ItemTileHorizontal({
    super.key,
    required this.food,
  });

  final Food food;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        borderRadius: AppDefault.borderRadius,
        onTap: () {
          Get.to(() => FoodDetailsPage(food: food));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDefault.padding),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: AppDefault.aspectRatio,
                  child: NetworkImageWithLoader(food.imageUrl),
                ),
                const SizedBox(height: AppDefault.margin),
                Text(food.name, style: Theme.of(context).textTheme.headline6),
                const SizedBox(height: AppDefault.margin / 2),
                Text(food.description,
                    style: Theme.of(context).textTheme.caption),
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
                    const Text('Free Delivery')
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
