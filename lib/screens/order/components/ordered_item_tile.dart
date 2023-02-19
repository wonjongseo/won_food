import 'package:flutter/material.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/network_image_with_loader.dart';

class OrderedItemTile extends StatelessWidget {
  const OrderedItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefault.padding),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.25,
            child: AspectRatio(
              aspectRatio: AppDefault.aspectRatio,
              child: NetworkImageWithLoader('https://i.imgur.com/whHvw7J.png'),
            ),
          ),
          const SizedBox(width: AppDefault.padding),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OrderedItemQuantity(itemName: 'Okonomiyaki', quantity: 1),
              OrderedItemQuantity(itemName: 'Fresh Tamagoynaki', quantity: 2),
              SizedBox(height: AppDefault.padding / 2),
              _ResturantDetails()
            ],
          )
        ],
      ),
    );
  }
}

class OrderedItemQuantity extends StatelessWidget {
  const OrderedItemQuantity({
    Key? key,
    required this.itemName,
    required this.quantity,
  }) : super(key: key);

  final String itemName;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$quantity       x      ',
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          itemName,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class _ResturantDetails extends StatelessWidget {
  const _ResturantDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          width: 24,
          height: 24,
          child: NetworkImageWithLoader('https://i.imgur.com/gnvpGnJ.png'),
        ),
        const SizedBox(width: AppDefault.padding / 2),
        Text(
          'Totsuki Elite',
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 32),
        const Text('\$16.00')
      ],
    );
  }
}
