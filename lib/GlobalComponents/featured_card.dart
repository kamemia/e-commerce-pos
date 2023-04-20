import 'package:commerce/src/features/core/screens/Products/product_data.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../constant.dart';
import '../src/features/core/screens/Online Store/Store/product_cart.dart';

class FeaturedCard extends StatefulWidget {
  const FeaturedCard({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;

  @override
  _FeaturedCardState createState() => _FeaturedCardState();
}

class _FeaturedCardState extends State<FeaturedCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: GestureDetector(
        onTap: null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 240.0,
              width: 172.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      widget.product.images[0],
                      height: 148.0,
                      width: 124.0,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        widget.product.title.toString(),
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '\$${widget.product.price.toString()}',
                        style: const TextStyle(
                          color: kGreyTextColor,
                          fontSize: 15.0
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: InkWell(
                          onTap: (){
                            ProductCart().launch(context);
                          },
                          child: Icon(
                            Icons.add_shopping_cart,
                            color: kMainColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
