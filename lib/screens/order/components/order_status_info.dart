import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:won_food_app/core/constants/app_colors.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/app_icons.dart';

class OrderStatusInfo extends StatelessWidget {
  const OrderStatusInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: AppDefault.padding),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppDefault.padding,
                vertical: AppDefault.padding / 2),
            child: Text(
              'ADD ADDRESS',
              style: Theme.of(context)
                  .textTheme
                  .caption
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const OrderStatusInfoTile(
          name: 'ORDER',
          message: 'Order Recieved',
          time: '7.00',
          isCompleted: true,
        ),
        const OrderStatusInfoTile(
          name: 'COOKING',
          message: 'Your food is under cooking!',
          time: '7.03',
          isCompleted: true,
        ),
        const OrderStatusInfoTile(
          name: 'READY',
          message: 'Your food is ready',
          time: '7.10',
          isCompleted: false,
        ),
        const OrderStatusInfoTile(
          name: 'DONE',
          message: 'Your food is done',
          time: '7.10',
          isCompleted: false,
        ),
      ],
    );
  }
}

class OrderStatusInfoTile extends StatelessWidget {
  const OrderStatusInfoTile(
      {super.key,
      required this.name,
      required this.message,
      required this.time,
      required this.isCompleted});
  final String name, message, time;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppDefault.padding,
        right: AppDefault.padding,
        top: AppDefault.padding / 2,
      ),
      child: Row(
        children: [
          Column(
            children: [
              SvgPicture.asset(
                AppIcons.checkedList,
                color: isCompleted ? null : AppColors.primary,
              ),
              const SizedBox(height: AppDefault.padding),
              ...List.generate(
                4,
                (index) => Container(
                  width: 3,
                  height: 3,
                  margin: const EdgeInsets.symmetric(vertical: 2),
                  decoration: BoxDecoration(
                      color: isCompleted
                          ? Colors.black
                          : Colors.black.withOpacity(0.3),
                      shape: BoxShape.circle),
                ),
              ),
            ],
          ),
          const SizedBox(width: AppDefault.padding),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      ?.copyWith(color: Colors.grey),
                ),
                const SizedBox(height: AppDefault.padding / 2),
                Row(
                  children: [
                    Text(
                      message,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Text(
                      time,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
                const SizedBox(height: AppDefault.padding / 2),
                const Divider()
              ],
            ),
          ),
          // const Spacer(),
          // Padding(
          //   padding: const EdgeInsets.only(right: AppDefault.padding / 2),
          //   child: Text(
          //     time,
          //     style: Theme.of(context).textTheme.caption,
          //   ),
          // )
        ],
      ),
    );
  }
}
