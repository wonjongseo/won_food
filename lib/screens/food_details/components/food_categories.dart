import 'package:flutter/material.dart';
import 'package:won_food_app/core/constants/app_colors.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/data/lists.dart';

class FoodCategories extends StatelessWidget {
  const FoodCategories({super.key, required this.categories});

  final List<Category> categories;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 8.0, top: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(categories.length,
              (index) => _CategoryChip(name: categories[index].name)),
        ),
      ),
    );
  }
}

class _CategoryChip extends StatelessWidget {
  const _CategoryChip({required this.name});

  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppDefault.padding / 2),
      padding: const EdgeInsets.all(AppDefault.padding / 2),
      decoration: BoxDecoration(
          color: AppColors.primary.withOpacity(0.2),
          borderRadius: AppDefault.borderRadius),
      child: Text(name),
    );
  }
}
