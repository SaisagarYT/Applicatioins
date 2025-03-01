import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:demoproject/constants/api.dart';
import 'package:http/http.dart' as http;
import 'package:demoproject/feature/auth/view/signinscreen.dart';
import 'package:demoproject/feature/auth/view/Evententry.dart';
import '../view/Eventpage.dart';

class APiIntergation {
  void signUp(BuildContext context, Map<String, dynamic> body) async {
    final url = Uri.parse(AppApis.signupApi);
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(body),
    );

    log(response.statusCode.toString());

    if (response.statusCode == 200 || response.statusCode == 201) {
      log(response.statusCode.toString());
      log(response.body);

      final res = jsonDecode(response.body);
      if (res["status"] == "success") {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Signinscreen()),
        );
      } else {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text("Email alredy exist")));
      }
    }
  }

  void login(BuildContext context, Map<String, dynamic> body) async {
    final url = Uri.parse(AppApis.loginApi);

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(body),
    );

    log(response.statusCode.toString());

    final res = jsonDecode(response.body);

    if (res["status"] == "success") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Evententry()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "Invalid Number or Password",
            style: TextStyle(color: Color.fromARGB(255, 255, 126, 87)),
          ),
        ),
      );
    }
  }
}
