// ignore_for_file: prefer_const_constructors

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginPageController extends GetxController {
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final countryCode = TextEditingController();

  final showPassword = false.obs;
  var phone = "".obs;
  static String verify = "";
  final loading = false.obs;
  var userEmail = ''.obs;
  final box = GetStorage();

  @override
  void onInit() {
    super.onInit();
  }
}
