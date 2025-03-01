import 'package:flutter/material.dart';
import '../constants/images.dart';

class PhoneInput extends StatelessWidget {
  final String hintText;
  const PhoneInput({
    super.key,
    required this.controller,
    required this.hintText,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // inputField - 1
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          gapPadding: 10,
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: hintText,
      ),
    );
  }
}
