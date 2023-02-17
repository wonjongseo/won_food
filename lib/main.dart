import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:won_food_app/screens/entrypoint/entrypoint_ui.dart';
import 'package:won_food_app/screens/onboarding/auth/change_pass_page.dart';
import 'package:won_food_app/screens/onboarding/auth/components/forgot_pass_page.dart';
import 'package:won_food_app/screens/onboarding/auth/components/login_page.dart';
import 'package:won_food_app/screens/onboarding/auth/components/otp_page.dart';
import 'package:won_food_app/screens/password_changed_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      scrollBehavior: GetPlatform.isDesktop
          ? const MaterialScrollBehavior()
              .copyWith(dragDevices: {PointerDeviceKind.mouse})
          : null,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const EntryPointUI(),
    );
  }
}
