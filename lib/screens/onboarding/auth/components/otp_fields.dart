import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:won_food_app/core/constants/app_default.dart';
import 'package:won_food_app/screens/onboarding/auth/components/otp_text_field.dart';

class OTPFields extends StatefulWidget {
  const OTPFields({super.key});

  @override
  State<OTPFields> createState() => _OTPFieldsState();
}

class _OTPFieldsState extends State<OTPFields> {
  late TextEditingController _controller1;
  late TextEditingController _controller2;
  late TextEditingController _controller3;
  late TextEditingController _controller4;

  void _shiftToNextField(TextEditingController controller) {
    if (controller.text.isNotEmpty) {
      FocusScope.of(context).nextFocus();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller1 = TextEditingController();
    _controller2 = TextEditingController();
    _controller3 = TextEditingController();
    _controller4 = TextEditingController();
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    super.dispose();
  }

  final InputDecoration _decoration = InputDecoration(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.withOpacity(0.25)),
    ),
    focusedBorder: const UnderlineInputBorder(borderSide: BorderSide()),
    border: const UnderlineInputBorder(borderSide: BorderSide()),
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Padding(
        padding: const EdgeInsets.all(AppDefault.padding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                OTPTextField(
                  onChanged: () => _shiftToNextField(_controller1),
                  controller: _controller1,
                  decoration: _decoration,
                  autofocus: true,
                ),
                OTPTextField(
                  onChanged: () => _shiftToNextField(_controller2),
                  controller: _controller2,
                  decoration: _decoration,
                ),
                OTPTextField(
                  onChanged: () => _shiftToNextField(_controller3),
                  controller: _controller3,
                  decoration: _decoration,
                ),
                OTPTextField(
                  onChanged: () => _shiftToNextField(_controller4),
                  controller: _controller4,
                  decoration: _decoration,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
