import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manjushree/controller/splash_controller.dart';
import 'package:manjushree/utils/image_path.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final c = Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              child: Image(
                image: const AssetImage(ImagePath.placeholder),
                height: 500,
              ),
            ),
          ),
          const Center(
              child: CupertinoActivityIndicator(
            radius: 15,
          )),
        ],
      ),
    );
  }
}
