import 'package:flutter/material.dart';
import 'package:won_food_app/common.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/screens/onboarding/auth/change_pass_page.dart';
import 'package:won_food_app/screens/onboarding/auth/components/need_help_button.dart';
import 'package:won_food_app/screens/onboarding/auth/components/otp_fields.dart';

class CodeVerificationPage extends StatelessWidget {
  const CodeVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Spacer(),
            HeaderAlign(text: 'Code\nVerification'),
            Spacer(),
            OtpInput(),
            Spacer(flex: 5),
            NeedHelpButton(),
          ],
        ),
      ),
    );
  }
}

class OtpInput extends StatelessWidget {
  const OtpInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefault.padding),
      child: Column(children: [
        const OTPFields(),
        const SizedBox(height: AppDefault.padding),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChangePassPage()));
              },
              child: const Text('Verfication')),
        ),
        const SizedBox(height: AppDefault.padding),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Didn\'t recieve the code?'),
            TextButton(
              onPressed: () {},
              child: Text(
                'Re-send (32)',
                style: Theme.of(context).textTheme.button?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
            )
          ],
        )
      ]),
    );
  }
}
