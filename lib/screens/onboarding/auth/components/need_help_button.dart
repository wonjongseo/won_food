import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:won_food_app/core/constants/app_default.dart';

class NeedHelpButton extends StatelessWidget {
  const NeedHelpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppDefault.padding / 2),
      child: TextButton(
          onPressed: () {},
          child: Text(
            'Need Help?',
            style: Theme.of(context)
                .textTheme
                .button
                ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
          )),
    );
  }
}
