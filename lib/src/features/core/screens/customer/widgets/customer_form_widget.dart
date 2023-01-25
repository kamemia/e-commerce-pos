import 'package:commerce/src/features/authentication/models/customer_model.dart';
import 'package:commerce/src/features/core/controllers/customer_controller.dart';
import 'package:flutter/material.dart';
import 'package:commerce/src/constants/sizes.dart';
import 'package:commerce/src/constants/text_strings.dart';
import 'package:get/get.dart';

class CustomerFormWidget extends StatelessWidget {
  const CustomerFormWidget({
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
              validator: (s) {
                if (s!.isEmpty) {
                  return "This is a required field";
                }
              },
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
              validator: (s) {
                if (s!.isEmpty) {
                  return "This is a required field";
                }
              },
              controller: controller.lastName,
              decoration: const InputDecoration(
                label: Text(tLastName),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              validator: (s) {
                if (s!.isEmpty) {
                  return "This is a required field";
                }
              },
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
              validator: (s) {
                if (s!.isEmpty) {
                  return "This is a required field";
                }
              },
              controller: controller.phoneNo,
              decoration: const InputDecoration(
                label: Text(tPhoneNo),
                prefixIcon: Icon(Icons.phone_outlined),
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
                  if (_formKey.currentState!.validate()) {
                    final customer = CustomerModel(
                      firstName: controller.firstName.text.trim(),
                      lastName: controller.lastName.text.trim(),
                      email: controller.email.text.trim(),
                      phoneNo: controller.phoneNo.text.trim(),
                      addresses: controller.addresses.text.trim(),
                    );
                    CustomerController.instance.createCustomer(customer);
                  }
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
