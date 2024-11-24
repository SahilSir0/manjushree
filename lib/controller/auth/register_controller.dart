

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:manjushree/views/dash_screen.dart';
import 'package:simple_fontellico_progress_dialog/simple_fontico_loading.dart';

class RegisterController extends GetxController {
  RxBool passwordObscure = true.obs;

  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final dobController = TextEditingController();
  final nameController = TextEditingController();

  void onEyeCLick() {
    passwordObscure.value = !passwordObscure.value;
  }

  final formKey = GlobalKey<FormState>();

  var selectedGender = "Male".obs;

  final selectedSubscription = ''.obs;
  // final selectedPrice = '100'.obs;
  final subscriptionEndDate = DateTime.now().obs;

  void updateSubscription(String payment) {
    selectedSubscription.value = payment;
  }

  RxInt selectedPrice = 10.obs;

  final loading = SimpleFontelicoProgressDialog(
      context: Get.context!, barrierDimisable: false);

  void onSubmit() async {
     Get.offAll(() => DashScreen());
    // if (formKey.currentState!.validate()) {
    //   loading.show(message: "Please wait ..");
    //   await RegisterRepo.register(
    //     dob: dobController.text,
    //     name: nameController.text,
    //     gender: "Male",
    //     email: emailController.text,
    //     password: passwordController.text,
    //     onSuccess: (user) async {
    //       loading.hide();
    //       final box = GetStorage();
    //       await box.write(StorageKeys.USER, json.encode(user.toJson()));
    //       Get.find<CoreController>().loadCurrentUser();
    //       CustomSnackBar.success(
    //           title: "Register", message: "Register Successfull");
    //     },
    //     onError: (message) {
    //       loading.hide();
    //       CustomSnackBar.error(title: "Register", message: message);
    //     },
    //   );
    // }
  }
}
