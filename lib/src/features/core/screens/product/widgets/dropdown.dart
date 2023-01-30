import 'package:commerce/src/constants/sizes.dart';
import 'package:commerce/src/features/core/controllers/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _skuCode = '';

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController());
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            decoration: const InputDecoration(labelText: 'SKU Code'),
            enabled: false,
            controller: controller.sku,
          ),
          const SizedBox(
              height: tFormHeight - 20,
            ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _skuCode = generateSKUCode();
                });
              },
              child: const Text('Generate SKU Code'),
            ),
          ),
        ],
      ),
    );
  }

  String generateSKUCode() {
    // replace this with your own logic to generate a SKU code
    return 'SKU-' + DateTime.now().millisecondsSinceEpoch.toString();
  }
}
