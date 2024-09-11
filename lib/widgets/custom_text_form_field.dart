import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
 final TextEditingController? controller;
 final String? Function(String?)? validator;
 final String? labelString;
 final String? hintText;
  const CustomTextFormField({super.key,this.controller,this.validator,this.labelString,this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      validator: validator,
      decoration: InputDecoration(
        label: Text(labelString??'lable'),
        hintText: hintText??'hintText',
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(12)
        // ),
        // or
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.green,
            width: 3,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 245, 104, 94),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 3,
          ),
        ),
      ),
    );
  }
}
