import 'package:commerce/src/constants/sizes.dart';
import 'package:commerce/src/features/authentication/models/customer_model.dart';
import 'package:commerce/src/features/core/controllers/customer_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class UpdateCustomerScreen extends StatelessWidget {
  const UpdateCustomerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CustomerProfileController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text("Customers", style: Theme.of(context).textTheme.headline2),
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: FutureBuilder<List<CustomerModel>>(
          future: controller.getAllCustomer(),
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
                          height: 70,
                          child: ListTile(
                            
                            iconColor: Colors.blue,
                            tileColor: Colors.blue.withOpacity(0.1),
                            leading: const Icon(LineAwesomeIcons.user_1),
                            title:
                                Text("Name: ${snapshot.data![index].firstName}"),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("${snapshot.data![index].phoneNo}"),
                                Text("${snapshot.data![index].email}"),
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
