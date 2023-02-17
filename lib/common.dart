import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:won_food_app/core/constants/app_default.dart';

class HeaderAlign extends StatelessWidget {
  const HeaderAlign({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(AppDefault.padding),
        child: Text(text, style: Theme.of(context).textTheme.headline5),
      ),
    );
  }
}
