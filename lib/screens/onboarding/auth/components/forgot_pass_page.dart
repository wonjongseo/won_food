import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/screens/onboarding/auth/components/forgot_password_form.dart';

class ForgotPassPage extends StatelessWidget {
  const ForgotPassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(AppDefault.padding),
                child: Text(
                  'Forgot\nPassword?',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
            const Spacer(flex: 1),
            const ForgotPasswordForm(),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
