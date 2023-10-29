import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:la_canasta/src/features/main_page/common_mp_widgets/navigation_bar.dart';
import 'package:la_canasta/src/repository/authentication_repository/authenticacion_repository.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.find();

  void verifyOTP(String otp) async {
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(const MainNavigationBar()) : Get.back();
  }

}