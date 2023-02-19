import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/screens/order/components/ordered_item_tile.dart';

class OrdersOnTheWay extends StatelessWidget {
  const OrdersOnTheWay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: AppDefault.padding),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDefault.padding),
          child: Text(
            'ORDER ON THE WAY',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => const OrderedItemTile(),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: 4)
      ],
    );
  }
}
