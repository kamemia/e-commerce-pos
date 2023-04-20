import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../GlobalComponents/button_global.dart';
import '../../../../../constant.dart';


class AllProducts extends StatefulWidget {
  const AllProducts({Key? key}) : super(key: key);

  @override
  _AllProductsState createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Product List',
          style: GoogleFonts.poppins(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ButtonGlobal(
              iconWidget: Icons.arrow_forward,
              buttontext: 'Add New Product',
              iconColor: Colors.white,
              buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
              onPressed: () {
                Navigator.pushNamed(context, '/addProducts');
              }),
        ],
      ),
    );
  }
}
