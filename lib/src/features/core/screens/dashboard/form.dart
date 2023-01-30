import 'package:commerce/src/features/authentication/models/product_model.dart';
import 'package:commerce/src/features/core/screens/product/widgets/dropdown.dart';
import 'package:commerce/src/features/core/controllers/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:commerce/src/constants/sizes.dart';
import 'package:commerce/src/constants/text_strings.dart';
import 'package:get/get.dart';



class ProductFormWidget extends StatelessWidget {
  const ProductFormWidget({
    Key? key,
  }) : super(key: key);


  

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController());
    final _formKey = GlobalKey<FormState>();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              validator: (s) {
                if (s!.isEmpty) {
                  return "This is a required field";
                }
                return null;
              },
              controller: controller.title,
              decoration: const InputDecoration(
                label: Text(tSalesTitle),
                prefixIcon: Icon(Icons.category_outlined),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              onChanged: ((value) {
                
              }),
              keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLines: 5,
              decoration: const InputDecoration(
                label: Text("Description"),
                prefixIcon: Icon(Icons.description_outlined),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            const Text("Price"),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            
            TextFormField(
              validator: (s) {
                if (s!.isEmpty) {
                  return "This is a required field";
                }
                return null;
              },
              controller: controller.price,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text("Price"),
                prefixIcon: Icon(Icons.monetization_on_outlined),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            const Text("Inventory"),
            const SizedBox(
              height: tFormHeight - 10,
            ),
            
            MyHomePage(),
            const SizedBox(
              height: tFormHeight - 10,
            ),
            
            // SizedBox(
            //   width: double.infinity,
            //   child: ElevatedButton(

            //     onPressed: () async {
            //     String sku = SKUGenerator.generateSKU();
            //     // await _firestore.collection('items').document(sku).setData({
            //     //   'sku': sku,
            //     //   'created_at': Timestamp.now(),
            //     // }
            //     print('SKU $sku added to Firestore');
            //   },
            //   child: const Text('Generate SKU'),
            //   ),
            // ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              controller: controller.barcode,
              keyboardType: const TextInputType.numberWithOptions(),
              decoration: const InputDecoration(label: Text("Barcode")),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            const Text("Quantity"),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              validator: (s) {
                if (s!.isEmpty) {
                  return "This is a required field";
                }
                return null;
              },
              controller: controller.quantity,
              keyboardType: const TextInputType.numberWithOptions(),
              decoration: const InputDecoration(
                  label: Text("Quantity"),
                  prefixIcon: Icon(Icons.numbers_outlined)),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final product = ProductModel(
                      title: controller.title.text.trim(),
                      description: controller.description.text.trim(),
                      price: controller.price.text.trim(),
                      sku: controller.sku.text.trim(),
                      barcode: controller.barcode.text.trim(),
                      quantity: controller.quantity.text.trim(),
                    );
                    ProductController.instance.createProduct(product);
                  }
                },
                child: Text("Add Product".toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}


