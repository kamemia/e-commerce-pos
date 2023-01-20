import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:commerce/src/features/core/controllers/sales_controller.dart';
import 'package:commerce/src/features/core/screens/sale/widgets/dropdown_menu.dart';
import 'package:flutter/material.dart';
import 'package:commerce/src/constants/sizes.dart';
import 'package:commerce/src/constants/text_strings.dart';
import 'package:get/get.dart';

class SalesFormWidget extends StatelessWidget {
  const SalesFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SalesController());
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
              height: tFormHeight,
            ),
            TextFormField(
              controller: controller.price,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text(tPrice),
                prefixIcon: Icon(Icons.monetization_on_outlined),
              ),
            ),
            const SizedBox(
              height: tFormHeight,
            ),
            TextFormField(
              controller: controller.quantity,
              decoration: const InputDecoration(
                label: Text(tQuantity),
                prefixIcon: Icon(Icons.numbers),
              ),
            ),
            const SizedBox(
              height: tFormHeight,
            ),
            // DropDown(),
            // const SizedBox(
            //   height: tFormHeight,
            // ),
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
