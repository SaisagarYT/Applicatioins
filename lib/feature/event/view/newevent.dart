import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../../constants/images.dart';
import '../../../customWidgets/InputFiled.dart';

class Newevent extends StatelessWidget {
  const Newevent({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController EventitleController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            actions: [Image.asset(AppImage.listIcon, cacheHeight: 30)],
            title: const Text(
              "Elon Musk",
              style: TextStyle(color: AppColors.white),
            ),
            backgroundColor: AppColors.darkBackground,
            leading: Image.asset(AppImage.profileIcon, cacheHeight: 30),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.lightBackground,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "New Event Entry",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      InputField(
                        PasswordController: EventitleController,
                        hintText: "Enter Event Title",
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: InputField(
                              PasswordController: EventitleController,
                              hintText: "dd/mm/yyyy",
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: InputField(
                              PasswordController: EventitleController,
                              hintText: "00:00",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.all(10),
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: AppColors.black),
                        ),
                        child: TextFormField(
                          maxLines: 20,
                          keyboardType: TextInputType.multiline,
                          decoration: const InputDecoration(
                            hintText: "Description",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.black),
                        ),
                        child: Image.asset(AppImage.plusIcon, scale: 2),
                      ),
                      Container(
                        height: 22,
                        width: double.infinity,
                        color: AppColors.black,
                        child: const Center(
                          child: Text(
                            "Upload Image",
                            style: TextStyle(color: AppColors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 40,
                        padding: const EdgeInsets.all(10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.darkBackground,
                        ),
                        child: const Center(
                          child: Text(
                            "Create Event",
                            style: TextStyle(color: AppColors.white),
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
      ),
    );
  }
}
