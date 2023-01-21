import 'package:commerce/src/repository/authentication_repository/authentication_repository.dart';
import 'package:commerce/src/repository/customer_repository/customer_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerProfileController extends GetxController {
  static CustomerProfileController get instance => Get.find();

  final _authRepo = Get.put(AuthenticationRepository());
  final _customerRepo = Get.put(CustomerRepository());

  /// Step 3 - Get User Email and pass to Customer Profile Repository to fetch customer record.

  getCustomerData() {
    final email = _authRepo.firebaseUser.value?.email;
    if (email != null) {
      return _customerRepo.getCustomerDetails(email);
    } else {
      Get.snackbar("Error", "Login to continue");
    }
  }
}
