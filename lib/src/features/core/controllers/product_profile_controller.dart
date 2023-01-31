import 'package:commerce/src/features/authentication/models/product_model.dart';
import 'package:commerce/src/repository/authentication_repository/authentication_repository.dart';
import 'package:commerce/src/repository/product_repository/product_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductProfileController extends GetxController {
  static ProductProfileController get instance => Get.find();

  // Controllers
  final title = TextEditingController();
  final description = TextEditingController();
  final price = TextEditingController();
  final sku = TextEditingController();
  final barcode = TextEditingController();
  final quantity = TextEditingController();

  final _authRepo = Get.put(AuthenticationRepository());
  final _productRepo = Get.put(ProductRepository());

  /// Step 3 - Get User Email and pass to Customer Profile Repository to fetch customer record.

  getProductData() {
    final email = _authRepo.firebaseUser.value?.email;
    if (email != null) {
      return _productRepo.getProductDetails(email);
    } else {
      Get.snackbar("Error", "Login to continue");
    }
  }

  Future<List<Product>> getAllProduct() async {
    return await _productRepo.allProduct();
  }

  // updateRecord(ProductModel product) async {
  //   await _productRepo.updateCustomerRecord(product);
  // }
}
