import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:won_food_app/core/constants/app_icons.dart';

class FoodDetailsPage extends StatelessWidget {
  const FoodDetailsPage({super.key, required this.foodName});

  final String foodName;
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
          foodName,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: SvgPicture.asset(AppIcons.heart))
        ],
      ),
    );
  }
}
