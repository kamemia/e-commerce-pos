import 'package:commerce/src/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/widgets.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your Cart")),
      body: SingleChildScrollView(
        child: Container(
          // padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              CartProducts(),
              CartTotal(),
            ],
          ),
        ), 
      ),
    );
  }
}