import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manjushree/controller/dashboard/home_screen_controller.dart';
import 'package:manjushree/utils/colors.dart';
import 'package:manjushree/utils/custom_text_style.dart';

class HistoryScreen extends StatelessWidget {
  HistoryScreen({super.key});

  final c = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          centerTitle: false,
          title: Text(
            "History",
            style: CustomTextStyles.f16W600(color: Colors.white),
          ),
        ),
        body: Text("body")

        // ListView.builder(
        //   itemCount: 10,
        //   itemBuilder: (context, index) {
        //     return HistoryListCard(
        //       colors: index % 2 == 0 ? AppColors.primaryColor : Colors.amber,
        //     );
        //   },
        // ),
        );
  }
}
