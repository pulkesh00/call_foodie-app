// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'login_page_view.dart';

class IntroScreenView extends GetView {
  PageController _pageController = PageController();
  int index = 1;

  IntroScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: Get.height * 0.8,
            child: PageView(
              onPageChanged: (index) {
                index++;
              },
              controller: _pageController,
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
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 36),
              child: SizedBox(
                height: 30,
                width: 120,
                child: SmoothPageIndicator(
                  count: 3,
                  controller: _pageController,
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
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFE94335),
              ),
              margin: EdgeInsets.only(top: 10),
              height: 46,
              width: 158,
              child: TextButton(
                onPressed: () {
                  _pageController.animateToPage(index++,
                      duration: const Duration(microseconds: 200),
                      curve: Curves.ease);
                  if (index > 3) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => GetStarted()));
                  }
                },
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.white),
                ),
              ),
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
        child: Column(children: [
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
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFE94335),
              ),
              margin: EdgeInsets.only(top: 100),
              height: 46,
              width: 158,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LogInPageView()));
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
