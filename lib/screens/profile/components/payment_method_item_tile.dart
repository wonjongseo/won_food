import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:won_food_app/core/constants/app_colors.dart';
import 'package:won_food_app/core/constants/app_default.dart';

class PaymentMethodItemTile extends StatelessWidget {
  const PaymentMethodItemTile(
      {super.key,
      required this.name,
      required this.fee,
      required this.icon,
      required this.isSelected,
      required this.onTap});

  final String name, fee, icon;
  final bool isSelected;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppDefault.padding, vertical: AppDefault.padding / 2),
      child: Material(
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(AppDefault.padding),
            decoration: BoxDecoration(
                border: Border.all(
                    color: isSelected ? AppColors.primary : Colors.grey,
                    width: isSelected ? 1 : 0),
                borderRadius: AppDefault.borderRadius),
            child: Row(
              children: [
                SvgPicture.asset(icon),
                const SizedBox(width: AppDefault.padding),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: AppDefault.padding / 2),
                    Row(
                      children: [
                        Text(
                          'Fee: ',
                          style: Theme.of(context).textTheme.caption,
                        ),
                        Text(
                          '\$$fee',
                          style: Theme.of(context).textTheme.caption?.copyWith(
                                color: Colors.black,
                              ),
                        )
                      ],
                    )
                  ],
                ),
                const Spacer(),
                isSelected
                    ? const Icon(Icons.check_circle, color: AppColors.primary)
                    : const SizedBox()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
