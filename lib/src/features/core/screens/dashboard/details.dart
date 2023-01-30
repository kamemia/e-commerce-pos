import 'package:commerce/main.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          }, icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: const Center(
        child: Text("Details Screen"),
      ),
    );
  }
}