// ignore_for_file: prefer_const_constructors

import 'package:country_picker/country_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';
import 'package:get_storage/get_storage.dart';

import '../Routes/app_pages.dart';
import '../main.dart';

class LoginPageController extends GetxController {
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final countryCode = TextEditingController();

  final showPassword = false.obs;
  var phone = "".obs;
  static String verify = "";
  static int? resend;
  final loading = true.obs;
  var userEmail = ''.obs;
  final box = GetStorage();

  @override
  void onInit() {
    super.onInit();
  }

  phoneAuth() async {
    loading.value = false;
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+${countryCode.text + phone.value}',
      verificationCompleted: (PhoneAuthCredential credential) {
        showToast('OTP sent Successfully');
      },
      verificationFailed: (FirebaseAuthException e) {
        loading.value = true;
        showToast('Too many attemps, try again later!');
      },
      codeSent: (String verificationId, int? resendToken) {
        loading.value = true;
        LoginPageController.verify = verificationId;
        resend = resendToken;
        showToast('OTP sent Successfully');

        Get.toNamed(Routes.otpScreen);
      },
      timeout: const Duration(seconds: 25),
      forceResendingToken: resend,
      codeAutoRetrievalTimeout: (String verificationId) {
        
      },
    );
  }

  Future<UserCredential> signInWithFacebook() async {
    // Trigger the sign-in flow
    loading.value = false;

    final LoginResult loginResult = await FacebookAuth.instance
        .login(permissions: ['email', 'public_profile', 'user_birthday']);

    if (await FacebookAuth.instance.accessToken == null) {
      loading.value = true;
      showToast('Fail to login via facebook');
    }
    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.token);

    final userData = await FacebookAuth.instance.getUserData();
    userEmail.value = userData['email'];
    loading.value = true;
    if (loginResult.status == LoginStatus.success) {
      await Get.offAllNamed(Routes.homePage);
    } else if (loginResult.status == LoginStatus.failed ||
        loginResult.status == LoginStatus.cancelled) {
      showToast('Fail to login via facebook');
    }
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }
}
