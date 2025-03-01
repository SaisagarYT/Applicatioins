import 'package:flutter/material.dart';
import '../constants/images.dart';

class dataImage extends StatelessWidget {
  final Image dataimage;
  const dataImage({super.key,required this.dataimage});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: dataimage.image,
      fit: BoxFit.cover,
      height: 250,
    );
  }
}
