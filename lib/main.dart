import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:book_app/core/utils/color.dart';
import 'package:book_app/test2.dart';

import 'Features/Spilash/presention/views/spilash_screen.dart';
import 'core/utils/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimyColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),),
    );
  }
}


