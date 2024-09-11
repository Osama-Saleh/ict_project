import 'package:flutter/material.dart';
import 'package:ictproject/data/user_model.dart';
import 'package:ictproject/widgets/custom_elevated_button.dart';
import 'package:ictproject/widgets/custom_text.dart';
import 'package:ictproject/widgets/custom_text_form_field.dart';
import 'package:ictproject/widgets/custome_image_asset.dart';

class SettingScreen extends StatefulWidget {
  SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  var controllerNumber1 = TextEditingController();

  var controllerNumber2 = TextEditingController();

  int result = 0;

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              CustomTextFormField(
                controller: controllerNumber1,
                labelString: 'Enter number 1',
                hintText: 'Enter number',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please Enter number';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                controller: controllerNumber2,
                labelString: 'Enter number 2',
                hintText: 'Enter number',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please Enter number';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomElevatedButton(
                icon: Icons.add,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    print(controllerNumber1.text);
                    print(controllerNumber2.text);
                    int number1 = int.parse(controllerNumber1.text);
                    int number2 = int.parse(controllerNumber2.text);
                    result = number1 + number2;
                    setState(() {});
                  } else {
                    print('is validator is not correct');
                  }
                },
              ),
              CustomText(text: 'result : $result')
            ],
          ),
        ),
      ),
      //         child: GridView.builder(
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     crossAxisSpacing: 20,
      //     mainAxisSpacing: 10,
      //   ),
      //   itemCount: UserModel.userModelList.length,
      //   itemBuilder: (context, index) {
      //     return Container(
      //       height: 100,
      //       width: 100,
      //       color: Colors.blue,
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           CustomeImageAsset(
      //             pathImage: UserModel.userModelList[index].image ??
      //                 'assets/image/defaulImage.png',
      //             height: 80,
      //           ),
      //           const SizedBox(
      //             height: 10,
      //           ),
      //           CustomText(
      //               text: UserModel.userModelList[index].name ?? 'Enter you name')
      //         ],
      //       ),
      //     );
      //   },
      // )
    ));
  }
}
