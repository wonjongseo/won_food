import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:won_food_app/screens/profile/components/person_infomation.dart';
import 'package:won_food_app/screens/profile/components/profile_page_header.dart';
import 'package:won_food_app/screens/profile/components/use_data.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          ProfilePageHeader(),
          UserData(),
          PersonalInformation(),
        ],
      ),
    );
  }
}
