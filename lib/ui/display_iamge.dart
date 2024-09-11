import 'package:flutter/material.dart';

class DisplayIamge extends StatelessWidget {
  final int index;
  const DisplayIamge({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.withOpacity(0.5),
        title: Text('Number $index'),
        centerTitle: true,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon:const Icon(Icons.arrow_back_ios)),
      ),
      body: SafeArea(child: Center(child: Image.asset('assets/image/img_$index.png'))),
    );
  }
}