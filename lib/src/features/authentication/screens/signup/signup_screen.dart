// ignore_for_file: unused_import

import 'package:commerce/src/common_widgets/form/form_header_widget.dart';
import 'package:commerce/src/constants/colors.dart';
import 'package:commerce/src/constants/image_strings.dart';
import 'package:commerce/src/constants/sizes.dart';
import 'package:commerce/src/constants/text_strings.dart';
import 'package:commerce/src/features/authentication/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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

                Column(
                  children: [
                    const Text("OR"),
                    const SizedBox(height: tFormHeight -20),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {}, 
                        icon: const Image(image: AssetImage(tGoogleLogoImage), width: 20.0,),
                        label: Text(tSignInWithGoogle.toUpperCase()), 
                      ),
                    ),
                    TextButton(
                      onPressed: () => Get.to(()=> const LoginScreen()), 
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text: tAlreadyHaveAnAccount, style: Theme.of(context).textTheme.bodyText1),
                            TextSpan(text:tLogin.toUpperCase())
                          ]
                        )
                      )
                    ),
                  ]
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}

