import 'package:commerce/src/features/authentication/models/customer_model.dart';
import 'package:commerce/src/features/core/screens/dashboard/dashboard.dart';
import 'package:commerce/src/repository/authentication_repository/authentication_repository.dart';
import 'package:commerce/src/repository/customer_repository/customer_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerController extends GetxController {
  static CustomerController get instance => Get.find();

  // TextField Controllers to get data from TextFields
  final email = TextEditingController();
  final addresses = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final phoneNo = TextEditingController();

  final customerRepo = Get.put(CustomerRepository());

  //Call this function from Design & it will do the rest
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
  void createCustomer(CustomerModel customer) {
    customerRepo.createCustomer(customer);
    Get.to(() => const Dashboard());
  }
}
