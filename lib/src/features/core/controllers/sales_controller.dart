import 'package:commerce/src/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SalesController extends GetxController {
  static SalesController get instance => Get.find();

  // TextField Controllers to get data from TextFields
  final title = TextEditingController();
  final price = TextEditingController();
  final quantity = TextEditingController();

  //Call this function from Desing & it will do the rest
  void registerUser(String email, String password) {
    String? error = AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password) as String?;
    if (error != null) {
      Get.showSnackbar(GetSnackBar(
        message: error.toString(),
      ));
    }
  }

  // Get phoneNo from user and pass it to Auth Repository for firebase Authentication
  void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }
}
