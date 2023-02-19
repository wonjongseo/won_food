import 'package:flutter/material.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/screens/survey/survey_item_tile.dart';
import 'package:won_food_app/screens/survey/survey_model.dart';

class SurveyContentView extends StatefulWidget {
  const SurveyContentView(
      {super.key,
      required this.data,
      required this.currentIndex,
      required this.totalItems});
  final SurveyModel data;
  final int currentIndex;
  final int totalItems;

  @override
  State<SurveyContentView> createState() => _SurveyContentViewState();
}

class _SurveyContentViewState extends State<SurveyContentView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppDefault.padding),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  widget.data.surveyTitle,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: Colors.black),
                ),
                const Spacer(),
                Text(
                  '${widget.currentIndex + 1}',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  '/${widget.totalItems}',
                  style: Theme.of(context).textTheme.headline5,
                )
              ],
            ),
            const Spacer(),
            ...List.generate(
                widget.data.items.length,
                (index) => SurveyItemTile(
                      data: widget.data.items[index],
                      onTap: () {
                        widget.data.items[index].isSelected =
                            !widget.data.items[index].isSelected;
                        setState(() {});
                      },
                    )),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
