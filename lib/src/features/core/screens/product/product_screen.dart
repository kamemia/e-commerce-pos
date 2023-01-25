import 'package:commerce/src/common_widgets/form/form_header_widget.dart';
import 'package:commerce/src/constants/image_strings.dart';
import 'package:commerce/src/constants/sizes.dart';
import 'package:commerce/src/features/core/screens/product/widgets/product_form_widget.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: const [
              FormHeaderWidget(
                image: tWelcomeScreenImage,
                title: "Add products",
                subTitle: "Get to add your new products for sale and inventory keeping",
              ),
              ProductFormWidget(),
            ],
          ),
        ),
      ),
    ));
  }
}
