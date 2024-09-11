import 'package:flutter/material.dart';

class CustomeImageAsset extends StatelessWidget {
  final String pathImage;
  final double? height;
  final double? width;
  const CustomeImageAsset({super.key, required this.pathImage,this.height,this.width});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      pathImage,
      height: height,
      width:width ,
      fit: BoxFit.fill,
    );
  }
}
