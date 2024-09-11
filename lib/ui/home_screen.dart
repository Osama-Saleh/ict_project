import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ictproject/ui/display_iamge.dart';
import 'package:ictproject/widgets/custom_elevated_button.dart';
import 'package:ictproject/widgets/custom_text.dart';
import 'package:ictproject/widgets/custome_image_asset.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int imageIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/svg/shop.svg',
                    fit: BoxFit.fill,
                    height: 100,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SvgPicture.network(
                    'https://www.svgrepo.com/show/513268/beer.svg',
                    placeholderBuilder: (BuildContext context) => Container(
                        // padding: const EdgeInsets.all(30.0),
                        child: Lottie.asset('assets/lottie/loding.json',
                            height: 80)),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Image.network(
                    'https://img.freepik.com/free-photo/abstract-autumn-beauty-multi-colored-leaf-vein-pattern-generated-by-ai_188544-9871.jpg',
                    width: 100,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DisplayIamge(
                          index: imageIndex,
                        ),
                      ));
                },
                child: Container(
                  height: 300,
                  width: 250,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage('assets/image/img_${imageIndex}.png'),
                        fit: BoxFit.fill),
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 50,
                      color: Colors.black.withOpacity(0.4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Number $imageIndex',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 20),
                          ),
                          const Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: CustomElevatedButton(
                      icon: Icons.arrow_back_ios,
                      onPressed: () {
                        setState(() {
                          if (imageIndex > 1) {
                            imageIndex--;
                          } else {
                            imageIndex = 4;
                          }
                        });
                      },
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    child: CustomElevatedButton(
                      icon: Icons.arrow_forward_ios,
                      onPressed: () {
                        setState(() {
                          if (imageIndex < 4) {
                            imageIndex++;
                          } else {
                            imageIndex = 1;
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              
              const SizedBox(
                height: 200,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
