// ignore_for_file: prefer_const_constructors

import 'package:call_foodie/Controller/Intro_screen_controller.dart';
import 'package:call_foodie/Screens/Home_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreenView extends GetView<IntroScreenController> {
  const IntroScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut<IntroScreenController>(() => IntroScreenController());
    return Scaffold(
      body: Obx(() =>
          controller.isIntro.value ? IntroScreenView() : HomeScreenView()),
    );
  }
}
