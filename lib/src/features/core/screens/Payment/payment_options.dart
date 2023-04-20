import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../constant.dart';
import 'payment_complete.dart';
import 'package:nb_utils/nb_utils.dart';



class PaymentOptions extends StatefulWidget {
  const PaymentOptions({Key? key}) : super(key: key);

  @override
  _PaymentOptionsState createState() => _PaymentOptionsState();
}

class _PaymentOptionsState extends State<PaymentOptions> {
  bool isCvvFocused = false;
  String radioItem = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment',
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
            GestureDetector(
              onTap: () {
                setState(() {
                  isCvvFocused == false
                      ? isCvvFocused = true
                      : isCvvFocused = false;
                });
              },
              child: CreditCardWidget(
                cardNumber: '4591 4836 2325 0236',
                expiryDate: '11/23',
                cardHolderName: 'John Doe',
                cvvCode: '089',
                showBackView: isCvvFocused,
                cardBgColor: kMainColor,
                obscureCardNumber: true,
                obscureCardCvv: false,
                height: 175,
                textStyle: TextStyle(color: Colors.white),
                width: MediaQuery.of(context).size.width,
                animationDuration: Duration(milliseconds: 1000), onCreditCardWidgetChange: (CreditCardBrand ) {  },
              ),
            ),
            SizedBox(
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              child: ListTile(
                onTap: (){
                  PaymentCompleted().launch(context);
                },
                title: Row(
                  children: [
                    Image(
                      image: AssetImage('images/mastercard.png'),
                    ),
                    SizedBox(width: 15.0,),
                    Text(
                      'Master Card',
                      style: GoogleFonts.poppins(
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
                leading: Icon(Icons.check_circle_outline),
              ),
            ),
            SizedBox(
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              child: ListTile(
                onTap: (){
                  PaymentCompleted().launch(context);
                },
                title: Row(
                  children: [
                    Image(
                      image: AssetImage('images/mastercard.png'),
                    ),
                    SizedBox(width: 15.0,),
                    Text(
                      'Master Card',
                      style: GoogleFonts.poppins(
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
                leading: Icon(Icons.check_circle_outline),
              ),
            ),
            SizedBox(
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              child: ListTile(
                onTap: (){
                  PaymentCompleted().launch(context);
                },
                title: Row(
                  children: [
                    Image(
                      image: AssetImage('images/mastercard.png'),
                    ),
                    SizedBox(width: 15.0,),
                    Text(
                      'Master Card',
                      style: GoogleFonts.poppins(
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
                leading: Icon(Icons.check_circle_outline),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
