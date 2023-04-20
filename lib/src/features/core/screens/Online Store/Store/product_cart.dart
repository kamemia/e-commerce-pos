import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../../GlobalComponents/button_global.dart';
import '../../../../../../constant.dart';
import 'delivery_information.dart';
import '../../Products/product_data.dart';
import 'package:nb_utils/nb_utils.dart';


class ProductCart extends StatefulWidget {
  const ProductCart({Key? key}) : super(key: key);

  @override
  _ProductCartState createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart> {
  int inititalValue = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          centerTitle: true,
          title: Text(
            'Cart',
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
                Column(
                  children: [
                    ...List.generate(
                      demoProduct.length,
                      (index) => CartCard(
                        product: demoProduct[index],
                        numberProduct: Row(
                          children: [
                            RoundIconButton(
                                icon: Icons.remove,
                                onPressed: () {
                                  setState(() {
                                    inititalValue > 1
                                        ? inititalValue -= 1
                                        : inititalValue = 1;
                                  });
                                }),
                            SizedBox(
                              width: 28.0,
                              height: 28.0,
                              child: Container(
                                color: Colors.white,
                                child: Center(
                                  child: Text(
                                    inititalValue.toString(),
                                  ),
                                ),
                              ),
                            ),
                            RoundIconButton(
                                icon: Icons.add,
                                onPressed: () {
                                  setState(() {
                                    inititalValue += 1;
                                  });
                                }),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Column(
                        children: [
                          Divider(
                            thickness: 1.0,
                            color: kGreyTextColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Row(
                              children: [
                                Text(
                                  'Total: (2 items in cart)',
                                  style: GoogleFonts.poppins(
                                    color: kGreyTextColor,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '\$130.00',
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Row(
                              children: [
                                Text(
                                  'Discount:',
                                  style: GoogleFonts.poppins(
                                    color: kGreyTextColor,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '\$00.00',
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Row(
                              children: [
                                Text(
                                  'Delivery Fee:',
                                  style: GoogleFonts.poppins(
                                    color: kGreyTextColor,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '\$00.00',
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1.0,
                            color: kGreyTextColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Row(
                              children: [
                                Text(
                                  'Total Price:',
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '\$130.00',
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                        ],
                      ),
                    ),
                    ButtonGlobal(
                      iconWidget: Icons.arrow_forward,
                      buttontext: 'Checkout',
                      iconColor: Colors.white,
                      buttonDecoration:
                          kButtonDecoration.copyWith(color: kMainColor),
                      onPressed: () {
                        DeliveryInformation().launch(context);
                      },
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}

class CartCard extends StatelessWidget {
  const CartCard({Key? key, required this.product, required this.numberProduct})
      : super(key: key);

  final Product product;
  final Widget numberProduct;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
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
                  height: 94,
                  width: 94,
                  child: Image.asset(product.images[0]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    product.title.toString(),
                    style: GoogleFonts.jost(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    product.price.toString(),
                    style: GoogleFonts.jost(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Qty: 1',
                    style: GoogleFonts.jost(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            numberProduct,
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class RoundIconButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  RoundIconButton({required this.icon, required this.onPressed});

  final IconData icon;

  // ignore: prefer_typing_uninitialized_variables
  var onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon),
      onPressed: onPressed,
      constraints: const BoxConstraints.tightFor(
        width: 20.0,
        height: 20.0,
      ),
      shape: const CircleBorder(),
      fillColor: Colors.transparent,
    );
  }
}
