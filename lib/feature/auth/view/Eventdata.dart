import 'package:demoproject/constants/colors.dart';
import 'package:demoproject/constants/images.dart';
import 'package:demoproject/feature/auth/view/Eventpage.dart';
import 'package:demoproject/feature/auth/view/Homepage.dart';
import 'package:flutter/material.dart';
import '../../../customWidgets/dataImage.dart';

class Eventdata extends StatefulWidget {
  final Image img;
  const Eventdata({super.key, required this.img});

  @override
  State<Eventdata> createState() => _EventdataState();
}

class _EventdataState extends State<Eventdata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 220,
        flexibleSpace: Container(
          child: Stack(
            children: [
              dataImage(dataimage: widget.img),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Eventpage()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 30, top: 30),
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back, color: Colors.white),
                          SizedBox(width: 20),
                          Text(
                            "Event Details",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hackathon",
              style: TextStyle(fontSize: 22, color: AppColors.orange),
            ),
            SizedBox(height: 10),
            Text(
              "A Hackathon is an intense time-bound coding copetition where students collaboration in teams to build innovative solutions, apps, or prototypes. Extending it to 48 hours allows for deeper problem-solving, better refinement, and enhanced innovation.\nA Hackathon is an intense time-bound coding competition where students collaborate in teams to build innovative solutions, apps, or prototypes. Extending it to 48 hours allows for deeper problem-solving,better refinement, and enhanced innovation.",
            ),
            SizedBox(height: 20),
            Card(
              color: AppColors.skyBlue,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Text(
                      "FEB\n23",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    height: 75,
                    width: 1,
                    color: const Color.fromARGB(255, 203, 203, 203),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Column(
                      children: [
                        Text(
                          "Wednesday",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "10.00am - 12.00",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
