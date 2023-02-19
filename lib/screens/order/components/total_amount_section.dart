import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/app_icons.dart';
import 'package:won_food_app/screens/profile/payment_method_page.dart';

class TotalAmountSection extends StatelessWidget {
  const TotalAmountSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () => Get.to(() => PaymentMethodPage()),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDefault.padding),
          child: Row(children: [
            SvgPicture.asset(AppIcons.cash),
            const SizedBox(width: AppDefault.padding),
            Text(
              'Pay Cash',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Text(
              'Fee: ',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.grey),
            ),
            Text(
              '\$0.00',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(AppIcons.arrow),
            )
          ]),
        ),
      ),
    );
  }
}
