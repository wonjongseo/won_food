import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:won_food_app/core/constants/app_icons.dart';

class CheckoutPageHeader extends StatelessWidget with PreferredSizeWidget {
  const CheckoutPageHeader({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset(AppIcons.back),
        onPressed: () => Get.back(),
      ),
      title: Text(
        'Checkout order',
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: SvgPicture.asset(AppIcons.add2))
      ],
    );
  }
}
