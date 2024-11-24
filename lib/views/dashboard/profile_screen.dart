import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manjushree/controller/core_controller.dart';
import 'package:manjushree/utils/colors.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile_screen';
  ProfileScreen({super.key});

  final corController = Get.put(CoreController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("My Profile",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
          ],
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
