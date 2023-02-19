import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:won_food_app/core/constants/app_default.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key, required this.pageController});

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      child: ElevatedButton(
        onPressed: () {
          pageController.nextPage(
              duration: AppDefault.duration, curve: Curves.easeIn);
        },
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
        ),
        child: const Text('Next'),
      ),
    );
  }
}
