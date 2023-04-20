import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../GlobalComponents/button_global.dart';
import '../../../../../constant.dart';
import 'package_details.dart';
import '../Payment/payment_options.dart';
import 'package:nb_utils/nb_utils.dart';

class BasicPackage extends StatefulWidget {
  const BasicPackage({Key? key}) : super(key: key);

  @override
  _BasicPackageState createState() => _BasicPackageState();
}

class _BasicPackageState extends State<BasicPackage> {
  bool isMonthly = false;
  bool isHalfYear = false;
  bool isYearly = false;
  bool isLifetime = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Basic Package',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isMonthly == false ? isMonthly = true : isMonthly = false;
                isLifetime = false;
                isHalfYear = false;
                isYearly = false;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Card(
                elevation: 0.0,
                shape: isMonthly
                    ? RoundedRectangleBorder(
                        side: BorderSide(color: kMainColor, width: 2.0),
                        borderRadius: BorderRadius.circular(5.0))
                    : RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(5.0)),
                child: ListTile(
                  leading: Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                      shape: CircleBorder(),
                      checkColor: Colors.white,
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => kMainColor),
                      value: isMonthly,
                      onChanged: (bool? value) {},
                    ),
                  ),
                  title: Text('Monthly Fee'),
                  subtitle: Text('have to pay \$120 every 30 days'),
                  trailing: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text(
                      '\$120',
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontSize: 18.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isHalfYear == false ? isHalfYear = true : isHalfYear = false;
                isMonthly = false;
                isLifetime = false;
                isYearly = false;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Card(
                elevation: 0.0,
                shape: isHalfYear
                    ? RoundedRectangleBorder(
                        side: BorderSide(color: kMainColor, width: 2.0),
                        borderRadius: BorderRadius.circular(5.0))
                    : RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(5.0)),
                child: ListTile(
                  leading: Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                      shape: CircleBorder(),
                      checkColor: Colors.white,
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => kMainColor),
                      value: isHalfYear,
                      onChanged: (bool? value) {},
                    ),
                  ),
                  title: Text('Six Month Fee'),
                  subtitle: Text('have to pay \$610 every 30 days'),
                  trailing: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text(
                      '\$610',
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontSize: 18.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isYearly == false ? isYearly = true : isYearly = false;
                isMonthly = false;
                isHalfYear = false;
                isLifetime = false;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Card(
                elevation: 0.0,
                shape: isYearly
                    ? RoundedRectangleBorder(
                        side: BorderSide(color: kMainColor, width: 2.0),
                        borderRadius: BorderRadius.circular(5.0))
                    : RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(5.0)),
                child: ListTile(
                  leading: Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                      shape: CircleBorder(),
                      checkColor: Colors.white,
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => kMainColor),
                      value: isYearly,
                      onChanged: (bool? value) {},
                    ),
                  ),
                  title: Text('One Year Fee'),
                  subtitle: Text('have to pay \$1020 every Year'),
                  trailing: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text(
                      '\$1020',
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontSize: 18.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isLifetime == false ? isLifetime = true : isLifetime = false;
                isMonthly = false;
                isHalfYear = false;
                isYearly = false;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Card(
                elevation: 0.0,
                shape: isLifetime
                    ? RoundedRectangleBorder(
                        side: BorderSide(color: kMainColor, width: 2.0),
                        borderRadius: BorderRadius.circular(5.0))
                    : RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(5.0)),
                child: ListTile(
                  leading: Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                      shape: CircleBorder(),
                      checkColor: Colors.white,
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => kMainColor),
                      value: isLifetime,
                      onChanged: (bool? value) {},
                    ),
                  ),
                  title: Text('Lifetime Fee'),
                  subtitle: Text('have to pay \$5000 Once'),
                  trailing: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text(
                      '\$5000',
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontSize: 18.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
          ButtonGlobalWithoutIcon(
            buttontext: 'Buy Now',
            buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
            onPressed: (){
              PaymentOptions().launch(context);
            },
            buttonTextColor: Colors.white,
          ),
          TextButton(
            onPressed: (){
              PackageDetails().launch(context);
            },
            child: Text(
              'View details about this package',
              style: GoogleFonts.poppins(
                color: kMainColor,
                fontSize: 14.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
