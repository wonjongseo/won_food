import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:won_food_app/core/constants/app_colors.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/app_icons.dart';
import 'package:won_food_app/core/constants/divider_dashed.dart';
import 'package:won_food_app/core/constants/network_image_with_loader.dart';
import 'package:won_food_app/screens/order/components/address_info.dart';
import 'package:won_food_app/screens/order/components/coupon_banner.dart';
import 'package:won_food_app/screens/order/components/order_receipts.dart';
import 'package:won_food_app/screens/order/components/pay_page_header.dart';
import 'package:won_food_app/screens/order/components/toal_order_bottom_bar.dart';
import 'package:won_food_app/screens/order/components/total_amount_section.dart';
import 'package:won_food_app/screens/order/order_successfull_page.dart';
import 'package:won_food_app/screens/profile/payment_method_page.dart';

class PayOrderPage extends StatelessWidget {
  const PayOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PayPageHeader(),
      body: Column(
        children: [
          Expanded(
              child: ListView(
            children: [
              const AddressInfo(),
              const CouponBanner(),
              const TotalAmountSection(),
              DividerDashed(color: Colors.grey.shade400),
              const OrderReceipts(),
            ],
          )),
          TotalOrderBotbomBar(
              onTap: () => Get.to(() => const OrderSuccessfullPage()))
        ],
      ),
    );
  }
}
