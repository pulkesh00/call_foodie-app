import 'package:call_foodie/Controller/login_page_controller.dart';
import 'package:call_foodie/Modules/Views/home_screen_view.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../../Controller/otpController.dart';

class OtpView extends GetView<OtpController> {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut<OtpController>(() => OtpController());
    // controller.otpTextController.text = '';
    return Scaffold(
      body: SingleChildScrollView(
        // physics: BouncingScrollPhysics(),
        child: Container(
          color: Colors.white,
          height: Get.height,
          child: Column(
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
                        child: const DefaultTextStyle(
                            style: TextStyle(fontSize: 10, color: Colors.black),
                            child: Text(
                              'Enter OTP',
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
                child: OtpBox(),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  width: Get.width * 0.9,
                  height: Get.height * 0.08,
                  child: ElevatedButton(
                      onPressed: () async {
                        PhoneAuthCredential credential =
                            PhoneAuthProvider.credential(
                                verificationId: LoginPageController.verify,
                                smsCode: controller.otpTextController.text);

                        // Sign the user in (or link) with the credential
                        await FirebaseAuth.instance
                            .signInWithCredential(credential);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreenView()));
                      },
                      child: Text('Continue'))),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  OtpBox() {
    return Pinput(
      length: 6,

      controller: controller.otpTextController,
      androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
      listenForMultipleSmsOnAndroid: true,
      defaultPinTheme: controller.defaultPinTheme,
      validator: (value) {
        return value == LoginPageController.verify ? null : 'Pin is incorrect';
      },
      // onClipboardFound: (value) {
      //   debugPrint('onClipboardFound: $value');
      //   pinController.setText(value);
      // },
      hapticFeedbackType: HapticFeedbackType.lightImpact,
      onCompleted: (pin) {
        debugPrint('onCompleted: $pin');
      },
      cursor: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 9),
            width: 22,
            height: 1,
            color: Colors.red,
          ),
        ],
      ),
      focusedPinTheme: controller.defaultPinTheme.copyWith(
        decoration: controller.defaultPinTheme.decoration!.copyWith(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black),
        ),
      ),
      submittedPinTheme: controller.defaultPinTheme.copyWith(
        decoration: controller.defaultPinTheme.decoration!.copyWith(
          color: Colors.white,
          borderRadius: BorderRadius.circular(19),
          border: Border.all(color: Colors.black),
        ),
      ),
      errorPinTheme: controller.defaultPinTheme.copyBorderWith(
        border: Border.all(color: Colors.redAccent),
      ),
    );
  }
}
