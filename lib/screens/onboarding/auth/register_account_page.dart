import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:won_food_app/common.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/screens/onboarding/auth/components/sign_up_form.dart';

class RegisterAccountPage extends StatelessWidget {
  RegisterAccountPage({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            const HeaderAlign(text: 'Sign Up\nNew Account'),
            const Spacer(),
            SingUpForm(
              nameController: nameController,
              emailController: emailController,
              phoneController: phoneController,
              passwordController: passwordController,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
