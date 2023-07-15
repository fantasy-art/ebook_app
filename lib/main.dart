import 'package:ebook_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/splash/persentation/views/splash_view.dart';

void main() {
  runApp(const EBookApp());
}

class EBookApp extends StatelessWidget {
  const EBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimeryColor,
      ),
      home: const SplashView(),
    );
  }
}
