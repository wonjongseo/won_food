import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:won_food_app/core/constants/app_icons.dart';

class OrderStatusPageHeader extends StatelessWidget with PreferredSizeWidget {
  const OrderStatusPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset(AppIcons.back),
        onPressed: () => Get.back(),
      ),
      title: Text(
        'Order Status',
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
