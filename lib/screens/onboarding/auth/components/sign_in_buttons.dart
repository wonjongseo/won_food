import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/app_icons.dart';

class SignInButton extends StatelessWidget {
  const SignInButton(
      {super.key, required this.onSignIn, required this.onSignupWithFacebook});

  final void Function() onSignIn;
  final void Function() onSignupWithFacebook;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDefault.padding),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: onSignIn, child: const Text('Sign In')),
          ),
          const SizedBox(height: AppDefault.margin),
          SignUpWithFacebookButton(onSignupWithFacebook: onSignupWithFacebook)
        ],
      ),
    );
  }
}

class SignUpWithFacebookButton extends StatelessWidget {
  const SignUpWithFacebookButton(
      {super.key, required this.onSignupWithFacebook});
  final void Function() onSignupWithFacebook;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
          onPressed: onSignupWithFacebook,
          child: Row(
            children: [
              SvgPicture.asset(AppIcons.facebook, height: 18),
              const SizedBox(width: AppDefault.margin / 2),
              const Text('Sign up with Facebook')
            ],
          )),
    );
  }
}
