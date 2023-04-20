import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../GlobalComponents/button_global.dart';
import '../../../../../constant.dart';

class PaymentCompleted extends StatefulWidget {
  const PaymentCompleted({Key? key}) : super(key: key);

  @override
  _PaymentCompletedState createState() => _PaymentCompletedState();
}

class _PaymentCompletedState extends State<PaymentCompleted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Payment Complete',
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
          PopupMenuButton(
            itemBuilder: (BuildContext bc) => [
              PopupMenuItem(
                  child: Text('Add Promo Code'), value: "/addPromoCode"),
              PopupMenuItem(child: Text('Add Discount'), value: "/addDiscount"),
              PopupMenuItem(
                  child: Text('Cancel All Product'), value: "/settings"),
              PopupMenuItem(
                  child: Text('Vat Doesn\'t Apply'), value: "/settings"),
            ],
            onSelected: (value) {
              Navigator.pushNamed(context, '$value');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Center(
              child: Image(
                image: AssetImage('images/complete.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                elevation: 5.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text(
                            'Total',
                            style: GoogleFonts.poppins(
                              fontSize: 20.0,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            '\$123.09',
                            style: GoogleFonts.poppins(
                              fontSize: 20.0,
                              color: kGreyTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: SizedBox(
                        height: 50.0,
                        width: 1.0,
                        child: Container(
                          color: kGreyTextColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text(
                            'Return',
                            style: GoogleFonts.poppins(
                              fontSize: 20.0,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            '\$12.09',
                            style: GoogleFonts.poppins(
                              fontSize: 20.0,
                              color: kGreyTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            ListTile(
              leading: Icon(
                Icons.payment,
                color: kGreyTextColor,
              ),
              title: Text('Invoice: #121342'),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: kGreyTextColor,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.payment,
                color: kGreyTextColor,
              ),
              title: Text('Send Email'),
              trailing: Icon(
                Icons.email,
                color: kGreyTextColor,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.payment,
                color: kGreyTextColor,
              ),
              title: Text('Send Sms'),
              trailing: Icon(
                Icons.message_outlined,
                color: kGreyTextColor,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.payment,
                color: kGreyTextColor,
              ),
              title: Text('Received the Pin'),
              trailing: Icon(
                Icons.local_print_shop,
                color: kGreyTextColor,
              ),
            ),
            ButtonGlobalWithoutIcon(
              buttontext: 'Start New Sale',
              buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
              onPressed: null,
              buttonTextColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
