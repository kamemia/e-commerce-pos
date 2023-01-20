import 'package:commerce/src/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  static ProductController get instance => Get.find();

  // TextField Controllers to get data from TextFields
  final title = TextEditingController();
  final email = TextEditingController();
  final addresses = TextEditingController();
  final quantity = TextEditingController();
  final lastName = TextEditingController();
  final phoneNo = TextEditingController();

  //Call this function from Desing & it will do the rest
  // void registerUser(String email, String password) {
  //   String? error = AuthenticationRepository.instance
  //       .createUserWithEmailAndPassword(email, password) as String?;
  //   if (error != null) {
  //     Get.showSnackbar(GetSnackBar(
  //       message: error.toString(),
  //     ));
  //   }
  // }

  // Get phoneNo from user and pass it to Auth Repository for firebase Authentication
  // void phoneAuthentication(String phoneNo) {
  //   AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  // }
}
