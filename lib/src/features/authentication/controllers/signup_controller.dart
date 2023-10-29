import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:la_canasta/src/repository/authentication_repository/authenticacion_repository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  // TextFields controllers to get data from TextFields
  final fullName = TextEditingController();
  final email = TextEditingController();
  final phoneNo = TextEditingController();
  final password = TextEditingController();
  final passwordRepeat = TextEditingController();

  void registerUser(String email, String password){
    AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
  }

  void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }

}