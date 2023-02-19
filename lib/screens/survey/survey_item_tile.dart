import 'package:flutter/material.dart';
import 'package:won_food_app/core/constants/app_colors.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/network_image_with_loader.dart';
import 'package:won_food_app/screens/survey/survey_model.dart';

class SurveyItemTile extends StatelessWidget {
  const SurveyItemTile({super.key, required this.data, required this.onTap});

  final SurveyItem data;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDefault.padding / 2),
      child: Material(
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(AppDefault.padding),
            decoration: BoxDecoration(
                border: Border.all(
                    width: data.isSelected ? 1 : 0.2,
                    color: data.isSelected ? AppColors.primary : Colors.grey)),
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.15,
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: NetworkImageWithLoader(data.imageURL),
                  ),
                ),
                const SizedBox(width: AppDefault.padding),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.name,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const SizedBox(height: AppDefault.padding / 2),
                    Text(
                      data.description,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
                const Spacer(),
                if (data.isSelected)
                  const Icon(
                    Icons.check_circle,
                    color: AppColors.primary,
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
