import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../../GlobalComponents/button_global.dart';
import '../../../../../../constant.dart';


class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact Us',
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
          Center(
            child: Container(
              height: 150.0,
              width: MediaQuery.of(context).size.width - 40,
              child: TextField(
                keyboardType: TextInputType.name,
                maxLines: 30,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Write your message here',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ButtonGlobalWithoutIcon(
              buttontext: 'Send Message',
              buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Container(
                      height: 350.0,
                      width: MediaQuery.of(context).size.width - 80,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Spacer(),
                              IconButton(
                                color: kGreyTextColor,
                                icon: Icon(Icons.cancel_outlined),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                          Container(
                            height: 100.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                              color: kDarkWhite,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Image(
                                image: AssetImage('images/emailsent.png'),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Center(
                            child: Text(
                              'Send Your Email',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur elit. Interdum cons.',
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  color: kGreyTextColor,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ),
                          ButtonGlobalWithoutIcon(
                            buttontext: 'Back to Home',
                            buttonDecoration:
                                kButtonDecoration.copyWith(color: kMainColor),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            buttonTextColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              buttonTextColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
