import 'package:flutter/material.dart';
import 'package:won_food_app/screens/home/components/category_section.dart';
import 'package:won_food_app/screens/home/components/home_greeting.dart';
import 'package:won_food_app/screens/home/components/home_header.dart';
import 'package:won_food_app/screens/home/components/home_suggestion_section.dart';
import 'package:won_food_app/screens/home/components/nearby_resturants.dart';
import 'package:won_food_app/screens/home/components/search_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectCategoryIndex = 0;
  void changeCategory(int index) {
    setState(() {
      selectCategoryIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeHeader(),
          const HomeGreetings(),
          SearchBox(),
          CategorySelection(
            selectCategoryIndex: selectCategoryIndex,
            changeCategory: changeCategory,
          ),
          HomeSuggestionSection(
            selectCategoryIndex: selectCategoryIndex,
            changeCategory: changeCategory,
          ),
          const SizedBox(height: 16),
          const NearbyResturants(),
          HomeSuggestionSection(
            selectCategoryIndex: selectCategoryIndex,
            changeCategory: changeCategory,
          ),
          const SizedBox(height: 16),
        ],
      ),
    ));
  }
}
