import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/screens/onboarding/components/onboarding_model.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key, required this.data});

  final OnboardingModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          data.title,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: Colors.black),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.all(AppDefault.padding),
          child: Center(child: Image.asset(data.imageLocation)),
        )
      ],
    );
  }
}
