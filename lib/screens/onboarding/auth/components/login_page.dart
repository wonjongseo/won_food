import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:won_food_app/admin/admin_page.dart';
import 'package:won_food_app/common.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/app_icons.dart';
import 'package:won_food_app/screens/entrypoint/entrypoint_ui.dart';
import 'package:won_food_app/screens/onboarding/auth/components/forget_password_text.dart';
import 'package:won_food_app/screens/onboarding/auth/components/login_form.dart';
import 'package:won_food_app/screens/onboarding/auth/components/sign_in_buttons.dart';

import 'dont_have_account.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            const HeaderAlign(text: "Login to\nfind the best food."),
            const Spacer(),
            LoginForm(
              emailController: emailController,
              passwordController: passwordController,
            ),
            const ForgetPasswordText(),
            SignInButton(
              onSignIn: () {
                // TODO
                // If User is ADMIN

                Get.to(() => AdminPage());
                // Get.to(() => EntryPointUI());
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
