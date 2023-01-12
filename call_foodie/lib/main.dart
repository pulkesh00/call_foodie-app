// ignore_for_file: prefer_const_constructors

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

import 'Modules/Views/introScreenView.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends GetView {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: AnimatedSplashScreen(
        nextScreen: IntroScreen(),
        duration: 2000,
        splash: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              'assets/images/login_image.png',
              height: 120,
            )),
      ),
    );
  }
}

showToast(msg, {long}) {
  if (!kIsWeb) Fluttertoast.cancel();
  Fluttertoast.showToast(
    gravity: ToastGravity.CENTER,
    msg: msg,
    backgroundColor: Colors.black,
    textColor: Colors.white,
    // toastLength: long ? Toast.LENGTH_LONG : Toast.LENGTH_SHORT,
  );
}
