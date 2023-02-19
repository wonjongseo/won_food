import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/screens/survey/components/next_button.dart';
import 'package:won_food_app/screens/survey/components/submit_button.dart';
import 'package:won_food_app/screens/survey/components/survey_content_view.dart';
import 'package:won_food_app/screens/survey/survey_item_tile.dart';
import 'package:won_food_app/screens/survey/survey_model.dart';

class SurveyPage extends StatefulWidget {
  const SurveyPage({super.key});

  @override
  State<SurveyPage> createState() => _SurveyPageState();
}

class _SurveyPageState extends State<SurveyPage> {
  late PageController pageController;

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemCount: SurveyModel.dummy.length,
              itemBuilder: (context, index) {
                return SurveyContentView(
                  data: SurveyModel.dummy[index],
                  currentIndex: index,
                  totalItems: SurveyModel.dummy.length,
                );
              },
              onPageChanged: (value) {
                _currentPage = value;
                setState(() {});
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppDefault.padding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    pageController.animateToPage(
                      SurveyModel.dummy.length - 1,
                      duration: AppDefault.duration,
                      curve: Curves.easeIn,
                    );
                  },
                  child: const Text('Skip for now'),
                ),
                _currentPage != SurveyModel.dummy.length - 1
                    ? NextButton(
                        pageController: pageController,
                      )
                    : SubmitButton(
                        pageController: pageController,
                      )
              ],
            ),
          )
        ],
      ),
    );
  }
}
