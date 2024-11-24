import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manjushree/controller/auth/login_controller.dart';
import 'package:manjushree/utils/custom_text_style.dart';

import '../../utils/validatior.dart';
import '../../widgets/custom/custom_textfield.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({super.key});
  final c = Get.put(LogInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 200,
                width: 500,
                child: Image(
                  image: AssetImage("assets/common/forgetpassword.png"),
                )),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Center(
                child: Text(
                    "Please enter your email address to receive a verification code",
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.f12W600()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomTextField(
                preIconPath: Icons.person_outline_sharp,
                hint: "Email",
                validator: Validators.checkEmailField,
                controller: c.emailController,
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.emailAddress,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
