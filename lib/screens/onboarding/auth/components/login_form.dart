import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/app_icons.dart';

class LoginForm extends StatelessWidget {
  const LoginForm(
      {super.key,
      required this.emailController,
      required this.passwordController});
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefault.padding),
      child: Column(
        children: [
          TextField(
            controller: emailController,
            decoration: InputDecoration(
                labelText: 'Email',
                suffixIcon: SvgPicture.asset(AppIcons.email),
                suffixIconConstraints: const BoxConstraints(maxHeight: 24)),
          ),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: SvgPicture.asset(AppIcons.password),
                suffixIconConstraints: const BoxConstraints(maxHeight: 24)),
          )
        ],
      ),
    );
  }
}
