import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../GlobalComponents/tab_buttons.dart';
import '../../../../../constant.dart';
import 'edit_profile.dart';
import 'package:nb_utils/nb_utils.dart';


class ProfileDetails extends StatefulWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  _ProfileDetailsState createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: GestureDetector(
              onTap: () {
                EditProfile().launch(context);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.edit,
                    color: kMainColor,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Edit',
                    style: GoogleFonts.poppins(
                      color: kMainColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Image(
                          image: AssetImage('images/profile.png'),
                          height: 100.0,
                          width: 100.0,
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 80.0),
                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            color: kMainColor,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.white, width: 4.0),
                          ),
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppTextField(
                  readOnly: true,
                  cursorColor: kGreyTextColor,
                  controller: TextEditingController(
                    text: 'Enter store name',
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder().copyWith(
                          borderSide: BorderSide(color: kGreyTextColor)),
                      hoverColor: kGreyTextColor,
                      fillColor: kGreyTextColor),
                  textFieldType: TextFieldType.NAME,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppTextField(
                  readOnly: true,
                  cursorColor: kGreyTextColor,
                  controller: TextEditingController(
                    text: 'admin@gmail.com',
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder().copyWith(
                          borderSide: BorderSide(color: kGreyTextColor)),
                      hoverColor: kGreyTextColor,
                      fillColor: kGreyTextColor),
                  textFieldType: TextFieldType.NAME,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppTextField(
                  readOnly: true,
                  cursorColor: kGreyTextColor,
                  controller: TextEditingController(
                    text: '+254 7123 435678',
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder().copyWith(
                          borderSide: BorderSide(color: kGreyTextColor)),
                      hoverColor: kGreyTextColor,
                      fillColor: kGreyTextColor),
                  textFieldType: TextFieldType.NAME,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppTextField(
                  readOnly: true,
                  cursorColor: kGreyTextColor,
                  controller: TextEditingController(
                    text: 'Vantage Mobile',
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder().copyWith(
                          borderSide: BorderSide(color: kGreyTextColor)),
                      hoverColor: kGreyTextColor,
                      fillColor: kGreyTextColor),
                  textFieldType: TextFieldType.NAME,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppTextField(
                  readOnly: true,
                  cursorColor: kGreyTextColor,
                  controller: TextEditingController(
                    text: 'Fashion Store',
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder().copyWith(
                          borderSide: BorderSide(color: kGreyTextColor)),
                      hoverColor: kGreyTextColor,
                      fillColor: kGreyTextColor),
                  textFieldType: TextFieldType.NAME,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: AppTextField(
                        readOnly: true,
                        cursorColor: kGreyTextColor,
                        controller: TextEditingController(
                          text: 'Kenya',
                        ),
                        decoration: InputDecoration(
                            border: OutlineInputBorder().copyWith(
                                borderSide: BorderSide(color: kGreyTextColor)),
                            hoverColor: kGreyTextColor,
                            fillColor: kGreyTextColor),
                        textFieldType: TextFieldType.NAME,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: AppTextField(
                        readOnly: true,
                        cursorColor: kGreyTextColor,
                        controller: TextEditingController(
                          text: 'English',
                        ),
                        decoration: InputDecoration(
                            border: OutlineInputBorder().copyWith(
                                borderSide: BorderSide(color: kGreyTextColor)),
                            hoverColor: kGreyTextColor,
                            fillColor: kGreyTextColor),
                        textFieldType: TextFieldType.NAME,
                      ),
                    ),
                  ],
                ),
              ),
              
              ],
          ),
        ),
      ),
    );
  }
}
