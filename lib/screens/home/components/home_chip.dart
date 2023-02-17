import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:won_food_app/core/constants/app_colors.dart';
import 'package:won_food_app/core/constants/app_default.dart';

class HomeChip extends StatelessWidget {
  const HomeChip(
      {super.key,
      required this.name,
      required this.icon,
      required this.isActive,
      required this.onTap});

  final String name, icon;
  final bool isActive;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: isActive ? 8 : 4),
      child: Material(
        color: isActive ? AppColors.primary : null,
        borderRadius: BorderRadius.circular(32),
        child: InkWell(
          onTap: () {
            onTap();
            print('name: ${name}');
          },
          borderRadius: AppDefault.borderRadius,
          child: Container(
            padding: const EdgeInsets.all(AppDefault.padding / 2),
            child: Row(
              children: [
                isActive
                    ? Container(
                        margin: const EdgeInsets.only(right: 8),
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: SvgPicture.asset(icon, height: 16),
                      )
                    : const SizedBox(),
                Text(
                  name,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: isActive ? Colors.black : Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
