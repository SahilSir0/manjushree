import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:manjushree/views/dash_screen.dart';
import 'package:simple_fontellico_progress_dialog/simple_fontico_loading.dart';

class LogInController extends GetxController {
  final passwordController = TextEditingController();

  RxBool passwordObscure = true.obs;
  void onEyeCLick() {
    passwordObscure.value = !passwordObscure.value;
  }

  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  final loading = SimpleFontelicoProgressDialog(
      context: Get.context!, barrierDimisable: false);

  void onSubmit() async {
    Get.offAll(() => DashScreen());
    // if (formKey.currentState!.validate()) {
    //   loading.show(message: "Please wait ..");
    //   await LoginRepo.login(
    //     email: emailController.text,
    //     password: passwordController.text,
    //     onSuccess: (user) async {
    //       loading.hide();
    //       final box = GetStorage();
    //       await box.write(StorageKeys.USER, json.encode(user.toJson()));
    //       Get.find<CoreController>().loadCurrentUser();
    //       Get.offAll(() => DashScreen());
    //       CustomSnackBar.success(title: "Login", message: "Login Successfull");
    //     },
    //     onError: (message) {
    //       loading.hide();
    //       CustomSnackBar.error(title: "Login", message: message);
    //     },
    //   );
    // }
  }
}
