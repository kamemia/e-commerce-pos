import 'package:commerce/src/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../constants/sizes.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: tSecondaryColor,
      side: BorderSide(color: tSecondaryColor),
      padding: EdgeInsets.symmetric(vertical:  tButtonHeight),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData();
}
