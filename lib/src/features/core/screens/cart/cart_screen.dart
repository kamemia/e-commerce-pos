import 'package:commerce/src/constants/sizes.dart';
import 'package:commerce/src/features/core/screens/payments/mpesa.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
              // MyHomePage(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (() {
                    Navigator.of(context).pop();
                    showDialog(
                      context: context, 
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Payment Method'),
                          content: Text(
                            'Mpesa Number'
                          ),
                        );
                      });
                  }),
                  child: Text('Pay'.toUpperCase()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
