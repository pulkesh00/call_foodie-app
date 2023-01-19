// ignore_for_file: prefer_const_constructors, unnecessary_brace_in_string_interps

import 'package:call_foodie/Controller/introController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../Routes/app_pages.dart';
import 'login_page_view.dart';

class IntroScreenView extends GetView<IntroController> {
  const IntroScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut<IntroController>(() => IntroController());
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: Get.height * 0.8,
            child: PageView(
              onPageChanged: (i) {
                controller.index.value = i;
                print('pageValue ${i}');
              },
              controller: controller.pageController,
              children: [
                Container(
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 180.0),
                      child: Center(
                        child:
                            SvgPicture.asset('assets/images/image_second.svg'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: SizedBox(
                        width: Get.width * 0.7,
                        height: 80,
                        child: Text(
                          'Present for the good taste food',
                          style: TextStyle(
                              fontSize: 32,
                              color: Color(0xFFE94335),
                              fontFamily: 'BerkShireSwash'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ]),
                ),
                Container(
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 180.0),
                      child: Center(
                        child:
                            SvgPicture.asset('assets/images/image_third.svg'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: SizedBox(
                        width: Get.width * 0.7,
                        height: 80,
                        child: Text(
                          'Enjoy the best food and your favourite',
                          style: TextStyle(
                              fontSize: 32,
                              color: Color(0xFFE94335),
                              fontFamily: 'BerkShireSwash'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ]),
                ),
                Container(
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 180.0),
                      child: Center(
                        child:
                            SvgPicture.asset('assets/images/image_fourth.svg'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: SizedBox(
                        width: Get.width * 0.7,
                        height: 80,
                        child: Text(
                          'Get Started explore food delicious',
                          style: TextStyle(
                              fontSize: 32,
                              color: Color(0xFFE94335),
                              fontFamily: 'BerkShireSwash'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          Container(
            height: 30,
            width: 120,
            margin:
                EdgeInsets.only(left: Get.width * 0.3, right: Get.width * 0.3),
            child: Center(
              child: SmoothPageIndicator(
                count: 3,
                controller: controller.pageController,
                effect:
                    //https://pub.dev/packages/smooth_page_indicator/example
                    const ExpandingDotsEffect(
                        activeDotColor: Color(0xFFE94335),
                        dotColor: Color(0xFFFFAFA8),
                        dotHeight: 10,
                        dotWidth: 10),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                controller.index.value > 0
                    ? Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFE94335),
                        ),
                        width: Get.width * 0.15,
                        // margin: EdgeInsets.only(
                        //     left: Get.width * 0.34, right: Get.width * 0.36),
                        child: Center(
                          child: TextButton(
                            style: TextButton.styleFrom(
                              splashFactory: NoSplash.splashFactory,
                            ),
                            onPressed: () {
                              controller.pageDecrease();
                            },
                            child: Text(
                              '<',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                        ),
                      )
                    : SizedBox(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFE94335),
                  ),
                  width: Get.width * 0.15,
                  // margin: EdgeInsets.only(right: Get.width * 0.01),
                  child: Center(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        splashFactory: NoSplash.splashFactory,
                      ),
                      onPressed: () {
                        controller.pageIncrease();
                      },
                      child: Text(
                        '>',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class GetStarted extends GetView {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(children: [
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 180.0),
                  child: Center(
                    child: SvgPicture.asset('assets/images/image_fifth.svg'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: SizedBox(
                    width: Get.width * 0.7,
                    height: 80,
                    child: Text(
                      'Welcome',
                      style: TextStyle(
                          fontSize: 32,
                          color: Color(0xFFE94335),
                          fontFamily: 'BerkShireSwash'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFE94335),
              ),
              width: Get.width * 0.3,
              margin: EdgeInsets.only(
                  left: Get.width * 0.34, right: Get.width * 0.36),
              child: TextButton(
                onPressed: () {
                  Get.offAllNamed(Routes.loginPage);
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
