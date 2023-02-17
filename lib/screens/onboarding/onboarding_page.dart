import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:won_food_app/core/constants/action_button.dart';
import 'package:won_food_app/core/constants/app_colors.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/app_images.dart';
import 'package:won_food_app/core/constants/get_started_button.dart';
import 'package:won_food_app/screens/onboarding/components/onboarding_model.dart';
import 'package:won_food_app/screens/onboarding/components/onboarding_view.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late PageController pageController;

  int _currentPage = 0;

  final List<OnboardingModel> _item = const [
    OnboardingModel(
      title: 'Welcome to the foodes.',
      imageLocation: AppImages.onboarding1,
    ),
    OnboardingModel(
      title: 'We suggest the\nbest food for you.',
      imageLocation: AppImages.onboarding2,
    ),
    OnboardingModel(
      title: 'Ready for looking\ndelicious food?',
      imageLocation: AppImages.onboarding3,
    ),
  ];

  _onNext() {
    pageController.animateToPage(
      _currentPage + 1,
      duration: AppDefault.duration,
      curve: Curves.easeIn,
    );
  }

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
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemBuilder: (context, index) {
                  return OnboardingView(data: _item[index]);
                },
                controller: pageController,
                onPageChanged: (value) {
                  setState(() {
                    _currentPage = value;
                  });
                },
                itemCount: _item.length,
              ),
            ),
            AnimatedOpacity(
                opacity: _currentPage < _item.length - 1 ? 1 : 0,
                duration: AppDefault.duration,
                child: _currentPage < _item.length - 1
                    ? ActionButtons(
                        onNext: _onNext,
                      )
                    : const SizedBox()),
            AnimatedOpacity(
              opacity: _currentPage == _item.length - 1 ? 1 : 0,
              duration: AppDefault.duration,
              child: _currentPage == _item.length - 1
                  ? const GetStartedButton()
                  : const SizedBox(),
            )
          ],
        ),
      ),
    );
  }
}
