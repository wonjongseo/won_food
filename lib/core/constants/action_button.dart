import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:won_food_app/core/constants/app_default.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key, required this.onNext});
  final void Function() onNext;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.all(AppDefault.padding * 2),
        child: TextButton(
          onPressed: onNext,
          child: Text('Submit',
              style: Theme.of(context)
                  .textTheme
                  .button
                  ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
