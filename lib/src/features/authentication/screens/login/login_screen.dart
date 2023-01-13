import 'package:commerce/src/constants/image_strings.dart';
import 'package:commerce/src/constants/sizes.dart';
import 'package:commerce/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

import 'login_form_widget.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Section 1
              Image(image: const AssetImage(tWelcomeScreenImage), height: size.height * 0.2,),
              Text(
                tLoginTitle,
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                tLoginSubTitle,
                style: Theme.of(context).textTheme.bodyText1,
              ),

              // Section 2 {form}
              const LoginForm(),
            ],
          ),
        ),
      )),
    );
  }
}

