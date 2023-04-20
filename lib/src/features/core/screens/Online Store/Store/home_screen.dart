import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../../GlobalComponents/featured_card.dart';
import '../../Products/product_data.dart';

class HomeScreenStore extends StatefulWidget {
  const HomeScreenStore({Key? key}) : super(key: key);

  @override
  _HomeScreenStoreState createState() => _HomeScreenStoreState();
}

class _HomeScreenStoreState extends State<HomeScreenStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        leading: Image(image: AssetImage('images/storeicon.png'),),
        backgroundColor: Colors.white,
        title: Text(
          'Maan Theme',
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
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage('images/banner_store.png'),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'All Products',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            GridView.count(
              childAspectRatio: 0.75,
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(15.0),
              children: List.generate(
                demoProduct.length,
                (index) => FeaturedCard(product: demoProduct[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
