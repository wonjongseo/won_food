import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:won_food_app/core/app_illustrations.dart';
import 'package:won_food_app/core/constants/app_default.dart';

class User {
  final String username;
  final String nickname;

  const User({required this.username, required this.nickname});
}

class UserData extends StatelessWidget {
  UserData({super.key});

  User user = User(username: 'Won jongseo', nickname: 'Supreme Eatter');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefault.padding),
      child: Row(
        children: [
          SvgPicture.asset(AppIllustrations.illustration9),
          const SizedBox(width: AppDefault.padding),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.username,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: AppDefault.padding / 2),
              Text(
                user.nickname,
                style: Theme.of(context).textTheme.caption,
              )
            ],
          )
        ],
      ),
    );
  }
}
