import 'package:flutter/material.dart';
import 'package:ictproject/data/user_model.dart';
import 'package:ictproject/widgets/custom_text.dart';
import 'package:ictproject/widgets/custome_image_asset.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  // static  UserModel model = UserModel();

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SafeArea(
            child: Center(
              child: Container(
                  height: 500,
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListTile(
                            leading: Container(
                              width: 100,
                              height: 100,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child:  CustomeImageAsset(
                                  pathImage: UserModel.userModelList[index].image??'assets/image/defaulImage.png'),
                            ),
                            // title: Text('image ${index + 1}'),
                            title: CustomText(
                              text: UserModel.userModelList[index].name??'Enter you name',
                              color: const Color.fromARGB(255, 170, 243, 33),
                              fontSize: 25,
                            ),
                            // subtitle: Text(
                            //   'description ${index + 1}',
                            //   style: TextStyle(fontSize: 20, color: Colors.black),
                            // ),
                            subtitle: CustomText(
                              text: UserModel.userModelList[index].titleJop??'Write you Jop',
                              fontSize: 14,
                            ),
                            trailing: CustomText(text: 'age ${UserModel.userModelList[index].age}'),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 20,
                          ),
                      itemCount: UserModel.userModelList.length),
                ),
            )));
  }
}
