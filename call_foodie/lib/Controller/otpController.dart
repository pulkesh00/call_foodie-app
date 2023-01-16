// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:call_foodie/main.dart';
import 'package:vibration/vibration.dart';

import 'package:country_picker/country_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pinput/pinput.dart';

import '../Routes/app_pages.dart';
import 'login_page_controller.dart';

class OtpController extends GetxController {
  final otpTextController = TextEditingController();
  final loading = true.obs;
  final box = GetStorage();
  var code = "";
  final wrongOtp = false.obs;
  final start = 30.obs;
  @override
  void onInit() {
    super.onInit();
    startTimer();
    otpTextController.text = '';
  }

  @override
  void onClose() {}

  void startTimer() {
    const onsec = Duration(seconds: 1);
    Timer timer = Timer.periodic(onsec, (timer) {
      if (start.value == 0) {
        timer.cancel();
      } else {
        start.value--;
      }
    });
  }

  otpVarified() async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: LoginPageController.verify, smsCode: code);

      await FirebaseAuth.instance.signInWithCredential(credential);
      loading.value = true;
      Get.offAllNamed(Routes.homePage);
    } catch (e) {
      if (code == otpTextController.text) {
        wrongOtp.value = true;
        Vibration.vibrate(duration: 400);
      }
      loading.value = true;
      showToast('OTP not valid');
      otpTextController.clear();
      wrongOtp.value = false;
    }
  }

  

  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
      fontSize: 22,
      color: Color.fromRGBO(30, 60, 87, 1),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(19),
      border: Border.all(color: Colors.black),
    ),
  );
}
