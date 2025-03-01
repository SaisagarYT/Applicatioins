import 'package:demoproject/constants/colors.dart';
import 'package:demoproject/constants/images.dart';
import 'package:demoproject/customWidgets/InputFiled.dart';
import 'package:demoproject/customWidgets/button.dart';
import 'package:demoproject/feature/auth/view/Eventdata.dart';
import 'package:demoproject/feature/auth/view/Eventpage.dart';
import 'package:demoproject/feature/auth/view/Homepage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Evententry extends StatefulWidget {
  const Evententry({super.key});

  @override
  State<Evententry> createState() => _EvententryState();
}

class _EvententryState extends State<Evententry> {
  TextEditingController description = TextEditingController();
  TextEditingController eventEntry = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: CircleAvatar(foregroundImage: AssetImage(AppImage.groupImage)),
        ),
        leadingWidth: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Sai Sagar", style: TextStyle(color: Colors.white)),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.menu, color: Colors.white),
            ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(color: const Color.fromARGB(23, 0, 0, 0)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "New Event Entry",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                  SizedBox(height: 30),

                  TextFormField(
                    controller: eventEntry,
                    decoration: InputDecoration(
                      hintText: "Description",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        width: 160,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            label: Center(child: Text("dd/mm/yyyy")),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        width: 160,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            label: Center(child: Text("00:00")),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 15),
                    height: 150,
                    width: 330,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      controller: description,
                      maxLines: 20,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        hintText: "Description",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    height: 100,
                    width: 340,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: Icon(Icons.add_a_photo),
                  ),
                  ButtonComp(
                    btnTitle: "Upload Image",
                    btnHeight: 40,
                    btnWidth: 340,
                    btnColor: Colors.black,
                    btnRadius: 1,
                    location: Homepage(),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () => print("hello"),
                    child: ButtonComp(
                      btnTitle: "Create Event",
                      btnHeight: 50,
                      btnWidth: 340,
                      btnColor: AppColors.black,
                      btnRadius: 5,
                      location: Eventpage(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
