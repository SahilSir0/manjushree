import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
            height: 500,
            width: 200,
            child: Column(
              children: [
                Image(
                  image: AssetImage("assets/common/forgetpassword.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "Please enter your email address to receive a verification code"),
                )
              ],
            )),
      ),
    );
  }
}
