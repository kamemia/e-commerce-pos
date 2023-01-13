import 'package:commerce/src/constants/colors.dart';
import 'package:commerce/src/constants/image_strings.dart';
import 'package:commerce/src/constants/sizes.dart';
import 'package:commerce/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage(tWelcomeScreenImage), height: height * 0.6),
            Column(
              children: [
                Text(tWelcomeTitle, style: Theme.of(context).textTheme.headline3,),
                Text(tWelcomeSubTitle, style: Theme.of(context).textTheme.bodyText1, 
                textAlign: TextAlign.center,),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: (){}, 
                    child: Text(tLogin.toUpperCase()),
                    ),
                    ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(),
                      foregroundColor: tWhiteColor,
                      backgroundColor: tSecondaryColor,
                      side: BorderSide(color: tSecondaryColor),
                      padding: EdgeInsets.symmetric(vertical:  tButtonHeight),
                    ), 
                    child: Text(tSignup.toUpperCase()),
                    ),
                    ),
              ],
            )
          ],
        ),
        ),
      );
  }
}
