import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:won_food_app/core/constants/app_icons.dart';
import 'package:won_food_app/screens/order/components/checkout_item_tile.dart';
import 'package:won_food_app/screens/order/components/checkout_page_header.dart';
import 'package:won_food_app/screens/order/components/toal_order_bottom_bar.dart';
import 'package:won_food_app/screens/order/pay_order_page.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CheckoutPageHeader(),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return const CheckoutItemTile();
                },
                separatorBuilder: (context, index) => const Divider(),
                itemCount: 4),
          ),
          TotalOrderBotbomBar(onTap: () {
            Get.to(() => PayOrderPage());
          })
        ],
      ),
    );
  }
}
