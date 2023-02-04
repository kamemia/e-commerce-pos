import 'package:commerce/src/common_widgets/form/password_field.dart';
import 'package:commerce/src/constants/sizes.dart';
import 'package:commerce/src/constants/text_strings.dart';
import 'package:commerce/src/features/authentication/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    final formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: tEmail,
                hintText: tEmailHint,
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: tFormHeight,
            ),
            // TextFormField(
            //   controller: controller.password,
            //   decoration: const InputDecoration(
            //     prefixIcon: Icon(Icons.fingerprint),
            //     labelText: tPassword,
            //     hintText: tPassword,
            //     border: OutlineInputBorder(),
            //     suffixIcon: IconButton(
            //       onPressed: null,
            //       icon: Icon(Icons.remove_red_eye_sharp),
            //     ),
            //   ),
            // ),
            PasswordField(),
            const SizedBox(height: tFormHeight - 20),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    ForgetPasswordScreen.buildShowModalBottomSheet(context);
                  },
                  child: const Text(tForgetPassword)),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    LoginController.instance.loginUser(
                        controller.email.text.trim(),
                        controller.password.text.trim());
                  }
                },
                child: Text(tLogin.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
