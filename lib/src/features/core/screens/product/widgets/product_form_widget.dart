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
              controller: controller.quantity,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text(tQuantity),
                prefixIcon: Icon(Icons.numbers_outlined),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              controller: controller.addresses,
              decoration: const InputDecoration(
                label: Text(tAddress),
                prefixIcon: Icon(Icons.location_city_outlined),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  print("Information Saved");
                  // if (_formKey.currentState!.validate()) {
                  //   SignUpController.instance.registerUser(controller.email.text.trim(),controller.password.text.trim());
                  //   SignUpController.instance
                  //       .phoneAuthentication(controller.phoneNo.text.trim());
                  //   Get.to(() => const OTPScreen());
                  // }
                },
                child: Text(tSave.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
