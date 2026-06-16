import 'package:flutter/material.dart';

class FieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hint;

  const FieldWidget({super.key, required this.controller, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textDirection: .ltr,
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        hintTextDirection: .ltr,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      ),
      onTapOutside: (value) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
    );
  }
}
