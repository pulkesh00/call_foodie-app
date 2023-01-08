// ignore_for_file: prefer_const_constructors

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginPageController extends GetxController {
  
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final showPassword = false.obs;
  final loading = false.obs;
  final box = GetStorage();
  @override
  void onInit() {
    super.onInit();
    CountryFlag();
  }

  void CountryFlag() {
   }
}
