import 'package:flutter/material.dart';
import '../feature/auth/view/Homepage.dart';
import '../constants/colors.dart';
import '../feature/auth/view/Signupscreen.dart';
import '../feature/auth/controller/authController.dart';

class ButtonComp extends StatelessWidget {
  final String btnTitle;
  final double btnHeight;
  final double btnWidth;
  final Color btnColor;
  final double btnRadius;
  final Widget location;

  // final String btnColor;
  const ButtonComp({
    super.key,
    required this.btnTitle,
    required this.btnHeight,
    required this.btnWidth,
    required this.btnColor,
    required this.btnRadius,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: btnHeight,
      width: btnWidth,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => location),
          );
        },
        style: ButtonStyle(
          shape: WidgetStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(btnRadius),
            ),
          ),
          backgroundColor: WidgetStatePropertyAll(btnColor),
        ),
        child: Text(
          btnTitle,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
