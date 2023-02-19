import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/app_icons.dart';
import 'package:won_food_app/core/constants/network_image_with_loader.dart';
import 'package:won_food_app/data/lists.dart';
import 'package:won_food_app/screens/food_details/components/food_categories.dart';
import 'package:won_food_app/screens/food_details/components/food_data.dart';
import 'package:won_food_app/screens/food_details/components/food_description.dart';
import 'package:won_food_app/screens/food_details/components/food_image_slider.dart';
import 'package:won_food_app/screens/food_details/components/food_meta_data.dart';

class FoodDetailsPage extends StatelessWidget {
  const FoodDetailsPage({super.key, required this.food});

  final Food food;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: SvgPicture.asset(AppIcons.back),
        ),
        leadingWidth: 48,
        title: Text(
          food.name,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: SvgPicture.asset(AppIcons.heart))
        ],
      ),
      body: Column(
        children: [
          ImageSliderFood(imageUrl: food.imageUrl),
          FoodMetaData(food: food),
          FoodDescription(description: food.description),
          const FoodCategories(
            categories: [
              Category(name: 'Breakfast'),
              Category(name: 'Vegan'),
              Category(name: 'Japanese')
            ],
          ),
          const Divider(height: AppDefault.margin * 2),
          FoodData(food: food),
          const Spacer(),
          PlaceOrderButton(price: food.price),
        ],
      ),
    );
  }
}

class PlaceOrderButton extends StatelessWidget {
  const PlaceOrderButton({super.key, required this.price});
  final double price;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDefault.padding),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: AppDefault.boxShadow,
      ),
      child: SafeArea(
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(AppDefault.padding),
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: AppDefault.borderRadius),
              child: SvgPicture.asset(AppIcons.order2),
            ),
            const Spacer(),
            Text(
              '\$$price',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Place Order',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: AppDefault.borderRadius,
                      ),
                      child: Text(
                        '2',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
