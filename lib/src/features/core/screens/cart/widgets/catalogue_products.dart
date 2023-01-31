import 'package:commerce/src/features/core/controllers/cart_controller.dart';
import 'package:commerce/src/features/core/controllers/cartproduct_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CatalogProducts extends StatelessWidget {
  final cartproductController = Get.put(CartProductController());

  CatalogProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Flexible(
        child: ListView.builder(
            itemCount: cartproductController.products.length,
            itemBuilder: (BuildContext context, int index) {
              return CatalogProductCard(index: index);
            }),
      ),
    );
  }
}

class CatalogProductCard extends StatelessWidget {
  final cartController = Get.put(CartController());
  final CartProductController cartproductController = Get.find();
  final int index;

  CatalogProductCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // CircleAvatar(
          //   radius: 40,
          //   backgroundImage: NetworkImage(
          //     productController.products[index].imageUrl,
          //   ),
          // ),
          const SizedBox(width: 20),
          const Expanded(
            child: Text(
              'cartproductController.products[index].title',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              cartController.addProduct(cartproductController.products[index]);
            },
            icon: const Icon(
              Icons.add_circle,
            ),
          ),
          Expanded(
            child: Text('${cartproductController.products[index].price}'),
          ),
        ],
      ),
    );
  }
}