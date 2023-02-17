import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/app_icons.dart';
import 'package:won_food_app/screens/onboarding/auth/components/login_page.dart';
import 'package:won_food_app/screens/onboarding/auth/components/otp_page.dart';

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefault.padding),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
              suffixIcon: SvgPicture.asset(AppIcons.email),
              suffixIconConstraints: const BoxConstraints(maxHeight: 24),
            ),
          ),

          const SizedBox(height: 16),
          Text(
            'Please provide your email to reset your password, please don\'t share any data to other people.',
            style: Theme.of(context).textTheme.caption,
          ),
          const SizedBox(height: 16),

          /// Reset Password
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CodeVerificationPage()));
              },
              child: const Text('Reset Password'),
            ),
          ),

          const SizedBox(height: 16),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Remember now?'),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Login Here',
                  style: Theme.of(context).textTheme.button?.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
