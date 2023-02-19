import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/screens/onboarding/auth/register_successfull_page.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key, required this.pageController});

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      child: ElevatedButton(
        onPressed: () => Get.to(() => RegisterSuccessfullPage()),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
        ),
        child: const Text('Submit'),
      ),
    );
  }
}
