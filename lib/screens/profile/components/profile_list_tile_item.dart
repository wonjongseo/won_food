import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/app_icons.dart';

class ProfileListTileItem extends StatelessWidget {
  const ProfileListTileItem(
      {super.key,
      required this.name,
      required this.icon,
      required this.onTap,
      this.isLastItem = false,
      this.trailing});

  final String name, icon;
  final void Function() onTap;
  final bool isLastItem;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDefault.padding / 2),
      child: Material(
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppDefault.padding),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                          color: const Color(0xFFFBF0D9),
                          borderRadius: BorderRadius.circular(30)),
                      child: SvgPicture.asset(icon),
                    ),
                    const SizedBox(width: AppDefault.padding),
                    Text(
                      name,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    if (trailing == null)
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(AppIcons.arrow)),
                    if (trailing != null) trailing ?? const SizedBox(),
                  ],
                ),
                if (!isLastItem) const Divider()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
