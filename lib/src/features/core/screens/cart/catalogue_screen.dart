import 'package:commerce/src/constants/sizes.dart';
import 'package:commerce/src/features/core/screens/cart/cart_screen.dart';
import 'package:commerce/src/features/core/screens/cart/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Catalog")),
      body: SafeArea(
        
        child: Column(
        
          children: [
            CatalogProducts(),
            SizedBox(
              
              width: 90,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const CartScreen()),
                child: const Text('Go to Cart'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}