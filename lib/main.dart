import 'package:book_app/core/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Features/Spilash/presention/views/spilash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(scaffoldBackgroundColor: kPrimyColor),
      home: const SpilashScereen(),
    );
  }
}
