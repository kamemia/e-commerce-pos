import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:commerce/src/features/authentication/models/customer_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerRepository extends GetxController {
  static CustomerRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  createCustomer(CustomerModel customer) async {
    await _db
        .collection("Customers")
        .add(customer.toJson())
        .whenComplete(
          () => Get.snackbar("Success", "The customer has been created",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.green.withOpacity(0.1),
              colorText: Colors.green),
        )
        .catchError((error, stackTrace) {
      Get.snackbar("Error", "Something went wrong. Try again",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent.withOpacity(0.1),
          colorText: Colors.red);
      print(error.toString());
    });
  }
}
