import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/app_icons.dart';

class AddPinPointButton extends StatelessWidget {
  const AddPinPointButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDefault.padding),
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(AppDefault.padding),
          decoration: BoxDecoration(
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
                'Add pin point',
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
