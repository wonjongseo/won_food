import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OTPTextField extends StatelessWidget {
  const OTPTextField(
      {super.key,
      required this.controller,
      required this.onChanged,
      this.decoration,
      this.autofocus});
  final TextEditingController controller;
  final void Function() onChanged;
  final InputDecoration? decoration;
  final bool? autofocus;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: TextFormField(
          autofocus: autofocus ?? false,
          controller: controller,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          onChanged: (v) {
            onChanged();
          },
          onFieldSubmitted: (value) {
            print(value);
            onChanged();
          },
          decoration: decoration ??
              InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(
                      color: controller.text.isNotEmpty
                          ? Colors.black
                          : Colors.grey),
                ),
                hintText: '0',
              ),
        ),
      ),
    );
  }
}
