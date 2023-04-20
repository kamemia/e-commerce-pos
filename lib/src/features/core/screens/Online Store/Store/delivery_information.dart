import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../../GlobalComponents/button_global.dart';
import '../../../../../../GlobalComponents/otp_form.dart';
import '../../../../../../constant.dart';
import '../../Payment/payment_complete.dart';
import '../../Payment/payment_options.dart';
import 'package:nb_utils/nb_utils.dart';

class DeliveryInformation extends StatefulWidget {
  const DeliveryInformation({Key? key}) : super(key: key);

  @override
  _DeliveryInformationState createState() => _DeliveryInformationState();
}

class _DeliveryInformationState extends State<DeliveryInformation> {
  String buttonText = 'Verify Number';
  String radioItem = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          centerTitle: true,
          title: Text(
            'Delivery Information',
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 20.0,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 8.0,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AppTextField(
                  textFieldType: TextFieldType.NAME,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: 'Name',
                      labelStyle: GoogleFonts.poppins(
                        color: Colors.black,
                      ),
                      hintText: 'Ibne Riyead'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: AppTextField(
                        controller: TextEditingController(), // Optional
                        textFieldType: TextFieldType.NAME,
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Phone Number',
                          labelStyle: GoogleFonts.poppins(
                            color: Colors.black,
                          ),
                          hintText: '+1253 5456 1145',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: ButtonGlobalWithoutIcon(
                        buttontext: buttonText,
                        buttonTextColor: Colors.white,
                        buttonDecoration:
                            kButtonDecoration.copyWith(color: kMainColor),
                        onPressed: () => showDialog(
                          context: context,
                          builder: (BuildContext context) => Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            child: Container(
                              height: 300.0,
                              child: Center(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Type the 6 digit cone sent to thes number +1485 155 4155 ',
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              'Change Number',
                                              style: GoogleFonts.poppins(
                                                color: kMainColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    OtpForm(
                                      pressed: () {
                                        setState(
                                          () {
                                            Navigator.pop(context);
                                            buttonText = 'Verified';
                                          },
                                        );
                                      },
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        TextButton(
                                          onPressed: null,
                                          child: Text(
                                            'Resend Code',
                                            style: GoogleFonts.poppins(
                                              color: kGreyTextColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AppTextField(
                  textFieldType: TextFieldType.NAME,
                  maxLines: 2,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: 'Address',
                      labelStyle: GoogleFonts.poppins(
                        color: Colors.black,
                      ),
                      hintText: 'Placentia, California(CA), 92870'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 0.0,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Price',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 18.0,
                              ),
                            ),
                            Text(
                              '( 2 items in cart )',
                              style: GoogleFonts.poppins(
                                color: kGreyTextColor,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          '\$130.00',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: RadioListTile(
                      contentPadding: EdgeInsets.zero,
                      activeColor: kMainColor,
                      groupValue: radioItem,
                      value: 'Cash On Delivery',
                      onChanged: (value) {
                        setState(() {
                          radioItem = value.toString();
                        });
                      },
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(
                          image: AssetImage('images/cod.png'),
                        ),
                        Text(
                          'Cash On Delivery',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adip iscing elit. Elit vel dolor feugiat.',
                          maxLines: 3,
                          style: GoogleFonts.poppins(
                            color: kGreyTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: RadioListTile(
                      contentPadding: EdgeInsets.zero,
                      activeColor: kMainColor,
                      groupValue: radioItem,
                      value: 'Online Payment',
                      onChanged: (value) {
                        setState(() {
                          radioItem = value.toString();
                        });
                      },
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(
                          image: AssetImage('images/op.png'),
                        ),
                        Text(
                          'Online Payment',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adip iscing elit. Elit vel dolor feugiat.',
                          maxLines: 3,
                          style: GoogleFonts.poppins(
                            color: kGreyTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              ButtonGlobalWithoutIcon(
                buttontext: 'Place Order',
                buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
                onPressed: () {
                  radioItem == 'Online Payment'
                      ? PaymentOptions().launch(context)
                      : PaymentCompleted().launch(context);
                },
                buttonTextColor: white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
