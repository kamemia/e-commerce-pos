// import 'package:commerce/src/common_widgets/form/form_header_widget.dart';
// import 'package:commerce/src/constants/image_strings.dart';
// import 'package:commerce/src/constants/sizes.dart';
// import 'package:commerce/src/constants/text_strings.dart';
// import 'package:commerce/src/features/core/screens/sale/widgets/sales_form_widget.dart';
// import 'package:flutter/material.dart';

// class SalesScreen extends StatelessWidget {
//   const SalesScreen({Key ? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Container(
//             padding: const EdgeInsets.all(tDefaultSize),
//             child: Column(
//               children: const [
//                 FormHeaderWidget(
//                   image: tWelcomeScreenImage,
//                   title: tSignup,
//                   subTitle: tSignUpSubTitle,
//                   ),
//                 SalesFormWidget(),
//               ],
//             ),
//           ),
//         ),
//       )
//     );
//   }
// }
import 'package:commerce/src/constants/sizes.dart';
import 'package:commerce/src/features/core/controllers/cart_controller.dart';
import 'package:commerce/src/features/core/controllers/cartproduct_controller.dart';
import 'package:commerce/src/features/core/controllers/product_profile_controller.dart';
import 'package:commerce/src/features/authentication/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class SalesScreen extends StatelessWidget {
  final cartController = Get.put(CartController());
  final CartProductController cartproductController = Get.find();
  final int index;
  SalesScreen({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductProfileController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white70,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text("Sales", style: Theme.of(context).textTheme.headline2),
      ),
      body: Container(
          child: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: FutureBuilder<List<Product>>(
          future: controller.getAllProduct(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data!.length,
                  itemBuilder: (c, index) {
                    return Column(
                      children: [
                        SizedBox(
                          // height: 10,
                          child: ListTile(
                            minVerticalPadding: 15,
                            iconColor: Colors.blue,
                            tileColor: Colors.blue.withOpacity(0.1),
                            leading: const Icon(Icons.inventory_2_outlined),
                            title:
                                Text("Title: ${snapshot.data![index].title}"),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      cartController.addProduct(
                                          cartproductController.products[index]);
                                    },
                                    icon: const Icon(Icons.add_circle)),
                                Text("Price: ${snapshot.data![index].price}"),
                                // Text("${snapshot.data![index].sku}"),
                                // Text("Quantity: ${snapshot.data![index].quantity}"),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20)
                      ],
                    );
                  },
                );
              } else if (snapshot.hasError) {
                return Center(child: Text(snapshot.error.toString()));
              } else {
                return const Center(child: Text("Something went wrong"));
              }
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      )),
    );
  }
}
