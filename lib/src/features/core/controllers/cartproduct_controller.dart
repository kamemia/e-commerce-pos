import 'package:commerce/src/features/authentication/models/firestore_db.dart';
import 'package:commerce/src/features/authentication/models/product_model.dart';
import 'package:get/get.dart';

class CartProductController extends GetxController {
  // Add a list of Product objects.
  final products = <Product>[].obs;

  @override
  void onInit() {
    products.bindStream(FirestoreDB().getAllProducts());
    super.onInit();
  }
}