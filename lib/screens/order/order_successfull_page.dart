import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:won_food_app/core/app_illustrations.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/screens/order/order_status_page.dart';

class OrderSuccessfullPage extends StatelessWidget {
  const OrderSuccessfullPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            _IllustrationAndMessage(),
            const Spacer(),
            _BottomActionButtons(),
          ],
        ),
      ),
    );
  }
}

class _BottomActionButtons extends StatelessWidget {
  const _BottomActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefault.padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: (() => Get.back()),
            style: TextButton.styleFrom(foregroundColor: Colors.black87),
            child: const Text(
              'Back to Home',
            ),
          ),
          ElevatedButton(
              onPressed: () => Get.to(() => const OrderStatusPage()),
              style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
              child: const Text('Track your order'))
        ],
      ),
    );
  }
}

class _IllustrationAndMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Yeay! Your order is\non the way',
          style: Theme.of(context)
              .textTheme
              .headline4
              ?.copyWith(color: Colors.black),
        ),
        const SizedBox(height: AppDefault.padding * 2),
        SvgPicture.asset(AppIllustrations.illustration2)
      ],
    );
  }
}
