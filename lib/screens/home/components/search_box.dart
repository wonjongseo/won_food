import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/core/constants/app_icons.dart';

class SearchBox extends StatelessWidget {
  SearchBox({super.key});

  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    OutlineInputBorder inputBorder = OutlineInputBorder(
      borderRadius: AppDefault.borderRadius,
      borderSide: const BorderSide(width: 0.1),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDefault.padding),
      child: TextFormField(
        controller: textEditingController,
        decoration: InputDecoration(
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: 'Search food',
            prefixIcon: InkWell(
              onTap: () {
                print('Search Box ${textEditingController.text} ');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(AppIcons.search),
              ),
            ),
            border: inputBorder,
            focusedBorder: inputBorder,
            enabledBorder: inputBorder,
            prefixIconConstraints: const BoxConstraints(maxWidth: 48)),
      ),
    );
  }
}
