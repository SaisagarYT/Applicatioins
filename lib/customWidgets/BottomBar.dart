import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../feature/auth/view/Eventpage.dart';
import '../feature/auth/view/Homepage.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int my_index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNavigationBar(
        backgroundColor: AppColors.black,
        onTap: (value) {
          setState(() {
            my_index = value;
          });
          if (my_index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Eventpage()),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Homepage()),
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
            label: "Calander",
          ),
        ],
      ),
    );
  }
}
