import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:won_food_app/screens/order/components/order_page_header.dart';
import 'package:won_food_app/screens/order/components/ready_to_checkout.dart';

import 'components/orders_on_the_way.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        OrderPageHeader(),
        ReadyToCheckout(),
        OrdersOnTheWay(),
      ],
    );
  }
}
