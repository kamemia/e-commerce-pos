import 'package:commerce/src/features/authentication/models/product_model.dart';
import 'package:commerce/src/features/authentication/models/sale_model.dart';
import 'package:commerce/src/repository/product_repository/product_repository.dart';
import 'package:commerce/src/repository/sales_repository/sale_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SalesController extends GetxController {
  static SalesController get instance => Get.find();

  // TextField Controllers to get data from TextFields
  final title = TextEditingController();
  final description = TextEditingController();
  final quantity = TextEditingController();
  final sku = TextEditingController();
  final price = TextEditingController();
  final barcode = TextEditingController();

  final salesRepo = Get.put(SalesRepository());

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
  void createSales(SalesModel sales) {
    salesRepo.createSales(sales);
    // Get.to(() => const Dashboard());
  }
}
