import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/data/lists.dart';
import 'package:won_food_app/screens/home/components/item_tile_horizontal.dart';

class HomeSuggestionSection extends StatefulWidget {
  const HomeSuggestionSection(
      {super.key,
      required this.selectCategoryIndex,
      required this.changeCategory});
  final int selectCategoryIndex;
  final void Function(int) changeCategory;
  @override
  State<HomeSuggestionSection> createState() => _HomeSuggestionSectionState();
}

class _HomeSuggestionSectionState extends State<HomeSuggestionSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(AppDefault.padding),
          child: Row(
            children: [
              Text(
                'Suggestions for you ',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                '(Japanese Food)',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.grey),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(
            itemTileHorizontals[widget.selectCategoryIndex]!.length,
            (index) => itemTileHorizontals[widget.selectCategoryIndex]![index],
          )),
        )
      ],
    );
  }
}
