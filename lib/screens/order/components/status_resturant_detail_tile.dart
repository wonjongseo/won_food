import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/app_icons.dart';
import 'package:won_food_app/core/constants/network_image_with_loader.dart';

class StatusResturantDetailsTile extends StatelessWidget {
  const StatusResturantDetailsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefault.padding),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.15,
            child: const AspectRatio(
              aspectRatio: 1 / 1,
              child: NetworkImageWithLoader('https://i.imgur.com/iaignrz.png'),
            ),
          ),
          const SizedBox(width: AppDefault.padding),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ORDER FROM',
                style: Theme.of(context)
                    .textTheme
                    .caption
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                'Totsuki Elite',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(AppIcons.call),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(AppIcons.chat),
              )
            ],
          )
        ],
      ),
    );
  }
}
