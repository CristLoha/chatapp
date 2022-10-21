import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: Get.width * 0.7,
                  height: Get.width * 0.7,
                  child: Lottie.asset('assets/lottie/login.json'),
                ),
                SizedBox(height: 100),
                SocialLoginButton(
                  borderRadius: 50,
                  height: 60,
                  buttonType: SocialLoginButtonType.google,
                  onPressed: () {},
                ),
                SizedBox(height: 50),
                Text('Chat App'),
                Text('v.1.0'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
