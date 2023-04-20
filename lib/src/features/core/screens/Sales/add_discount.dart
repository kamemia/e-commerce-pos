import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../GlobalComponents/button_global.dart';
import '../../../../../GlobalComponents/tab_buttons.dart';
import '../../../../../constant.dart';

import 'package:nb_utils/nb_utils.dart';



class AddDiscount extends StatefulWidget {
  const AddDiscount({Key? key}) : super(key: key);

  @override
  _AddDiscountState createState() => _AddDiscountState();
}

class _AddDiscountState extends State<AddDiscount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Discount',
          style: GoogleFonts.poppins(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TabButton(
                      title: 'USD',
                      text: Colors.white,
                      background: kMainColor,
                      press: null,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TabButton(
                      title: '%',
                      text: kMainColor,
                      background: kDarkWhite,
                      press: null,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppTextField(
                textFieldType: TextFieldType.NAME,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Discount (USD)'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppTextField(
                textFieldType: TextFieldType.NAME,
                maxLines: 3,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Note'),
              ),
            ),
            ButtonGlobalWithoutIcon(
              buttontext: 'Save',
              buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
              onPressed: null,
              buttonTextColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
