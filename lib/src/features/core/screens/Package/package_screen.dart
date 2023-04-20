import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../constant.dart';
import 'basic_package.dart';
import 'package:nb_utils/nb_utils.dart';

class PackageScreen extends StatefulWidget {
  const PackageScreen({Key? key}) : super(key: key);

  @override
  _PackageScreenState createState() => _PackageScreenState();
}

class _PackageScreenState extends State<PackageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Package',
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Active Package',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
          ),
          Center(
            child: Container(
              height: 90.0,
              width: MediaQuery.of(context).size.width - 40,
              decoration: BoxDecoration(
                color: kDarkWhite,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 15.0, bottom: 5.0),
                        child: Text(
                          'Free',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Package only for first 15 days',
                          style: GoogleFonts.poppins(
                            color: kGreyTextColor,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Container(
                      height: 66.0,
                      width: 66,
                      decoration: BoxDecoration(
                        color: kMainColor,
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            '14',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                          ),
                          Text(
                            'Days Left',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 8.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Our Packages',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,right: 15.0),
            child: Card(
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  onTap: (){
                    BasicPackage().launch(context);
                  },
                  leading: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      color: kMainColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Icon(Icons.star_border,color: kMainColor,),
                  ),
                  title: Text('Basic'),
                  subtitle: Text('Package only for first 15 days'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,right: 15.0),
            child: Card(
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Icon(Icons.shopping_bag,color: Colors.orange,),
                  ),
                  title: Text('Business'),
                  subtitle: Text('Package only for first 15 days'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,right: 15.0),
            child: Card(
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.purple.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Icon(Icons.bookmark_add,color: Colors.purple,),
                  ),
                  title: Text('Enterprise'),
                  subtitle: Text('Package only for first 15 days'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
