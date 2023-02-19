import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/instance_manager.dart';
import 'package:won_food_app/core/app_illustrations.dart';
import 'package:won_food_app/core/constants/app_colors.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:get/get.dart';
import 'package:won_food_app/core/constants/app_icons.dart';
import 'package:won_food_app/screens/order/checkout_page.dart';

class ReadyToCheckout extends StatelessWidget {
  const ReadyToCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: AppDefault.margin),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDefault.padding),
          child: Text(
            'READY TO CHECKOUT',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        _ViewAllOrderButton(onTap: () {
          Get.to(() => const CheckoutPage());
        })
      ],
    );
  }
}

class _ViewAllOrderButton extends StatelessWidget {
  const _ViewAllOrderButton({required this.onTap});

  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefault.margin),
      child: Material(
        child: InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: AppDefault.borderRadius,
              border: Border.all(
                width: 0.2,
                color: Colors.grey,
              ),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(AppDefault.radius),
                    bottomLeft: Radius.circular(AppDefault.radius),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(AppDefault.padding),
                    color: AppColors.primary,
                    child: SvgPicture.asset(AppIllustrations.illustration8),
                  ),
                ),
                const SizedBox(width: AppDefault.padding),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'View all order',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '\$17.66',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(AppIcons.arrow),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
