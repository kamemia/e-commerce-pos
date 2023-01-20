import 'package:commerce/src/constants/sizes.dart';
import 'package:flutter/material.dart';

class UserProfileScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(tDefaultSize),
      ),
    );
  }
}
