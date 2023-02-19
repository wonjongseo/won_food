import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:won_food_app/core/constants/network_image_with_loader.dart';

class BannerFoodStylePage extends StatelessWidget {
  const BannerFoodStylePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      width: MediaQuery.of(context).size.width,
      child: const NetworkImageWithLoader(
        'https://i.imgur.com/a9GHqCw.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
