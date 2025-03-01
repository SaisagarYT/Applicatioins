import 'package:flutter/material.dart';
import '../constants/images.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  const InputField({
    super.key,
    required this.PasswordController,
    required this.hintText,
    this.isPassword = false,
  });

  final TextEditingController PasswordController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: PasswordController,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: -1),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        hintText: hintText,
        suffix:
            isPassword == true
                ? Image(image: AssetImage(AppImage.eyeimage), height: 24)
                : null,
      ),
    );
  }
}
