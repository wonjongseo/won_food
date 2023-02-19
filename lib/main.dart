import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:won_food_app/admin/admin_page.dart';
import 'package:won_food_app/screens/entrypoint/entrypoint_ui.dart';
import 'package:won_food_app/screens/onboarding/auth/components/login_page.dart';
import 'package:won_food_app/theme/app_theme.dart';

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
        theme: AppThemes.light,
        home: AdminPage());
  }
}
