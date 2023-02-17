import 'package:flutter/material.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/data/lists.dart';
import 'package:won_food_app/screens/home/components/home_chip.dart';

class CategorySelection extends StatefulWidget {
  const CategorySelection(
      {super.key,
      required this.selectCategoryIndex,
      required this.changeCategory});
  final int selectCategoryIndex;
  final void Function(int) changeCategory;
  @override
  State<CategorySelection> createState() => _CategorySelectionState();
}

class _CategorySelectionState extends State<CategorySelection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDefault.padding),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: AppDefault.padding),
        child: Row(
          children: List.generate(
              homeChips.length,
              (index) => HomeChip(
                  onTap: () {
                    widget.changeCategory(index);
                  },
                  name: homeChips[index]['name']!,
                  icon: homeChips[index]['icon']!,
                  isActive:
                      index == widget.selectCategoryIndex ? true : false)),
        ),
      ),
    );
  }
}
