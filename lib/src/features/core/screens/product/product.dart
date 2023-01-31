import 'package:commerce/src/constants/sizes.dart';
import 'package:commerce/src/features/core/controllers/product_profile_controller.dart';
import 'package:commerce/src/features/authentication/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class UpdateProductScreen extends StatelessWidget {
  const UpdateProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductProfileController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text("Products", style: Theme.of(context).textTheme.headline2),
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
                            title: Text(
                                "Title: ${snapshot.data![index].title}"),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Price: ${snapshot.data![index].price}"),
                                // Text("${snapshot.data![index].sku}"),
                                Text("Quantity: ${snapshot.data![index].quantity}"),
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
