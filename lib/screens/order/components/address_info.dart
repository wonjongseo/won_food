import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/app_icons.dart';

class AddressInfo extends StatelessWidget {
  const AddressInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: AppDefault.padding / 2,
                horizontal: AppDefault.padding),
            child: Text(
              'SELECT ADDRESS',
              style: Theme.of(context).textTheme.caption,
            ),
          ),
        ),
        Material(
          child: InkWell(
            onTap: () {},
            child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: AppDefault.padding / 2,
                    horizontal: AppDefault.padding),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Farhan Fuzzan',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '4536 Northwest Boulevard. NJ',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: Colors.black),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: AppDefault.borderRadius),
                      padding: const EdgeInsets.all(4),
                      child: Text(
                        'Home',
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(AppIcons.kebabMenu))
                  ],
                )),
          ),
        ),
      ],
    );
  }
}
