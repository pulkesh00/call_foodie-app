import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../Modules/Views/intro_screen.dart';

class IntroController extends GetxController {
  final index = 0.obs;
  final pageController = PageController();

  @override
  void onInit() {
    super.onInit();
    index.value=-1;
    pageController.addListener(listener);
  }

  pageIncrease() {
    if (index.value < 0) {
      index.value++;
    }
    index.value++;
    print("pageValue moved to  ${index}");

    pageController.animateToPage(index.value,
        duration: const Duration(milliseconds: 600), curve: Curves.easeIn);

    if (index.value > 2) {
      Get.to(() => const GetStarted());
      index.value--;
    }
  }

  pageDecrease() {
    if (index.value == 2) {
      index.value = 1;
    }
    // index.value--;

    pageController.animateToPage(index.value--,
        duration: const Duration(milliseconds: 600), curve: Curves.easeIn);
    print("pageValue decrease to  ${index}");

    if (index.value < 0) {
      pageController.animateToPage(0,
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeInBack);
    }
  }

  listener() {
    if (pageController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      // pageDecrease();
    } else {
      // pageIncrease();
    }
  }
}
