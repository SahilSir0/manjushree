import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manjushree/controller/dashboard/image_controller.dart';
import 'package:manjushree/utils/colors.dart';

class ImageScreen extends StatelessWidget {
  ImageScreen({super.key});

  final c = Get.put(ImageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.extraWhite,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Image Picker",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, top: 10),
                    child: SizedBox(
                      width: 50,
                      height: 100,
                      child: Image.network(
                          "https://cdn-icons-png.flaticon.com/512/219/219983.png"),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Obx(() => ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: (c.image.value != null)
                  ? Image.file(c.image.value!,
                      fit: BoxFit.cover, height: 100, width: 100)
                  : CachedNetworkImage(
                      imageUrl: "",
                      fit: BoxFit.cover,
                      height: 100,
                      width: 100,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Image.network(
                        "https://img.freepik.com/free-photo/animal-eye-staring-close-up-watch-nature-generative-ai_188544-15471.jpg",
                        fit: BoxFit.cover,
                        height: 100,
                        width: 100,
                      ),
                    ))),
          SizedBox(height: 10),
          InkWell(
            onTap: () {
              c.pickImage();
            },
            child: Text("Change Avatar"),
          )
        ],
      ),
    );
  }
}
