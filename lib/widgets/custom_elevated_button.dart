import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
 final IconData icon;
  final void Function()? onPressed;
  const CustomElevatedButton({super.key,required this.icon,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                      onPressed: onPressed,
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Icon(icon),
                    );
  }
}