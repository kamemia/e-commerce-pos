import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../GlobalComponents/button_global.dart';
import '../../../../../constant.dart';
import 'store/home_screen.dart';
import 'package:nb_utils/nb_utils.dart';


class AddOnlineStore extends StatefulWidget {
  const AddOnlineStore({Key? key}) : super(key: key);

  @override
  _AddOnlineStoreState createState() => _AddOnlineStoreState();
}

class _AddOnlineStoreState extends State<AddOnlineStore> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Create Online Store',
          style: GoogleFonts.poppins(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: AppTextField(
                textFieldType: TextFieldType.NAME,
                controller: TextEditingController(),
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Store Name',
                  hintText: 'Maan Theme',
                  border: OutlineInputBorder(),
                ),
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
                    labelText: 'Store Address',
                    hintText: 'Placentia, California(CA), 92870'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Store Logo',
                          style: GoogleFonts.poppins(
                            color: kGreyTextColor,
                          ),
                        ),
                      ],
                    ),
                    Card(
                      shape: new RoundedRectangleBorder(
                          side: new BorderSide(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.photo_library_rounded,
                                    size: 60.0,
                                    color: kMainColor,
                                  ),
                                  Text(
                                    'Gallery',
                                    style: GoogleFonts.poppins(
                                      fontSize: 20.0,
                                      color: kMainColor,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 40.0,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.camera,
                                    size: 60.0,
                                    color: kGreyTextColor,
                                  ),
                                  Text(
                                    'Camera',
                                    style: GoogleFonts.poppins(
                                      fontSize: 20.0,
                                      color: kGreyTextColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: kDarkWhite,
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text(
                    'Online Store Published',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                        print(isSwitched);
                      });
                    },
                    activeTrackColor: Colors.lightGreenAccent,
                    activeColor: Colors.green,
                  ),
                ],
              ),
            ),
            ButtonGlobalWithoutIcon(
              buttontext: 'Save',
              buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
              onPressed: (){
                HomeScreenStore().launch(context);
              },
              buttonTextColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
