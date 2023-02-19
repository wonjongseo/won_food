import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:won_food_app/screens/onboarding/auth/components/forgot_pass_page.dart';

class ForgetPasswordText extends StatelessWidget {
  const ForgetPasswordText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: TextButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ForgotPassPage(),
                ));
          },
          child: Text(
            'Forget Passowrd?',
            style: Theme.of(context)
                .textTheme
                .button!
                .copyWith(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
