import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:won_food_app/common.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/app_icons.dart';
import 'package:won_food_app/screens/password_changed_page.dart';

class ChangePassPage extends StatelessWidget {
  const ChangePassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            const HeaderAlign(
              text: 'Change\nNew Password',
            ),
            const Spacer(),
            ChangePasswordFields(),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}

class ChangePasswordFields extends StatefulWidget {
  const ChangePasswordFields({super.key});

  @override
  State<ChangePasswordFields> createState() => _ChangePasswordFieldsState();
}

class _ChangePasswordFieldsState extends State<ChangePasswordFields> {
  bool isNewPasswordHide = true;
  bool isConfirmPasswordHide = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefault.padding),
      child: Column(
        children: [
          TextFormField(
            obscureText: isNewPasswordHide,
            decoration: InputDecoration(
                labelText: 'NEW PASSWORD',
                suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        isNewPasswordHide = !isNewPasswordHide;
                      });
                    },
                    child: isNewPasswordHide
                        ? SvgPicture.asset(AppIcons.unhide)
                        : SvgPicture.asset(AppIcons.hide)),
                suffixIconConstraints: const BoxConstraints(maxHeight: 24)),
          ),
          const SizedBox(height: AppDefault.margin),
          TextFormField(
            obscureText: isConfirmPasswordHide,
            decoration: InputDecoration(
                labelText: 'CONFIRM PASSWORD',
                suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        isConfirmPasswordHide = !isConfirmPasswordHide;
                      });
                    },
                    child: isConfirmPasswordHide
                        ? SvgPicture.asset(AppIcons.unhide)
                        : SvgPicture.asset(AppIcons.hide)),
                suffixIconConstraints: const BoxConstraints(maxHeight: 24)),
          ),
          const SizedBox(height: AppDefault.margin),
          Text(
            'Please provide your email to reset your password, please don’t share any data to other people.',
            style: Theme.of(context).textTheme.caption,
          ),
          const SizedBox(height: AppDefault.margin * 2),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PasswordChangedPage()));
              },
              child: const Text('Change Password'),
            ),
          ),
        ],
      ),
    );
  }
}
