import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:won_food_app/core/constants/app_icons.dart';

class FoodStyleHeader extends StatelessWidget {
  const FoodStyleHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const SizedBox(),
      title: Text(
        'Food Style',
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            AppIcons.add2,
          ),
        )
      ],
    );
  }
}
