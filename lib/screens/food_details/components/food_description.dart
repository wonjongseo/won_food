import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/data/lists.dart';

class FoodDescription extends StatelessWidget {
  const FoodDescription({super.key, required this.description});

  final String description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDefault.padding,
        vertical: AppDefault.padding / 2,
      ),
      child: Text(
        description,
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(color: Colors.grey, height: 1.5),
      ),
    );
  }
}
