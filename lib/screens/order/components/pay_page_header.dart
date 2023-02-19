import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:won_food_app/core/constants/app_icons.dart';

class PayPageHeader extends StatelessWidget with PreferredSizeWidget {
  const PayPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset(AppIcons.back),
        onPressed: () => Get.back(),
      ),
      title: Text(
        'Checkout orde',
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
