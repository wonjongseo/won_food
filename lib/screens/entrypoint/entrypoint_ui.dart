import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:won_food_app/core/constants/app_icons.dart';
import 'package:won_food_app/screens/foodstyle/foodstyle_page.dart';
import 'package:won_food_app/screens/home/home_page.dart';
import 'package:won_food_app/screens/order/order_page.dart';
import 'package:won_food_app/screens/profile/profile_page.dart';

class EntryPointUI extends StatefulWidget {
  const EntryPointUI({super.key});

  @override
  State<EntryPointUI> createState() => _EntryPointUIState();
}

class _EntryPointUIState extends State<EntryPointUI> {
  int _currentPage = 0;

  _onMenuChanged(int v) {
    _currentPage = v;
    setState(() {});
  }

  final List<Widget> _screen = const [
    HomePage(),
    FoodStylePage(),
    OrderPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageTransitionSwitcher(
        transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
          return SharedAxisTransition(
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            transitionType: SharedAxisTransitionType.horizontal,
            child: child,
          );
        },
        child: _screen[_currentPage],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onMenuChanged,
        items: [
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  _currentPage == 0 ? AppIcons.homeBold : AppIcons.home,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  _currentPage == 1
                      ? AppIcons.foodStyleBold
                      : AppIcons.foodStyle,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  _currentPage == 2 ? AppIcons.orderBold : AppIcons.order,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  _currentPage == 3 ? AppIcons.profileBold : AppIcons.profile,
                ),
              ),
              label: '')
        ],
      ),
    );
  }
}
