import 'package:get/get.dart';
import 'package:chatapp/utils/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'app/controllers/auth.dart';
import 'app/routes/app_pages.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final authC = Get.put(AuthController(), permanent: true);

  runApp(
    FutureBuilder(
      future: Future.delayed(
        Duration(
          seconds: 3,
        ),
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Obx(() {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: "ChatApp",
              initialRoute: authC.isAuth.isTrue ? Routes.HOME : Routes.LOGIN,
              getPages: AppPages.routes,
            );
          });
        }
        return FutureBuilder(
          future: authC.firstInitialized(),
          builder: (context, snapshot) {
            return SplashScreen();
          },
        );
      },
    ),
  );
}
