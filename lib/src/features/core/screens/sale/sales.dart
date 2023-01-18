import 'package:commerce/src/common_widgets/form/form_header_widget.dart';
import 'package:commerce/src/constants/image_strings.dart';
import 'package:commerce/src/constants/sizes.dart';
import 'package:commerce/src/constants/text_strings.dart';
import 'package:commerce/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';
import 'package:flutter/material.dart';


class SalesScreen extends StatelessWidget {
  const SalesScreen({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                const FormHeaderWidget(
                  image: tWelcomeScreenImage, 
                  title: tSignup, 
                  subTitle: tSignUpSubTitle,
                  ),
                const SignUpFormWidget(),
              ],
            ),
          ),
        ),
      )
    );
  }
}