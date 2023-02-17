import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/app_icons.dart';
import 'package:won_food_app/screens/entrypoint/entrypoint_ui.dart';
import 'package:won_food_app/screens/onboarding/auth/components/forget_password_text.dart';
import 'package:won_food_app/screens/onboarding/auth/components/login_form.dart';
import 'package:won_food_app/screens/onboarding/auth/components/sign_in_buttons.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                  "Login to\nfind the best food.",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
            const Spacer(),
            const LoginForm(),
            const ForgetPasswordText(),
            SignInButton(
              onSignIn: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EntryPointUI(),
                    ));
              },
              onSignupWithFacebook: () {},
            ),
            const SizedBox(height: 8),
            const DontHaveAccountRow(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class DontHaveAccountRow extends StatelessWidget {
  const DontHaveAccountRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
