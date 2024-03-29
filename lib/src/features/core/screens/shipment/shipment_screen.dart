import 'package:commerce/src/common_widgets/form/form_header_widget.dart';
import 'package:commerce/src/constants/image_strings.dart';
import 'package:commerce/src/constants/sizes.dart';
import 'package:commerce/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

import 'widget/shipment_form_widget.dart';




class ShipmentScreen extends StatelessWidget {
  const ShipmentScreen({Key ? key}) : super(key: key);

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
                  image: tShippingImage, 
                  title: tShipmentScreenTitle, 
                  subTitle: tShipmentScreenSubTile,
                  ),
                ShipmentFormWidget(),
              ],
            ),
          ),
        ),
      )
    );
  }
}