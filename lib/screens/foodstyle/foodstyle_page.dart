import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/screens/foodstyle/components/banner_food_style_page.dart';
import 'package:won_food_app/screens/foodstyle/components/food_style_header.dart';
import 'package:won_food_app/screens/foodstyle/components/food_suggestions.dart';

class FoodStylePage extends StatelessWidget {
  const FoodStylePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: FoodStylePageConent());
  }
}

class FoodStylePageConent extends StatelessWidget {
  const FoodStylePageConent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          FoodStyleHeader(),
          BannerFoodStylePage(),
          FoodSuggestions(),
          SizedBox(height: AppDefault.padding),
          FoodSuggestions(),
        ],
      ),
    );
  }
}
