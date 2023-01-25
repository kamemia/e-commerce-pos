import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:commerce/src/features/core/controllers/sales_controller.dart';
import 'package:commerce/src/features/core/screens/dashboard/dashboard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:commerce/src/features/core/screens/sale/widgets/dropdown_menu.dart';
import 'package:flutter/material.dart';
import 'package:commerce/src/constants/sizes.dart';
import 'package:commerce/src/constants/text_strings.dart';
import 'package:get/get.dart';

class SalesFormWidget extends StatefulWidget {
  const SalesFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SalesFormWidget> createState() => _SalesFormWidgetState();
}

class _SalesFormWidgetState extends State<SalesFormWidget> {
  double fprice = 0, fquantity = 0, result = 0;
  final fpricecontroller = TextEditingController();
  final fquantitycontroller = TextEditingController();

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
          children: <Widget>[
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
              controller: fpricecontroller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text(tPrice),
                prefixIcon: Icon(Icons.monetization_on_outlined),
              ),
              onChanged: (value) {
                fprice = double.parse(value);
                result = fprice * fquantity;
              },
            ),
            const SizedBox(
              height: tFormHeight,
            ),
            TextFormField(
              controller: fquantitycontroller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text(tQuantity),
                prefixIcon: Icon(Icons.numbers),
              ),
              onChanged: (value) {
                fquantity = double.parse(value);
                result = fprice * fquantity;
              },
            ),
            const SizedBox(
              height: tFormHeight,
            ),
            // StreamBuilder<QuerySnapshot>(
            //   stream:
            //       FirebaseFirestore.instance.collection("Products").snapshots(),
            //   builder: (BuildContext context,
            //       AsyncSnapshot<QuerySnapshot> snapshot) {
            //     if (!snapshot.hasData) return const CircularProgressIndicator();
            //     List<DropdownMenuItem> items = snapshot.data!.docs
            //         .map((doc) => DropdownMenuItem(
            //               child: Text(doc["Price"]),
            //               // value: doc.documentID,
            //             ))
            //         .toList();
            //     return DropdownButton(
            //       items: items,
            //       onChanged: (value) {
            //         // Update the selected value in Firestore
            //         FirebaseFirestore.instance
            //             .collection("Products")
            //             .doc(value);
            //         // .updateData({"selected": true});
            //       },
            //     );
            //   },
            // ),
            const SizedBox(
              height: tFormHeight,
            ),
            // Text(
            //   "Result: $result",
            //   textAlign: TextAlign.center,
            //   style: const TextStyle(backgroundColor: Colors.blueGrey,),
            //   ),

            // DropDown(),
            // const SizedBox(
            //   height: tFormHeight,
            // ),
            const SizedBox(height: tFormHeight),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const Dashboard());
                  // print("Information Saved");
                  // if (_formKey.currentState!.validate()) {
                  //   SignUpController.instance.registerUser(controller.email.text.trim(),controller.password.text.trim());
                  //   SignUpController.instance
                  //       .phoneAuthentication(controller.phoneNo.text.trim());
                  //   Get.to(() => const OTPScreen());
                  // }
                },
                child: Text("CHECKOUT: $result"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
