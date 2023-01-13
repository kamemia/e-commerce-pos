import 'package:commerce/src/common_widgets/form/form_header_widget.dart';
import 'package:commerce/src/constants/image_strings.dart';
import 'package:commerce/src/constants/sizes.dart';
import 'package:commerce/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(children: [
          SizedBox(height: tDefaultSize * 4),
          FormHeaderWidget(
            image: tForgetPasswordImage, 
            title: tForgetPassword, 
            subTitle: tForgetPasswordSubTitle,
          ),
        ]),
      ),
    );
  }
}
