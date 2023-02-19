import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/app_icons.dart';
import 'package:won_food_app/screens/onboarding/auth/components/login_page.dart';
import 'package:won_food_app/screens/onboarding/auth/components/sign_in_buttons.dart';
import 'package:won_food_app/screens/onboarding/auth/register_otp_page.dart';

class SingUpForm extends StatelessWidget {
  const SingUpForm(
      {super.key,
      required this.nameController,
      required this.emailController,
      required this.phoneController,
      required this.passwordController});
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final TextEditingController passwordController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefault.padding),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Full Name',
                suffixIcon: SvgPicture.asset(AppIcons.data),
                suffixIconConstraints: const BoxConstraints(maxHeight: 24)),
          ),
          const SizedBox(height: AppDefault.margin),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                labelText: 'Email',
                suffixIcon: SvgPicture.asset(AppIcons.email),
                suffixIconConstraints: const BoxConstraints(maxHeight: 24)),
          ),
          const SizedBox(height: AppDefault.margin),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: 'Phone',
                hintText: 'Enter Phone number',
                suffixIcon: SvgPicture.asset(AppIcons.phone),
                suffixIconConstraints: const BoxConstraints(maxHeight: 24)),
          ),
          const SizedBox(height: AppDefault.margin),
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: SvgPicture.asset(AppIcons.password),
                suffixIconConstraints: const BoxConstraints(maxHeight: 24),
                hintText: 'Enter Pasword'),
            keyboardType: TextInputType.visiblePassword,
          ),
          const SizedBox(height: AppDefault.margin),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                print('asdasd');
                // Get.to(() => RegisterOTPPage());
              },
              child: Text('Sign Up'),
            ),
          ),
          const SizedBox(height: AppDefault.padding),
          SignUpWithFacebookButton(onSignupWithFacebook: () {}),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Already have an account?'),
              TextButton(
                  onPressed: () {
                    Get.off(LoginPage());
                  },
                  child: Text(
                    'Login',
                    style: Theme.of(context).textTheme.button?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
