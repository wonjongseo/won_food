import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:won_food_app/core/constants/app_colors.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/app_icons.dart';
import 'package:won_food_app/screens/profile/add_new_address_page.dart';
import 'package:won_food_app/screens/profile/components/profile_list_tile_item.dart';
import 'package:won_food_app/screens/profile/payment_method_page.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({super.key});

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  bool isSwitchOn = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDefault.padding,
              vertical: AppDefault.padding / 2,
            ),
            child: Text(
              'Personal Information',
              style: Theme.of(context)
                  .textTheme
                  .caption
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        ProfileListTileItem(
          name: 'Location',
          icon: AppIcons.pin2,
          onTap: () {
            Get.to(() => AddNewAddressPage());
          },
        ),
        ProfileListTileItem(
          name: 'Payment',
          icon: AppIcons.payments,
          onTap: () {
            Get.to(() => PaymentMethodPage());
          },
        ),
        ProfileListTileItem(
          name: 'Information',
          icon: AppIcons.information,
          onTap: () {},
        ),
        ProfileListTileItem(
          name: 'Security',
          icon: AppIcons.password,
          onTap: () {},
          isLastItem: true,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(AppDefault.padding),
            child: Text(
              'Notification',
              style: Theme.of(context)
                  .textTheme
                  .caption
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        ProfileListTileItem(
          name: 'Discount Notifications',
          icon: AppIcons.discount,
          onTap: () {},
          isLastItem: true,
          trailing: CupertinoSwitch(
            value: isSwitchOn,
            onChanged: (v) {
              isSwitchOn = !isSwitchOn;
              setState(() {});
            },
            activeColor: AppColors.primary,
          ),
        ),
      ],
    );
  }
}
