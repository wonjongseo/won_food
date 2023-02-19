import 'package:flutter/material.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/network_image_with_loader.dart';

class CouponBanner extends StatelessWidget {
  const CouponBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: const Padding(
        padding: EdgeInsets.all(AppDefault.padding),
        child: NetworkImageWithLoader(
          'https://i.imgur.com/uG0koa6.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
