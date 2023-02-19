import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:won_food_app/core/constants/app_colors.dart';
import 'package:won_food_app/core/constants/app_default.dart';

class TotalOrderBotbomBar extends StatelessWidget {
  const TotalOrderBotbomBar({super.key, required this.onTap});

  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDefault.padding),
      decoration: BoxDecoration(
        boxShadow: AppDefault.boxShadow,
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Total Order',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.grey),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(AppDefault.padding / 2),
                decoration:
                    BoxDecoration(color: AppColors.primary.withOpacity(0.3)),
                child: const Text(
                  'Free Delivery',
                ),
              ),
              const SizedBox(width: AppDefault.padding),
              Text(
                '\$17.66',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(height: AppDefault.margin),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: AppDefault.padding),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onTap,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Place Order',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: AppDefault.padding / 2),
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: AppDefault.borderRadius),
                      child: Text(
                        '4',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
