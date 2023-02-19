import 'package:flutter/material.dart';

class DividerDashed extends StatelessWidget {
  const DividerDashed({super.key, this.color = Colors.black, this.height = 1});

  final Color color;
  final double height;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 3.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
              dashCount,
              (index) => SizedBox(
                    width: dashWidth,
                    height: dashHeight,
                    child:
                        DecoratedBox(decoration: BoxDecoration(color: color)),
                  )),
        );
      },
    );
  }
}
