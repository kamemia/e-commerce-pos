import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:commerce/src/features/authentication/models/sale_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SalesRepository extends GetxController {
  static SalesRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  /// Store customer in firestore

  createSales(SalesModel sales) async {
    await _db
        .collection("Sales")
        .add(sales.toJson())
        .whenComplete(
          () => Get.snackbar("Success", "The sales has been recorded",
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
  Future<SalesModel> getSalesDetails(String title) async {
    final snapshot =
        await _db.collection("Sales").where("Title", isEqualTo: title).get();
    final salesData =
        snapshot.docs.map((e) => SalesModel.fromSnapshot(e)).single;
    return salesData;
  }

  Future<List<SalesModel>> allProduct() async {
    final snapshot = await _db.collection("Sales").get();
    final salesData =
        snapshot.docs.map((e) => SalesModel.fromSnapshot(e)).toList();
    return salesData;
  }
}
