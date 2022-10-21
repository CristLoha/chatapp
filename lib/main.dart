import 'package:chatapp/utils/error.dart';
import 'package:chatapp/utils/loading.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'firebase_options.dart';
import 'utils/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final Future<FirebaseApp> initialization = Firebase.initializeApp();

  runApp(
    FutureBuilder(
      future: initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen();
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: "ChatApp",
            initialRoute: Routes.UPDATE_STATUS,
            getPages: AppPages.routes,
          );
          // return FutureBuilder(
          //   future: Future.delayed(
          //     Duration(
          //       seconds: 3,
          //     ),
          //   ),
          //   builder: (context, snapshot) {
          //     if (snapshot.connectionState == ConnectionState.done) {
          //       return GetMaterialApp(
          //         debugShowCheckedModeBanner: false,
          //         title: "ChatApp",
          //         initialRoute:
          //             snapshot.data != null ? Routes.HOME : Routes.LOGIN,
          //         getPages: AppPages.routes,
          //       );
          //     }
          //     return SplashScreen();
          //   },
          // );
        }
        return LoadingScreen();
      },
    ),
  );
}
