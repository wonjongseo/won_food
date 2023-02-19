import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TitleWithSub extends StatelessWidget {
  const TitleWithSub({super.key, required this.title, required this.sub});

  final String title, sub;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$title ',
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          '($sub) ',
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
