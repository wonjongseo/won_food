import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:won_food_app/core/app_illustrations.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/screens/entrypoint/entrypoint_ui.dart';

class RegisterSuccessfullPage extends StatelessWidget {
  const RegisterSuccessfullPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Yeay! Ready to eat\neverything?',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(color: Colors.black),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(AppDefault.padding / 2),
                child: Row(
                  children: [
                    const SizedBox(width: 50),
                    Expanded(
                        child: SvgPicture.asset(AppIllustrations.illustration3))
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => const EntryPointUI());
                    },
                    style:
                        ElevatedButton.styleFrom(shape: const StadiumBorder()),
                    child: const Text(
                      'Find food neay you',
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
