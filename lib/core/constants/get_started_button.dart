import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/app_icons.dart';
import 'package:won_food_app/screens/onboarding/auth/components/login_form.dart';
import 'package:won_food_app/screens/onboarding/auth/components/login_page.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ));
          },
          child: const Text('GET START'),
          style: ElevatedButton.styleFrom(
              primary: Colors.black,
              padding: const EdgeInsets.all(AppDefault.padding),
              onPrimary: Colors.white),
        ),
      ),
    );
  }
}
