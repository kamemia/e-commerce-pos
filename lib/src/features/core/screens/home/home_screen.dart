// ignore: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../constant.dart';
import 'components/grid_items.dart';
import '../Notifications/notification_screen.dart';
import '../Profile%20Screen/profile_details.dart';
import 'package:nb_utils/nb_utils.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> sliderList = [
    {
      "icon": 'images/banner1.png',
    },
    {
      "icon": 'images/banner2.png',
    }
  ];
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 3.0,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          const ProfileDetails().launch(context);
                        },
                        child: const Image(
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
                            'Vantage Mobile',
                            style: GoogleFonts.poppins(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: kDarkWhite,
                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: (){
                              const NotificationScreen().launch(context);
                            },
                            child: const Icon(
                              Icons.notifications,
                              color: kMainColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  childAspectRatio: 1,
                  crossAxisCount: 4,
                  children: List.generate(
                    freeIcons.length,
                        (index) =>
                        HomeGridCards(
                          gridItems: freeIcons[index],
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Business',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  childAspectRatio: 1,
                  crossAxisCount: 4,
                  children: List.generate(
                    businessIcons.length,
                        (index) =>
                        HomeGridCards(
                          gridItems: businessIcons[index],
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'What\'s New',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 320,
                child: PageView.builder(
                  pageSnapping: true,
                  itemCount: sliderList.length,
                  controller: pageController,
                  onPageChanged: (int index) {
                  },
                  itemBuilder: (_, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(sliderList[index]['icon'],),
                      ],
                    );
                  },
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Row(
              //     children: [
              //       SizedBox(
              //         width: 10.0,
              //       ),
              //       Text(
              //         'Enterprise',
              //         style: GoogleFonts.poppins(
              //           color: Colors.black,
              //           fontWeight: FontWeight.bold,
              //           fontSize: 20.0,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   padding: EdgeInsets.all(10.0),
              //   child: GridView.count(
              //     physics: NeverScrollableScrollPhysics(),
              //     shrinkWrap: true,
              //     childAspectRatio: 1,
              //     crossAxisCount: 4,
              //     children: List.generate(
              //       enterpriseIcons.length,
              //           (index) =>
              //           HomeGridCards(
              //             gridItems: enterpriseIcons[index],
              //           ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeGridCards extends StatelessWidget {
  const HomeGridCards({Key? key, required this.gridItems}) : super(key: key);
  final GridItems gridItems;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/${gridItems.title}');
          },
          child: Image(
            image: AssetImage(
              gridItems.icon.toString(),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            gridItems.title.toString(),
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}
