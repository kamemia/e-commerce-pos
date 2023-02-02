import 'package:commerce/src/constants/colors.dart';
import 'package:commerce/src/constants/image_strings.dart';
import 'package:commerce/src/constants/sizes.dart';
import 'package:commerce/src/constants/text_strings.dart';
import 'package:commerce/src/features/core/screens/cart/cart_screen.dart';
import 'package:commerce/src/features/core/screens/cart/catalogue_screen.dart';
import 'package:commerce/src/features/core/screens/customer/customer_screen.dart';
import 'package:commerce/src/features/core/screens/customer/view_customers.dart';
import 'package:commerce/src/features/core/screens/product/product_screen.dart';
import 'package:commerce/src/features/core/screens/product/view_products.dart';
import 'package:commerce/src/features/core/screens/sale/sales_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../discount/discount_screen.dart';
import '../shipment/shipment_screen.dart';
import 'widgets/user_profile_model_bottom_sheet.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Variables
    final txtTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // leading: Icon(Icons.menu, color: Colors.black),
          title: Text(tAppName, style: Theme.of(context).textTheme.headline4),
          centerTitle: true,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 20, top: 7),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: IconButton(
                  onPressed: () {
                    UserProfileScreen.buildShowModalBottomSheet(context);
                  },
                  icon: const Image(image: AssetImage(tUserProfielImage))),
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                padding: const EdgeInsets.all(0),
                child: Container(
                  color: tPrimaryColor,
                  child: Column(),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const Dashboard()),
                  // );
                },
              ),
              ListTile(
                leading: const Icon(Icons.shopping_cart_checkout),
                title: const Text("Orders"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.person_outline),
                title: const Text("Customers"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ViewCustomers()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.category_outlined),
                title: const Text("Products"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ViewProducts()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Settings"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.support_agent_outlined),
                title: const Text("Support"),
                onTap: () {},
              ),
              const Divider(height: 20),
              ListTile(
                leading: const Icon(Icons.logout_outlined),
                title: const Text("LOG OUT",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                textColor: tLogoutColor,
                iconColor: tLogoutColor,
                onTap: () {},
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDashboardPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tDashboardTitle, style: txtTheme.bodyText2),
                Text(tDashboardHeading, style: txtTheme.headline2),
                const SizedBox(height: tDashboardPadding),
                Container(
                  decoration: const BoxDecoration(
                      border: Border(left: BorderSide(width: 4))),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(tDashboardSearch,
                            style: txtTheme.headline2
                                ?.apply(color: Colors.grey.withOpacity(0.5))),
                        const Icon(Icons.mic, size: 25)
                      ]),
                ),

                const SizedBox(height: tFormHeight - 20),

                // Categories
                // SizedBox(
                //   width: 170,
                //   height: 50,
                //   child: Row(
                //     children: [
                //       Container(
                //         width: 45,
                //         height: 45,
                //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tDarkColor),
                //         child: Center(
                //           child: Text("JS", style: txtTheme.headline6?.apply(color: Colors.white),),
                //         ),
                //       )
                //     ],
                //   ),
                // ),

                const SizedBox(height: tFormHeight - 20),

                // Banners
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CustomerScreen()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: tCardBgColor),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Flexible(
                                      child: Image(
                                          image: AssetImage(tCustomerIcon))),
                                  // Flexible(child: Image(image: AssetImage(tCustomerIcon))),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Text(tCustomerTitle,
                                  style: txtTheme.headline4,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis),
                              Text(tCustomerSubtitle,
                                  style: txtTheme.bodyText2,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis)
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: tDashboardCardPadding),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProductScreen()),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: tCardBgColor),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Flexible(
                                        child: Image(
                                            image: AssetImage(tProductIcon))),
                                    // Flexible(child: Image(image: AssetImage(tCustomerIcon))),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Text(tProductsTitle,
                                    style: txtTheme.headline4,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis),
                                Text(tProductsSubTitle,
                                    style: txtTheme.bodyText2,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis)
                              ],
                            ),
                          )
                        ],
                      ),
                    ))
                  ],
                ),

                const SizedBox(height: 10),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  const SalesScreen()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: tCardBgColor),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Flexible(
                                      child: Image(
                                          image: AssetImage(tCustomerIcon))),
                                  // Flexible(child: Image(image: AssetImage(tCustomerIcon))),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Text(tSaleTitle,
                                  style: txtTheme.headline4,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis),
                              Text(tSaleSubtitle,
                                  style: txtTheme.bodyText2,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis)
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: tDashboardCardPadding),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DiscountScreen()),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: tCardBgColor),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Flexible(
                                        child: Image(
                                            image: AssetImage(tCustomerIcon))),
                                    // Flexible(child: Image(image: AssetImage(tCustomerIcon))),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Text(tDiscountTitle,
                                    style: txtTheme.headline4,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis),
                                Text(tDiscountSubTitle,
                                    style: txtTheme.bodyText2,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis)
                              ],
                            ),
                          )
                        ],
                      ),
                    ))
                  ],
                ),

                const SizedBox(height: 10),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          
                          Navigator.push(
                            
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CatalogScreen()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: tCardBgColor),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Flexible(
                                      child: Image(
                                          image: AssetImage(tCustomerIcon))),
                                  // Flexible(child: Image(image: AssetImage(tCustomerIcon))),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Text('Sale',
                                  style: txtTheme.headline4,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis),
                              Text('Make a sale from existing products',
                                  style: txtTheme.bodyText2,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis)
                            ],
                          ),
                        ),
                      ),
                    )
                    // const SizedBox(width: tDashboardCardPadding),
                    // Expanded(
                    //   child: Column(
                    //     children: [
                    //       Container(
                    //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                    //         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    //       child: Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //       Row(
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //         children: const[
                    //           Flexible(child: Image(image: AssetImage(tCustomerIcon))),
                    //           // Flexible(child: Image(image: AssetImage(tCustomerIcon))),
                    //        ],
                    //       ),
                    //       const SizedBox(height: 20),
                    //         Text(tDiscountTitle, style: txtTheme.headline4, maxLines: 2, overflow: TextOverflow.ellipsis),
                    //         Text(tDiscountSubTitle, style: txtTheme.bodyText2, maxLines: 1,overflow: TextOverflow.ellipsis)

                    //     ],
                    //   ),
                    //       )
                    //     ],
                    //   )
                    //   )
                  ],
                ),
                const SizedBox(
                  height: tFormHeight,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => const CartScreen()),
                        child: const Text('Go to Cart'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
