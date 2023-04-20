

// import 'package:commerce/src/api_connection/api_connection.dart';
import 'package:commerce/src/common_widgets/form/password_field.dart';
import 'package:commerce/src/features/authentication/controllers/signup_controller.dart';
// import 'package:commerce/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:commerce/src/constants/sizes.dart';
import 'package:commerce/src/constants/text_strings.dart';
import 'package:get/get.dart';
// import 'package:http/http.dart' as http;

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  // validatUserEmail()
  // async {
  //   try
  //   {
  //     var res = await http.post(
  //       Url.parse(API.validateEmail),
  //       body: {
  //         'user_email': controller.email.text.trim(),
  //       }
  //     );
  //   }
  //   catch(e)
  //   {

  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final formKey = GlobalKey<FormState>();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              validator: (s) {
              if (s!.isEmpty) {
              return "This is a required field";
              }
              return null;
            },
              controller: controller.fullName,
              decoration: const InputDecoration(
                label: Text(tFullName),
                prefixIcon: Icon(Icons.person_outline_rounded),
              ),
            ),
            const SizedBox(
              height: tFormHeight -10,
            ),
            TextFormField(
              validator: (s) {
              if (s!.isEmpty) {
              return "This is a required field";
              }
              return null;
            },
              controller: controller.email,
              decoration: const InputDecoration(
                label: Text(tEmail),
                hintText: tEmailHint,
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 10,
            ),
            TextFormField(
              validator: (s) {
              if (s!.isEmpty) {
              return "This is a required field";
              }
              return null;
            },
              controller: controller.phoneNo,
              decoration: const InputDecoration(
                label: Text(tPhoneNo),
                prefixIcon: Icon(Icons.phone_outlined),
              ),
              // initialCountryCode: 'KE',
              // onChanged: (phone) {
              //   print(phone.completeNumber);
              // },
              // onCountryChanged: (country) {
              //   print('Country changes to: ' + country.name);
              // },
            ),
            const SizedBox(
              height: tFormHeight - 10,
            ),
            // TextFormField(
            //   controller: controller.password,
            //   decoration: const InputDecoration(
            //     label: Text(tPassword),
            //     prefixIcon: Icon(Icons.fingerprint_outlined),
            //   ),
            // ),
            PasswordField(),
            const SizedBox(
              height: tFormHeight - 10,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    SignUpController.instance.registerUser(controller.email.text.trim(),controller.password.text.trim());
                    // SignUpController.instance
                    //     .phoneAuthentication(controller.phoneNo.text.trim());
                    // Get.to(() => const OTPScreen());
                  }
                },
                child: Text(tSignup.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
