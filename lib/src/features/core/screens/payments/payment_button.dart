import 'package:commerce/src/features/authentication/models/sale_model.dart';
import 'package:commerce/src/features/core/controllers/cart_controller.dart';
import 'package:commerce/src/features/core/controllers/sales_screen_controller.dart';
import 'package:commerce/src/features/core/screens/payments/global_keys.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mpesa_flutter_plugin/mpesa_flutter_plugin.dart';

void main() {
  MpesaFlutterPlugin.setConsumerKey(mConsumerKey);
  MpesaFlutterPlugin.setConsumerSecret(mConsumerSecret);

  runApp(PaymentButton());
}

class PaymentButton extends StatelessWidget {
  final CartController controller = Get.find();
  final Salescontroller = Get.put(SalesController());
  Future<void> lipaNaMpesa() async {
    dynamic transactionInitialisation;
    try {
      transactionInitialisation =
          await MpesaFlutterPlugin.initializeMpesaSTKPush(
              businessShortCode: "174379",
              transactionType: TransactionType.CustomerPayBillOnline,
              amount: controller.total,
              partyA: "0758301176",
              partyB: "174379",
              //Lipa na Mpesa Online ShortCode
              callBackURL: Uri(
                  scheme: "https",
                  host: "mpesa-requestbin.herokuapp.com",
                  path: "/1hhy6391"),
              //This url has been generated from http://mpesa-requestbin.herokuapp.com/?ref=hackernoon.com for test purposes
              accountReference: "ToDeez POS System",
              phoneNumber: "254758301176",
              baseUri: Uri(scheme: "https", host: "sandbox.safaricom.co.ke"),
              transactionDesc: "purchase",
              passKey:
                  "Get Your Pass Key from Test Credentials its random eg..'c893059b1788uihh'...");
      //This passkey has been generated from Test Credentials from Safaricom Portal

      print("TRANSACTION RESULT: " + transactionInitialisation.toString());
      //lets print the transaction results to console at this step
      return transactionInitialisation;
    } catch (e) {
      //lets print the error to console for this sample demo
      print("CAUGHT EXCEPTION: " + e.toString());
    }
  }

  PaymentButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          lipaNaMpesa();
          final sales = SalesModel(
              product: '${controller.products}',
              quantity: '${controller.products.values}',
              price: controller.total);
          SalesController.instance.createSales(sales);
        },
        child: Text("Process Payment".toUpperCase()),
      ),
    );
  }
}
