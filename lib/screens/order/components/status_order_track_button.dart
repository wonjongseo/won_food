import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/app_icons.dart';

class StatusOrderTrackButton extends StatelessWidget {
  const StatusOrderTrackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefault.padding),
      child: InkWell(
        onTap: () {
          print('asdasd');
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(AppDefault.margin),
          decoration: BoxDecoration(
              // color: AppColors.primary.withOpacity(0.3),
              borderRadius: AppDefault.borderRadius,
              gradient: const LinearGradient(colors: [
                Color(0xFFFBF0D9),
                Color(0xFFFCE4AF),
              ])),
          child: Row(
            children: [
              SvgPicture.asset(AppIcons.pin3),
              const SizedBox(width: AppDefault.padding),
              Text(
                'Order Tracking',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(AppIcons.arrow),
              )
            ],
          ),
        ),
      ),
    );
  }
}
