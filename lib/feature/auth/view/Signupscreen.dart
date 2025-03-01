import 'package:demoproject/constants/images.dart';
import 'package:demoproject/customWidgets/button.dart';
import 'package:demoproject/feature/auth/view/Eventpage.dart';
import 'package:demoproject/feature/auth/view/Homepage.dart';
import 'package:demoproject/feature/auth/view/signinscreen.dart';
import 'package:flutter/material.dart';
import '../../../customWidgets/InputFiled.dart';
import '../../../constants/colors.dart';
import '../controller/authController.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  TextEditingController nameInput = TextEditingController();
  TextEditingController phoneInput = TextEditingController();
  TextEditingController emailInput = TextEditingController();
  TextEditingController confirmPassInput = TextEditingController();
  TextEditingController createPassInput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 35, right: 35),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Register Your",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Accoutn",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Have a tremendous journey with \nus",
                  style: TextStyle(fontSize: 16),
                ),
              ),

              InputField(
                PasswordController: nameInput,
                hintText: "Enter Your Name",
              ),
              SizedBox(height: 15),
              InputField(PasswordController: emailInput, hintText: "Email"),
              SizedBox(height: 15),
              InputField(
                PasswordController: phoneInput,
                hintText: "Phone Number",
              ),
              SizedBox(height: 15),
              InputField(
                PasswordController: createPassInput,
                hintText: "Create Password",
                isPassword: true,
              ),
              SizedBox(height: 15),
              InputField(
                PasswordController: confirmPassInput,
                hintText: "Confirm Password",
              ),
              SizedBox(height: 50),

              // submit button
              GestureDetector(
                child: Container(
                  height: 50,
                  width: 340,
                  child: ElevatedButton(
                    onPressed: () {
                      Map<String, dynamic> body = {
                        "name": nameInput.text.trim(),
                        "email": emailInput.text.trim(),
                        "phone_number": phoneInput.text.trim(),
                        "password": createPassInput.text,
                        "confirm_password": confirmPassInput.text,
                      };
                      APiIntergation().signUp(context, body);
                    },
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      backgroundColor: WidgetStatePropertyAll(
                        AppColors.skyBlue,
                      ),
                    ),
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),

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
                              builder: (context) => Signinscreen(),
                            ),
                          ),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: AppColors.orange,
                          fontWeight: FontWeight.w500,
                        ),
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
