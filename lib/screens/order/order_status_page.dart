import 'package:flutter/material.dart';
import 'package:won_food_app/core/constants/divider_dashed.dart';
import 'package:won_food_app/screens/order/components/order_status_info.dart';
import 'package:won_food_app/screens/order/components/order_status_page_header.dart';
import 'package:won_food_app/screens/order/components/status_order_track_button.dart';
import 'package:won_food_app/screens/order/components/status_resturant_detail_tile.dart';

class OrderStatusPage extends StatelessWidget {
  const OrderStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const OrderStatusPageHeader(),
      body: Column(
        children: const [
          StatusResturantDetailsTile(),
          DividerDashed(color: Colors.grey),
          OrderStatusInfo(),
          Spacer(),
          StatusOrderTrackButton()
        ],
      ),
    );
  }
}
