import 'package:commerce/src/features/authentication/models/product_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  // Add a dict to store the products in the cart.
  var _products = {}.obs;

  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }

    Get.snackbar(
      "Product Added",
      "You have added the ${product.title} to the cart",
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }

  void removeProduct(Product product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -= 1;
    }
  }

  get products => _products;

  get productSubtotal => _products.entries
      .map((product) => int.parse(product.key.price) * product.value)
      .toList();

  get total => _products.entries
      .map((product) => int.parse(product.key.price) * product.value)
      .toList()
      .reduce((value, element) => value + element)
      .toDouble();
}
