import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../constant.dart';
import '../Profile%20Screen/profile_details.dart';
import 'Help%20&%20Support/contact_us.dart';
import 'package:nb_utils/nb_utils.dart';


class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool expanded = false;
  bool expandedHelp = false;
  bool expandedAbout = false;
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 0.0,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          ProfileDetails().launch(context);
                        },
                        child: Image(
                          image: AssetImage('images/profile.png'),
                          height: 42,
                          width: 42,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Vantage Store',
                            style: GoogleFonts.poppins(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Free Plan',
                            style: GoogleFonts.poppins(
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal,
                              color: kGreyTextColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ListTile(
                title: Text(
                  'Profile',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
                leading: Icon(
                  Icons.person_outline_rounded,
                  color: kMainColor,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: kGreyTextColor,
                ),
              ),
              ExpansionPanelList(
                expandedHeaderPadding: EdgeInsets.zero,
                expansionCallback: (int index, bool isExpanded) {},
                animationDuration: Duration(seconds: 1),
                elevation: 0,
                dividerColor: Colors.white,
                children: [
                  ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Icon(
                              Icons.handyman_outlined,
                              color: kMainColor,
                            ),
                          ),
                          TextButton(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 24.0),
                              child: Text(
                                'Settings',
                                style: GoogleFonts.poppins(
                                  fontSize: 18.0,
                                  color: expanded == false
                                      ? Colors.black
                                      : kMainColor,
                                ),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                expanded == false
                                    ? expanded = true
                                    : expanded = false;
                              });
                            },
                          ),
                        ],
                      );
                    },
                    body: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 55.0),
                          child: ListTile(
                            title: Text(
                              'Notification Setting',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: kGreyTextColor,
                              size: 16.0,
                            ),
                            onTap: () => showDialog(
                              context: context,
                              builder: (BuildContext context) => Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: NoticationSettings(),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 55.0),
                          child: ListTile(
                            title: Text(
                              'Language Setting',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                            ),
                            onTap: () => showDialog(
                              context: context,
                              builder: (BuildContext context) => Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  height: 400.0,
                                  width: MediaQuery.of(context).size.width - 80,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      Text(
                                        'Select Language',
                                        style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      ...List.generate(
                                        language.length,
                                        (index) => ListTile(
                                          title: Text(language[index]),
                                          trailing: Icon(
                                            Icons.check_circle_outline,
                                            color: kGreyTextColor,
                                          ),
                                          onTap: () {
                                            setState(() {
                                              selected == false
                                                  ? selected = true
                                                  : selected = false;
                                              Navigator.pop(context);
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: kGreyTextColor,
                              size: 16.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 55.0),
                          child: ListTile(
                            title: Text(
                              'App Update',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: kGreyTextColor,
                              size: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    isExpanded: expanded,
                  ),
                ],
              ),
              ExpansionPanelList(
                expandedHeaderPadding: EdgeInsets.zero,
                expansionCallback: (int index, bool isExpanded) {},
                animationDuration: Duration(seconds: 1),
                elevation: 0,
                dividerColor: Colors.white,
                children: [
                  ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Icon(
                              Icons.help_outline_rounded,
                              color: kMainColor,
                            ),
                          ),
                          TextButton(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 24.0),
                              child: Text(
                                'Help & Support',
                                style: GoogleFonts.poppins(
                                  fontSize: 18.0,
                                  color: expandedHelp == false
                                      ? Colors.black
                                      : kMainColor,
                                ),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                expandedHelp == false
                                    ? expandedHelp = true
                                    : expandedHelp = false;
                              });
                            },
                          ),
                        ],
                      );
                    },
                    body: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 55.0),
                          child: ListTile(
                            title: Text(
                              'FAQs',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: kGreyTextColor,
                              size: 16.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 55.0),
                          child: ListTile(
                            onTap: (){
                              ContactUs().launch(context);
                            },
                            title: Text(
                              'Contact Us',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: kGreyTextColor,
                              size: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    isExpanded: expandedHelp,
                  ),
                ],
              ),
              ExpansionPanelList(
                expandedHeaderPadding: EdgeInsets.zero,
                expansionCallback: (int index, bool isExpanded) {},
                animationDuration: Duration(seconds: 1),
                elevation: 0,
                dividerColor: Colors.white,
                children: [
                  ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Icon(
                              Icons.text_snippet_outlined,
                              color: kMainColor,
                            ),
                          ),
                          TextButton(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 24.0),
                              child: Text(
                                'About Us',
                                style: GoogleFonts.poppins(
                                  fontSize: 18.0,
                                  color: expandedAbout == false
                                      ? Colors.black
                                      : kMainColor,
                                ),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                expandedAbout == false
                                    ? expandedAbout = true
                                    : expandedAbout = false;
                              });
                            },
                          ),
                        ],
                      );
                    },
                    body: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 55.0),
                          child: ListTile(
                            title: Text(
                              'About Vantage Mobile',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: kGreyTextColor,
                              size: 16.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 55.0),
                          child: ListTile(
                            title: Text(
                              'Privacy Policy',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: kGreyTextColor,
                              size: 16.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 55.0),
                          child: ListTile(
                            title: Text(
                              'Terms & Conditions',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: kGreyTextColor,
                              size: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    isExpanded: expandedAbout,
                  ),
                ],
              ),
              ListTile(
                title: Text(
                  'Log Out',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
                leading: Icon(
                  Icons.logout,
                  color: kMainColor,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: kGreyTextColor,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Vantage Pos V-1.0',
                      style: GoogleFonts.poppins(
                        color: kGreyTextColor,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NoticationSettings extends StatefulWidget {
  const NoticationSettings({Key? key}) : super(key: key);

  @override
  _NoticationSettingsState createState() => _NoticationSettingsState();
}

class _NoticationSettingsState extends State<NoticationSettings> {
  bool notify = false;
  String notificationText = 'Off';

  @override
  Widget build(BuildContext context) {
    return Container(
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
              child: Icon(
                Icons.notifications_none_outlined,
                size: 50.0,
                color: kMainColor,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Text(
              'Do Not Disturb',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                notificationText,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
              ),
              Switch(
                value: notify,
                onChanged: (val) {
                  setState(() {
                    notify = val;
                    val ? notificationText = 'On' : notificationText = 'Off';
                    print(val);
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
