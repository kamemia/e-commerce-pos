import 'package:commerce/src/constants/image_strings.dart';
import 'package:commerce/src/constants/sizes.dart';
import 'package:commerce/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

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
              Form(
                child: Container(
                  padding:  const EdgeInsets.symmetric(vertical: tFormHeight -10),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person_outline_outlined),
                        labelText: tEmail,
                        hintText: tEmailHint,
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: tFormHeight,),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.fingerprint),
                        labelText: tPassword,
                        hintText: tPassword,
                        border: OutlineInputBorder(),
                      suffixIcon: 
                        IconButton(onPressed: null, 
                        icon: Icon(Icons.remove_red_eye_sharp),
                        ),
                      ),
                    ),
                    const SizedBox(height: tFormHeight -20),
                    Align(
                      alignment: Alignment.centerRight, 
                      child: TextButton(onPressed: () {}, 
                      child: const Text(tForgetPassword)),
                      ),
                    ElevatedButton(onPressed: () {}, 
                    child: Text(tLogin.toUpperCase()),
                    ),
                  ],
              ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
