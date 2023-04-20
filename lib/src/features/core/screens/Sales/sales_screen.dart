import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../GlobalComponents/add_category.dart';
import '../../../../../constant.dart';
import '../Products/product_data.dart';
import 'SalesCategoryList.dart';
import 'sales_details.dart';
import 'sales_list_with_date.dart';
import 'package:nb_utils/nb_utils.dart';

// ignore: must_be_immutable
class SaleProducts extends StatefulWidget {
  SaleProducts({Key? key, @required this.catName}) : super(key: key);

  var catName;
  @override
  _SaleProductsState createState() => _SaleProductsState();
}

class _SaleProductsState extends State<SaleProducts> {
  String dropdownValue = '';

  @override
  void initState(){
    widget.catName == null ? dropdownValue = 'Fashion' : dropdownValue = widget.catName;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sales Details',
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
              PopupMenuItem(child: Text('Add Promo Code'), value: "/addPromoCode"),
              PopupMenuItem(
                  child: Text('Add Discount'), value: "/addDiscount"),
              PopupMenuItem(child: Text('Cancel All Product'), value: "/settings"),
              PopupMenuItem(child: Text('Vat Doesn\'t Apply'), value: "/settings"),
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
              onTap: (){
                Navigator.pushNamed(context, '/Sales');
              },
              child: Container(
                height: 60.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: kMainColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: GestureDetector(
                  onTap: (){
                    SalesDetails().launch(context);
                  },
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image(
                              image: AssetImage('images/selected.png'),
                            ),
                            Text(
                              '2',
                              style: GoogleFonts.poppins(
                                fontSize: 15.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Center(
                          child: Text(
                            'Total: \KES 0', //return the total amount of sales
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width - 60.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: kGreyTextColor),
                    ),
                    child: GestureDetector(
                      onTap: (){
                        SalesCategoryList().launch(context);
                      },
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(dropdownValue),
                          Spacer(),
                          Icon(Icons.keyboard_arrow_down),
                          SizedBox(
                            width: 10.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: (){
                      AddCategory().launch(context);
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color: kGreyTextColor),
                      ),
                      child: Icon(
                        Icons.add,
                        color: kGreyTextColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ...List.generate(
                    demoProduct.length,
                    (index) => ProductCard(
                      product: demoProduct[index],
                    ),
                  )
                ],
              ),
            ),
            Spacer(),
            Container(
              height: 60.0,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          SaleProducts(catName: 'Laptop',).launch(context);
                        },
                        child: Column(
                          children: [
                            Icon(Icons.shopping_cart,color: kMainColor,size: 28,),
                            Text(
                              'Sales',
                              style: GoogleFonts.poppins(
                                fontSize: 20.0,
                                color: kMainColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          SalesListDate().launch(context);
                        },
                        child: Column(
                          children: [
                            Icon(Icons.list_alt,color: kGreyTextColor,size: 28,),
                            Text(
                              'Sales List',
                              style: GoogleFonts.poppins(
                                fontSize: 20.0,
                                color: kGreyTextColor,
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
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        color: Colors.white,
        elevation: 0.0,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: Image.asset(product.images[0]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    product.title.toString(),
                    style: GoogleFonts.jost(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    product.description.toString(),
                    style: GoogleFonts.jost(
                      fontSize: 15.0,
                      color: kGreyTextColor,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Text(
              '\$${product.price.toString()}',
              style: GoogleFonts.jost(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
