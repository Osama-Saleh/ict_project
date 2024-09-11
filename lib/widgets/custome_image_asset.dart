import 'package:flutter/material.dart';

class CustomeImageAsset extends StatelessWidget {
  final String pathImage;
  const CustomeImageAsset({super.key, required this.pathImage});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      pathImage,
      fit: BoxFit.fill,
    );
  }
}
