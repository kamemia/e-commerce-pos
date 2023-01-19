// ignore_for_file: unused_import

import 'package:commerce/src/common_widgets/form/form_header_widget.dart';
import 'package:commerce/src/constants/image_strings.dart';
import 'package:commerce/src/constants/sizes.dart';
import 'package:commerce/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

import 'login_footer_widget.dart';
import 'login_form_widget.dart';
import 'login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: const[
              FormHeaderWidget(
                image: tWelcomeScreenImage, 
                title: tLoginTitle, 
                subTitle: tLoginSubTitle),
              LoginFormWidget(),
              LoginFooterWidget()
            ],
          ),
        ),
      )),
    );
  }
}

