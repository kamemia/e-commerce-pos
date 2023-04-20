import 'package:commerce/src/constants/sizes.dart';
import 'package:commerce/src/features/core/screens/payments/payment_button.dart';
import 'package:flutter/material.dart';
import 'widgets/widgets.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Your Cart")),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              CartProducts(),
              CartTotal(),
              const SizedBox(height: 20),
              // MyApp(),
              const SizedBox(height: 20),
              PaymentButton(),
            ],
          ),
        ),
      ),
    );
  }
}
