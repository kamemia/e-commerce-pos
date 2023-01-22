import 'package:commerce/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../features/authentication/controllers/login_controller.dart';

// ignore: use_key_in_widget_constructors
class PasswordField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PasswordFieldState();
}

class PasswordFieldState extends State<PasswordField> {
  bool obscurePassword = true;

  @override 
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return TextFormField(
      validator: (s) {
        if (s!.isEmpty) {
          return "This is a required field";
        }
        return null;
      },
      obscureText: obscurePassword,
      keyboardType: TextInputType.visiblePassword,
      controller: controller.password,
      decoration: InputDecoration(
      prefixIcon: const Icon(Icons.fingerprint),
        labelText: tPassword,
        hintText: tPassword,
      suffixIcon: IconButton(
        onPressed: () => setState(() => obscurePassword = !obscurePassword), 
        icon: Icon(
          obscurePassword ? Icons.visibility : Icons.visibility_off,
          color: Colors.grey,
        ),
      ),
      ),
    );
  }
}
