import 'package:flutter/material.dart';
import 'package:won_food_app/core/constants/app_default.dart';

class ReceiptItem extends StatelessWidget {
  const ReceiptItem({
    Key? key,
    required this.name,
    this.itemDescription,
    required this.data,
  }) : super(key: key);

  final String name;
  final String? itemDescription;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDefault.padding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name),
          if (itemDescription != null) Text(itemDescription!),
          const Spacer(),
          Text(data)
        ],
      ),
    );
  }
}
