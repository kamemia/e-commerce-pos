import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../GlobalComponents/button_global.dart';
import '../../../../../GlobalComponents/tab_buttons.dart';
import '../../../../../constant.dart';

class DealerSAlesDetails extends StatefulWidget {
  const DealerSAlesDetails({Key? key}) : super(key: key);

  @override
  _DealerSAlesDetailsState createState() => _DealerSAlesDetailsState();
}

class _DealerSAlesDetailsState extends State<DealerSAlesDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sales Details',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          Icon(Icons.person_add_alt),
          Icon(Icons.more_vert_outlined),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10.0,
          ),
          Hero(
            tag: 'TabButton',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TabButton(
                  background: kDarkWhite,
                  text: kMainColor,
                  title: 'Customer',
                  press: () {
                    Navigator.pushNamed(context, '/SalesDetails');
                  },
                ),
                SizedBox(
                  width: 20.0,
                ),
                TabButton(
                  background: kDarkWhite,
                  text: kMainColor,
                  title: 'Wholesale',
                  press: () {
                    Navigator.pushNamed(context, '/WholeSalesDetails');
                  },
                ),
                SizedBox(
                  width: 20.0,
                ),
                TabButton(
                  background: kMainColor,
                  text: Colors.white,
                  title: 'Dealer',
                  press: () {
                    Navigator.pushNamed(context, '/DealerSalesDetails');
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 10.0),
            child: Row(
              children: [
                Text(
                  'Smart Watch x 1',
                  style: GoogleFonts.poppins(
                    color: kGreyTextColor,
                    fontSize: 15.0,
                  ),
                ),
                Spacer(),
                Text(
                  '\$243.90',
                  style: GoogleFonts.poppins(
                    color: kGreyTextColor,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 10.0),
            child: Row(
              children: [
                Text(
                  'Smart Watch x 1',
                  style: GoogleFonts.poppins(
                    color: kGreyTextColor,
                    fontSize: 15.0,
                  ),
                ),
                Spacer(),
                Text(
                  '\$243.90',
                  style: GoogleFonts.poppins(
                    color: kGreyTextColor,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 10.0),
            child: Row(
              children: [
                Text(
                  'Smart Watch x 1',
                  style: GoogleFonts.poppins(
                    color: kGreyTextColor,
                    fontSize: 15.0,
                  ),
                ),
                Spacer(),
                Text(
                  '\$243.90',
                  style: GoogleFonts.poppins(
                    color: kGreyTextColor,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 10.0),
            child: Row(
              children: [
                Text(
                  'Smart Watch x 1',
                  style: GoogleFonts.poppins(
                    color: kGreyTextColor,
                    fontSize: 15.0,
                  ),
                ),
                Spacer(),
                Text(
                  '\$243.90',
                  style: GoogleFonts.poppins(
                    color: kGreyTextColor,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: kGreyTextColor,
            thickness: 0.5,
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 10.0),
            child: Row(
              children: [
                Text(
                  'Subtotal',
                  style: GoogleFonts.poppins(
                    color: kGreyTextColor,
                    fontSize: 15.0,
                  ),
                ),
                Spacer(),
                Text(
                  '\$243.90',
                  style: GoogleFonts.poppins(
                    color: kGreyTextColor,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 10.0),
            child: Row(
              children: [
                Text(
                  'Discount',
                  style: GoogleFonts.poppins(
                    color: kGreyTextColor,
                    fontSize: 15.0,
                  ),
                ),
                Spacer(),
                Text(
                  '\$243.90',
                  style: GoogleFonts.poppins(
                    color: kGreyTextColor,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: kDarkWhite,
            child: Padding(
              padding:
              const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 10.0),
              child: Row(
                children: [
                  Text(
                    'Total',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$243.90',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ButtonGlobal(
            iconWidget: Icons.arrow_forward,
            buttontext: 'Total \$202.90',
            iconColor: Colors.white,
            buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
