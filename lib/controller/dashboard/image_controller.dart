import 'dart:developer';
import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends GetxController {
  final picker = ImagePicker();
  Rxn<File> image = Rxn<File>();

  void pickImage() async {
    log("Picking Iamge");
    final pickedImage = await picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 100,
        maxHeight: 500,
        maxWidth: 500);
    if (pickedImage != null) {
      image.value = File(pickedImage.path);
    }
  }
}
