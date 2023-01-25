import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:commerce/src/features/authentication/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductRepository extends GetxController {
  static ProductRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  /// Store customer in firestore

  createCustomer(ProductModel product) async {
    await _db
        .collection("Products")
        .add(product.toJson())
        .whenComplete(
          () => Get.snackbar("Success", "The product has been created",
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

  /// Step 2 Fetch All Customers or Customer details
  Future<ProductModel> getCustomerDetails(String title) async {
    final snapshot =
        await _db.collection("Products").where("Title", isEqualTo: title).get();
    final customerData =
        snapshot.docs.map((e) => ProductModel.fromSnapshot(e)).single;
    return customerData;
  }

  Future<List<ProductModel>> allUser() async {
    final snapshot = await _db.collection("Products").get();
    final productData =
        snapshot.docs.map((e) => ProductModel.fromSnapshot(e)).toList();
    return productData;
  }
}
