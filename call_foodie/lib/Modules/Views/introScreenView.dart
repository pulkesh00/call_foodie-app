// ignore_for_file: prefer_const_constructors

import 'package:call_foodie/Controller/Intro_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_screen_view.dart';
import 'intro_screen.dart';

class IntroScreen extends GetView<IntroScreenController> {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut<IntroScreenController>(() => IntroScreenController());
    return Scaffold(
      body: Obx(() => controller.isIntro.value == false
          ? IntroScreenView()
          : HomeScreenView()),
    );
  }
}

