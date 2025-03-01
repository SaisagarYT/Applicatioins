import 'dart:collection';

import 'package:demoproject/constants/colors.dart';
import 'package:demoproject/constants/images.dart';
import 'package:demoproject/feature/auth/view/Eventpage.dart';
import 'package:flutter/material.dart';
import '../../../customWidgets/BottomBar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int my_index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: AppColors.black,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: CircleAvatar(foregroundImage: AssetImage(AppImage.groupImage)),
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "SaiSagar",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Icon(Icons.menu, color: AppColors.white),
            ],
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 35, right: 35, top: 15),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Events",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins",
                ),
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Container(child: Image.asset(AppImage.groupImage)),
                  SizedBox(height: 10),
                  Container(child: Image.asset(AppImage.reactagle23)),
                  SizedBox(height: 10),
                  Container(child: Image.asset(AppImage.reactagle23)),
                  SizedBox(height: 10),
                  Container(child: Image.asset(AppImage.reactagle23)),
                ],
              ),
            ],
          ),
        ),
      ),

      extendBody: true,

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.black,
        unselectedItemColor: Colors.white,
        onTap: (value) {
          setState(() {
            my_index = value;
          });
          if (my_index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Homepage()),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Eventpage()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: AppColors.white),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_available, color: AppColors.white),
            label: "Events",
          ),
        ],
      ),
    );
  }
}
