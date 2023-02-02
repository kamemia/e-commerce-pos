import 'package:flutter/material.dart';
import 'package:mpesa_flutter_plugin/mpesa_flutter_plugin.dart';
import 'dart:async';

void main() {
  MpesaFlutterPlugin.setConsumerKey("Your Consumer Key from the safaricom portal, its random eg.'8joAntLHTIT28Pup....' ");
  MpesaFlutterPlugin.setConsumerSecret("Your Consumer Secret from the safaricom portal, its random eg. 'kjiUWoPT4...' ");

runApp(MyApp());
}

class MyApp extends StatefulWidget {
createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
Future<void> lipaNaMpesa() async {
dynamic transactionInitialisation;
try {
transactionInitialisation = await MpesaFlutterPlugin.initializeMpesaSTKPush(
businessShortCode: "174379",
transactionType: TransactionType.CustomerPayBillOnline,
amount: 1.0,
partyA:  "Place your phonenumber here eg..25472.........9",
partyB: "174379",
//Lipa na Mpesa Online ShortCode
callBackURL: Uri(scheme: "https",
                 host: "mpesa-requestbin.herokuapp.com",
                 path: "/1hhy6391"),
//This url has been generated from http://mpesa-requestbin.herokuapp.com/?ref=hackernoon.com for test purposes
accountReference: "Maureen Josephine Clothline",
phoneNumber:  "Place your phonenumber here eg..25472.........9",
baseUri: Uri(scheme: "https", host: "sandbox.safaricom.co.ke"),
transactionDesc: "purchase",
passKey:"Get Your Pass Key from Test Credentials its random eg..'c893059b1788uihh'...");
//This passkey has been generated from Test Credentials from Safaricom Portal
print("TRANSACTION RESULT: " + transactionInitialisation.toString());
 //lets print the transaction results to console at this step
return transactionInitialisation;
}
catch (e) {
print("CAUGHT EXCEPTION: " + e.toString());
}
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}