// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:call_foodie/Controller/login_page_controller.dart';
import 'package:call_foodie/Modules/Views/home_screen_view.dart';
import 'package:call_foodie/Modules/Views/otpView.dart';
import 'package:call_foodie/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

import 'package:get/get.dart';

import '../../Routes/app_pages.dart';

class LogInPageView extends GetView<LoginPageController> {
  const LogInPageView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut<LoginPageController>(() => LoginPageController());
    return Scaffold(
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Center(
          child: Obx(
            () => Container(
              color: Colors.white,
              height: Get.height,
              child: controller.loading.value
                  ? Column(
                      children: [
                        SizedBox(
                          width: Get.width,
                          height: Get.height * 0.5,
                          child: Image.asset(
                            'assets/images/login_image.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.1,
                          width: Get.width * 0.7,
                          child: Center(
                            child: Image.asset(
                              'assets/images/call_foodie_text.png',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                color: Colors.grey,
                                height: Get.height * 0.0031,
                                width: Get.width * 0.35,
                                margin: EdgeInsets.only(bottom: 5),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: SizedBox(
                                  height: Get.height * 0.021,
                                  width: Get.width * 0.19,
                                  child: DefaultTextStyle(
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.black),
                                      child: Text(
                                        'Log in or sign up',
                                      )),
                                ),
                              ),
                              Container(
                                color: Colors.grey,
                                height: Get.height * 0.0031,
                                width: Get.width * 0.35,
                                margin: EdgeInsets.only(bottom: 5),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: loginViaPhone(),
                        ),
                        Container(
                            padding: EdgeInsets.all(10),
                            width: Get.width * 0.9,
                            height: Get.height * 0.08,
                            child: ElevatedButton(
                                onPressed: () {
                                  if (controller.phoneController.text.length <
                                      10) {
                                    showToast(
                                        'Please Enter correct phone Number');
                                  } else {
                                    controller.phoneAuth();
                                  }
                                },
                                child: Text('Continue'))),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                color: Colors.grey,
                                height: Get.height * 0.0031,
                                width: Get.width * 0.45,
                                margin: EdgeInsets.only(bottom: 5),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: SizedBox(
                                  height: Get.height * 0.021,
                                  width: Get.width * 0.04,
                                  child: DefaultTextStyle(
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.black),
                                      child: Text(
                                        'OR',
                                      )),
                                ),
                              ),
                              Container(
                                color: Colors.grey,
                                height: Get.height * 0.0031,
                                width: Get.width * 0.4,
                                margin: EdgeInsets.only(bottom: 5),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                          child: loginViaSocial(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DefaultTextStyle(
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                              child: Text('Dont have an acocunt? '),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: DefaultTextStyle(
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                                child: Text('Sign Up Now'),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: Get.width * 0.4,
                          child: DefaultTextStyle(
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 8,
                              color: Colors.black,
                            ),
                            child: Text(
                                'By continue, you agree to our Terms of service Privacy Policy Content Polict '),
                          ),
                        ),
                      ],
                    )
                  : Image.asset(
                      'assets/images/loading.gif',
                    ),
            ),
          ),
        ),
      ),
    );
  }

  Row loginViaSocial() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SizedBox(
          height: 40,
          width: Get.width * 0.45,
          child: ElevatedButton(
            onPressed: () {
              controller.signInWithFacebook();
            },
            child: Icon(Icons.facebook),
          )),
      SizedBox(
          height: 40,
          width: Get.width * 0.45,
          child: ElevatedButton(onPressed: () {}, child: Icon(Icons.flag)))
    ]);
  }

  Row loginViaPhone() {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: Colors.grey),
          ),
          height: 50,
          width: Get.width * 0.15,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: TextField(
              controller: controller.countryCode,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              cursorColor: Colors.black,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '+91',
                hintStyle: TextStyle(color: Colors.black, fontSize: 14),
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: Colors.grey),
          ),
          margin: EdgeInsets.only(left: 4, right: 4),
          height: 50,
          width: Get.width * 0.75,
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 4.0),
            child: SizedBox(
              height: 50,
              width: Get.width * 0.55,
              child: TextField(
                onChanged: (value) {
                  controller.phone.value = value;
                },
                controller: controller.phoneController,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                cursorColor: Colors.black,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Phone Number',
                  hintStyle: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
