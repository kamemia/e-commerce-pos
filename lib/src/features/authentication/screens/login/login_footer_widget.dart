import 'package:commerce/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:commerce/src/constants/image_strings.dart';
import 'package:commerce/src/constants/sizes.dart';
import 'package:commerce/src/constants/text_strings.dart';
import 'package:get/get.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: tFormHeight-20,),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(image: AssetImage(tGoogleLogoImage), width: 20.0,),
            onPressed: () {}, 
            label: const Text(tSignInWithGoogle),
          ),
        ),
        const SizedBox(height: tFormHeight -20,),
        TextButton(
          onPressed: () => Get.to(() => const SignUpScreen()), 
          child: Text.rich(
            TextSpan(
              children: [
              TextSpan(text: tDontHaveAnAccount, style: Theme.of(context).textTheme.bodyText1,),
              const TextSpan(text: tSignup, style: TextStyle(color: Colors.blue),
                ),
              ]
            ),
          ),
        ),
      ],
    );
  }
}
