import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/app_icons.dart';
import 'package:won_food_app/screens/profile/components/add_pin_point_button.dart';

class AddNewAddressPage extends StatelessWidget {
  const AddNewAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const AddNewAddressHeader(),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(AppDefault.padding),
              child: Text(
                "ADD ADDRESS",
                style: Theme.of(context)
                    .textTheme
                    .caption
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDefault.padding,
              vertical: AppDefault.padding / 2,
            ),
            child: Column(
              children: const [
                TextField(
                  decoration: InputDecoration(labelText: 'Name'),
                ),
                SizedBox(height: AppDefault.padding),
                TextField(
                  decoration: InputDecoration(labelText: 'Address'),
                ),
                SizedBox(height: AppDefault.padding),
                AddPinPointButton(),
                TextField(
                  decoration: InputDecoration(labelText: 'Phone'),
                ),
              ],
            ),
          ),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(AppDefault.padding),
              child: ElevatedButton(
                child: const Text('Done'),
                onPressed: () {
                  Get.back();
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AddNewAddressHeader extends StatelessWidget with PreferredSizeWidget {
  const AddNewAddressHeader({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: SvgPicture.asset(AppIcons.back),
      ),
      title: Text(
        'Add new address',
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
