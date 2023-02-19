import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:won_food_app/core/constants/app_icons.dart';
import 'package:won_food_app/screens/profile/components/payment_method_item_tile.dart';

List<Map<String, String>> payments = [
  {
    'name': 'Pay cash on delivery',
    'fee': '0.00',
    'icon': AppIcons.cashondev,
  },
  {
    'name': 'Credit Card',
    'fee': '1.20',
    'icon': AppIcons.creditCard,
  },
  {
    'name': 'Paypal',
    'fee': '0.99',
    'icon': AppIcons.paypal,
  }
];

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({super.key});

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  int selectedItem = 0;

  void changePaymentMethod(int index) {
    selectedItem = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PaymentMethodPageHeader(),
      body: Column(
        children: List.generate(
            payments.length,
            (index) => PaymentMethodItemTile(
                onTap: () {
                  changePaymentMethod(index);
                },
                name: payments[index]['name']!,
                fee: payments[index]['fee']!,
                icon: payments[index]['icon']!,
                isSelected: index == selectedItem)),
        // children: const [
        //   PaymentMethodItemTile(
        //     name: 'Pay cash on delivery',
        //     fee: '0.00',
        //     icon: AppIcons.cashondev,
        //     isSelected: true,
        //   ),
        //   PaymentMethodItemTile(
        //     name: 'Credit Card',
        //     fee: '1.20',
        //     icon: AppIcons.creditCard,
        //     isSelected: false,
        //   ),
        //   PaymentMethodItemTile(
        //     name: 'Paypal',
        //     fee: '0.99',
        //     icon: AppIcons.paypal,
        //     isSelected: false,
        //   ),
        // ],
      ),
    );
  }
}

class PaymentMethodPageHeader extends StatelessWidget with PreferredSizeWidget {
  const PaymentMethodPageHeader({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset(AppIcons.back),
        onPressed: () => Get.back(),
      ),
      title: Text(
        'Payment Method',
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: SvgPicture.asset(AppIcons.add2))
      ],
    );
  }
}
