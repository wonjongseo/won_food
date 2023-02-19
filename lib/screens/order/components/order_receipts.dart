import 'package:flutter/material.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/screens/order/components/receipt_item.dart';

class OrderReceipts extends StatelessWidget {
  const OrderReceipts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefault.padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ORDER ID',
            style: Theme.of(context)
                .textTheme
                .caption
                ?.copyWith(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: AppDefault.padding),
          const ReceiptItem(name: 'Order ID', data: 'FDS-7850-37676-CDXX'),
          const ReceiptItem(name: 'Order date', data: 'Today, 8.00'),
          const Divider(height: AppDefault.padding * 2),
          Text(
            'ORDER DETAILS',
            style: Theme.of(context)
                .textTheme
                .caption
                ?.copyWith(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: AppDefault.padding),
          const ReceiptItem(name: 'Okonomiyaki', data: 'x  2'),
          const ReceiptItem(name: 'Fresh Tamagyoaki', data: 'x  1'),
          const ReceiptItem(name: 'Sushite', data: 'x  1'),
        ],
      ),
    );
  }
}
