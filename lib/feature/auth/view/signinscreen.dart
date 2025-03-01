import 'package:demoproject/constants/colors.dart';
import 'package:demoproject/feature/auth/view/Eventpage.dart';
import 'package:demoproject/feature/auth/view/Homepage.dart';
import 'package:flutter/material.dart';
import '../../../constants/images.dart';
import '../../../customWidgets/InputFiled.dart';
import '../../../customWidgets/PhoneInput.dart';
import 'Signupscreen.dart';
import '../../../customWidgets/button.dart';
import '../controller/authController.dart';

class Signinscreen extends StatelessWidget {
  const Signinscreen({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController PhoneController = TextEditingController();
    TextEditingController PasswordController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 42, left: 31, right: 31),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lets Sign you in",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins",
                ),
              ),
              // image of rectangle
              Container(
                margin: EdgeInsets.only(top: 40, bottom: 40),
                child: Column(
                  children: [
                    Image.asset(
                      AppImage.rectangleImage,
                      alignment: Alignment.topLeft,
                    ),
                  ],
                ),
              ),
              // inputFields
              Column(
                children: [
                  Container(
                    height: 50,
                    child: InputField(
                      isPassword: false,
                      PasswordController: PhoneController,
                      hintText: "Phone Number",
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    child: InputField(
                      isPassword: true,
                      PasswordController: PasswordController,
                      hintText: "Password",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 45),
              // submit button
              Container(
                height: 50,
                width: 340,
                child: ElevatedButton(
                  onPressed: () {
                    Map<String, dynamic> body = {
                      "phone_number": PhoneController.text.trim(),
                      "password": PasswordController.text,
                    };
                    APiIntergation().login(context, body);
                  },
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                    backgroundColor: WidgetStatePropertyAll(AppColors.skyBlue),
                  ),
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),

              // don't have accoutnt register now
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account, "),
                    GestureDetector(
                      onTap:
                          () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Signupscreen(),
                            ),
                          ),
                      child: Text(
                        "Register Now",
                        style: TextStyle(color: AppColors.orange),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
