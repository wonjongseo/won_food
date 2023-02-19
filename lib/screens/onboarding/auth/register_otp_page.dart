import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:won_food_app/core/app_illustrations.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/app_icons.dart';
import 'package:won_food_app/screens/onboarding/auth/components/need_help_button.dart';
import 'package:won_food_app/screens/onboarding/auth/components/otp_fields.dart';
import 'package:won_food_app/screens/onboarding/auth/components/otp_page.dart';

class RegisterOTPPage extends StatelessWidget {
  const RegisterOTPPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(AppIcons.back),
          onPressed: () => Get.back(),
        ),
      ),
      body: Column(
        children: [
          const Spacer(),
          SvgPicture.asset(AppIllustrations.illustration5),
          const _OtpInput(),
          const Spacer(flex: 2),
          const NeedHelpButton(),
          const Spacer(),
        ],
      ),
    );
  }
}

class _OtpInput extends StatelessWidget {
  const _OtpInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefault.padding),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: const OTPFields(),
          ),
          Text(
            'We have sent code verification to your\nmobile phone number **9383.',
            style: Theme.of(context).textTheme.caption,
          ),
          const SizedBox(height: AppDefault.padding),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const SurveyPage()));
              },
              child: const Text('Verfication'),
            ),
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
        ],
      ),
    );
  }
}
