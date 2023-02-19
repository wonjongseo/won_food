import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:won_food_app/main.dart';
import 'package:won_food_app/screens/onboarding/auth/register_account_page.dart';

class DontHaveAccountRow extends StatelessWidget {
  const DontHaveAccountRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Don\t have an account?',
        ),
        TextButton(
            onPressed: () {
              Get.to(() => RegisterAccountPage());
            },
            child: Text(
              'SignUp',
              style: Theme.of(context)
                  .textTheme
                  .button
                  ?.copyWith(fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
