import 'package:commerce/src/features/authentication/controllers/signup_controller.dart';
import 'package:commerce/src/features/core/controllers/customer_controller.dart';

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
    final controller = Get.put(CustomerController());
    final _formKey = GlobalKey<FormState>();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.firstName,
              decoration: const InputDecoration(
                label: Text(tFirstName),
                prefixIcon: Icon(Icons.person_outline_rounded),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              controller: controller.lastName,
              decoration: const InputDecoration(
                label: Text(tLastName),
              ),
            ),
            const SizedBox(
              height: tFormHeight -20,
            ),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                label: Text(tEmail),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              controller: controller.phoneNo,
              decoration: const InputDecoration(
                label: Text(tPhoneNo),
                prefixIcon: Icon(Icons.phone_outlined),
              ),
              // initialCountryCode: 'KE',
              // onChanged: (phone) {
              //   print(phone.completeNumber);
              // },
              // onCountryChanged: (country) {
              //   print('Country changes to: ' + country.name);
              // },
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
