import 'package:flutter/material.dart';
import '../constants/images.dart';
import '../feature/auth/view/Eventdata.dart';

class eventImage extends StatelessWidget {
  final Image img;
  const eventImage({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Eventdata(img: img)),
        );
      },
      child: Container(child: img),
    );
  }
}
