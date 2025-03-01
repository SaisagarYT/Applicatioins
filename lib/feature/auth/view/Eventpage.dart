import 'package:demoproject/feature/auth/view/Eventdata.dart';
import 'package:flutter/material.dart';
import '../../../feature/auth/view/Eventpage.dart';
import '../../../feature/auth/view/Homepage.dart';
import '../../../constants/colors.dart';
import '../../../constants/images.dart';
import '../view/Evententry.dart';
import '../../../customWidgets/eventImage.dart';

class Eventpage extends StatefulWidget {
  const Eventpage({super.key});

  @override
  State<Eventpage> createState() => _EventpageState();
}

class _EventpageState extends State<Eventpage> {
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
                "Looking For Interesting Events \nto join",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Upcoming Events", style: TextStyle(fontSize: 16)),
                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.black),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Evententry()),
                        );
                      },
                      child: Text(
                        "Create",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  eventImage(img: Image.asset(AppImage.groupImage)),
                  SizedBox(height: 10),
                  eventImage(img: Image.asset(AppImage.reactagle23)),
                ],
              ),
            ],
          ),
        ),
      ),

      extendBody: true,

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.black,
        selectedItemColor: Colors.white,
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
            label: "Calander",
          ),
        ],
      ),
    );
  }
}
