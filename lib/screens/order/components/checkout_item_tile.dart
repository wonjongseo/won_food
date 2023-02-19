import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/app_icons.dart';
import 'package:won_food_app/core/constants/network_image_with_loader.dart';
import 'package:won_food_app/screens/order/components/ordered_item_tile.dart';

class CheckoutItemTile extends StatelessWidget {
  const CheckoutItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefault.padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
            child: AspectRatio(
              aspectRatio: AppDefault.aspectRatio,
              child: const NetworkImageWithLoader(
                'https://i.imgur.com/FKz0Dy0.png',
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              OrderedItemQuantity(itemName: 'Freash Tamagoyoaki', quantity: 2),
              _ResturantDetails(),
              ItemCounter(),
            ],
          ),
          Text(
            '\$12.00',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.grey,
                ),
          )
        ],
      ),
    );
  }
}

class _ResturantDetails extends StatelessWidget {
  const _ResturantDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
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
            style: Theme.of(context).textTheme.caption?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
          ),
          const SizedBox(width: 32),
          Row(
            children: [
              SvgPicture.asset(AppIcons.time),
              const SizedBox(width: 5),
              const Text('10 min'),
            ],
          )
        ],
      ),
    );
  }
}

class ItemCounter extends StatelessWidget {
  const ItemCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppIcons.minus),
        ),
        const SizedBox(width: AppDefault.padding / 2),
        const Text(
          ' 2 ',
          style: TextStyle(
            color: Colors.transparent,
            decoration: TextDecoration.underline,
            decorationColor: Colors.black,
            decorationThickness: 1,
            shadows: [Shadow(color: Colors.black, offset: Offset(0, -4))],
          ),
        ),
        const SizedBox(width: AppDefault.padding / 2),
        IconButton(onPressed: () {}, icon: SvgPicture.asset(AppIcons.add)),
        const SizedBox(width: AppDefault.padding),
        IconButton(onPressed: () {}, icon: SvgPicture.asset(AppIcons.delete)),
      ],
    );
  }
}
